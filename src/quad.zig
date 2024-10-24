const std = @import("std");
const sokol = @import("sokol");
const slog = sokol.log;
const sg = sokol.gfx;
const sapp = sokol.app;
const sglue = sokol.glue;
const shd = @import("shaders/quad.glsl.zig");
const zstbi = @import("zstbi");

const state = struct {
    var pass_action: sg.PassAction = .{};
    var pip: sg.Pipeline = .{};
    var bind: sg.Bindings = .{};
};

// simplified vertex struct for 2D quad with position, color and uv-coords
const Vertex = extern struct { x: f32, y: f32, color: u32, u: i16, v: i16 };

const img_path = @embedFile("image"); // Change this to your image path

export fn init() void {
    const allocator = std.heap.page_allocator;
    zstbi.init(allocator);
    defer zstbi.deinit();

    sg.setup(.{
        .environment = sglue.environment(),
        .logger = .{ .func = slog.func },
    });

    var pixels = zstbi.Image.loadFromMemory(
        img_path,
        4, // force RGBA (4 channels)
    ) catch |err| {
        std.debug.print("Failed to load image: {}\n", .{err});
        return;
    };
    defer pixels.deinit();

    var img_desc: sg.ImageDesc = .{
        .width = @intCast(pixels.width),
        .height = @intCast(pixels.height),
        .pixel_format = .RGBA8,
    };

    // Set the image data
    img_desc.data.subimage[0][0] = sg.asRange(pixels.data);

    // Create the texture
    state.bind.fs.images[shd.SLOT_tex] = sg.makeImage(img_desc);

    // Create vertex buffer for a single quad
    // Example of adjusting vertices based on image aspect ratio
    const aspect = @as(f32, @floatFromInt(img_desc.width)) / @as(f32, @floatFromInt(img_desc.height));
    state.bind.vertex_buffers[0] = sg.makeBuffer(.{
        .data = sg.asRange(&[_]Vertex{
            // pos                                     color                        texcoords
            .{ .x = -0.5 * aspect, .y = -0.5, .color = 0xFFFFFFFF, .u = 0, .v = std.math.maxInt(i16) },
            .{ .x = 0.5 * aspect, .y = -0.5, .color = 0xFFFFFFFF, .u = std.math.maxInt(i16), .v = std.math.maxInt(i16) },
            .{ .x = 0.5 * aspect, .y = 0.5, .color = 0xFFFFFFFF, .u = std.math.maxInt(i16), .v = 0 },
            .{ .x = -0.5 * aspect, .y = 0.5, .color = 0xFFFFFFFF, .u = 0, .v = 0 },
        }),
    });

    // Create index buffer for the quad
    state.bind.index_buffer = sg.makeBuffer(.{
        .type = .INDEXBUFFER,
        .data = sg.asRange(&[_]u16{
            0, 1, 2, // first triangle
            0, 2, 3, // second triangle
        }),
    });

    // Create a sampler with default attributes
    state.bind.fs.samplers[shd.SLOT_smp] = sg.makeSampler(.{
        .mag_filter = .LINEAR,
        .min_filter = .LINEAR,
        .mipmap_filter = .LINEAR,
        .wrap_u = .CLAMP_TO_EDGE,
        .wrap_v = .CLAMP_TO_EDGE
    });

    // Create shader and pipeline object
    var pip_desc: sg.PipelineDesc = .{
        .shader = sg.makeShader(shd.quadShaderDesc(sg.queryBackend())),
        .index_type = .UINT16,
        .primitive_type = .TRIANGLES,
    };
    pip_desc.colors[0].blend = .{ // handle image transparency
        .enabled = true,
        .src_factor_rgb = .SRC_ALPHA,
        .dst_factor_rgb = .ONE_MINUS_SRC_ALPHA,
        .src_factor_alpha = .ONE,
        .dst_factor_alpha = .ONE_MINUS_SRC_ALPHA,
    };
    pip_desc.layout.attrs[shd.ATTR_vs_pos].format = .FLOAT2;
    pip_desc.layout.attrs[shd.ATTR_vs_color0].format = .UBYTE4N;
    pip_desc.layout.attrs[shd.ATTR_vs_texcoord0].format = .SHORT2N;
    state.pip = sg.makePipeline(pip_desc);

    // Setup clear color
    state.pass_action.colors[0] = .{
        .load_action = .CLEAR,
        .clear_value = .{ .r = 0.25, .g = 0.5, .b = 0.75, .a = 1 },
    };
}

export fn frame() void {
    sg.beginPass(.{ .action = state.pass_action, .swapchain = sglue.swapchain() });
    sg.applyPipeline(state.pip);
    sg.applyBindings(state.bind);
    sg.draw(0, 6, 1); // Draw 6 vertices (2 triangles)
    sg.endPass();
    sg.commit();
}

export fn cleanup() void {
    sg.shutdown();
}

pub fn main() void {
    sapp.run(.{
        .init_cb = init,
        .frame_cb = frame,
        .cleanup_cb = cleanup,
        .width = 800,
        .height = 600,
        .sample_count = 4,
        .icon = .{ .sokol_default = true },
        .window_title = "texquad.zig",
        .logger = .{ .func = slog.func },
    });
}
