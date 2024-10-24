const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});

    const optimize = b.standardOptimizeOption(.{});

    const dep_sokol = b.dependency("sokol", .{
        .target = target,
        .optimize = optimize,
    });

    const exe = b.addExecutable(.{
        .name = "zig-sokol-textured-quad",
        .root_source_file = b.path("src/quad.zig"),
        .target = target,
        .optimize = optimize,
    });
    exe.root_module.addImport("sokol", dep_sokol.module("sokol"));

    const zstbi = b.dependency("zstbi", .{});
    exe.root_module.addImport("zstbi", zstbi.module("root"));
    exe.linkLibrary(zstbi.artifact("zstbi"));

    const assets = [_]struct { []const u8, []const u8 }{
        .{ "src/image.png", "image" },
    };

    for (assets) |asset| {
        const path, const assetName = asset;
        exe.root_module.addAnonymousImport(assetName, .{ .root_source_file = b.path(path) });
    }

    b.installArtifact(exe);

    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(b.getInstallStep());
    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
