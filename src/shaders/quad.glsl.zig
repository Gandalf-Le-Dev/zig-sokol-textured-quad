const sg = @import("sokol").gfx;
const std = @import("std");
//
//    #version:1# (machine generated, don't edit!)
//
//    Generated by sokol-shdc (https://github.com/floooh/sokol-tools)
//
//    Cmdline:
//        sokol-shdc -i src/examples/shaders/quad.glsl -o src/examples/shaders/quad.glsl.zig -l glsl410:metal_macos:hlsl5:glsl300es:wgsl -f sokol_zig
//
//    Overview:
//    =========
//    Shader program: 'quad':
//        Get shader desc: shd.quadShaderDesc(sg.queryBackend());
//        Vertex shader: vs
//            Attributes:
//                ATTR_vs_pos => 0
//                ATTR_vs_color0 => 1
//                ATTR_vs_texcoord0 => 2
//        Fragment shader: fs
//            Image 'tex':
//                Image type: ._2D
//                Sample type: .FLOAT
//                Multisampled: false
//                Bind slot: SLOT_tex => 0
//            Sampler 'smp':
//                Type: .FILTERING
//                Bind slot: SLOT_smp => 0
//            Image Sampler Pair 'tex_smp':
//                Image: tex
//                Sampler: smp
//
pub const ATTR_vs_pos = 0;
pub const ATTR_vs_color0 = 1;
pub const ATTR_vs_texcoord0 = 2;
pub const SLOT_tex = 0;
pub const SLOT_smp = 0;
//
//    #version 410
//
//    layout(location = 0) in vec2 pos;
//    layout(location = 0) out vec4 color;
//    layout(location = 1) in vec4 color0;
//    layout(location = 1) out vec2 uv;
//    layout(location = 2) in vec2 texcoord0;
//
//    void main()
//    {
//        gl_Position = vec4(pos, 0.0, 1.0);
//        color = color0;
//        uv = texcoord0;
//    }
//
//
const vs_source_glsl410 = [294]u8 {
    0x23,0x76,0x65,0x72,0x73,0x69,0x6f,0x6e,0x20,0x34,0x31,0x30,0x0a,0x0a,0x6c,0x61,
    0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,
    0x30,0x29,0x20,0x69,0x6e,0x20,0x76,0x65,0x63,0x32,0x20,0x70,0x6f,0x73,0x3b,0x0a,
    0x6c,0x61,0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,
    0x3d,0x20,0x30,0x29,0x20,0x6f,0x75,0x74,0x20,0x76,0x65,0x63,0x34,0x20,0x63,0x6f,
    0x6c,0x6f,0x72,0x3b,0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,
    0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x31,0x29,0x20,0x69,0x6e,0x20,0x76,0x65,0x63,
    0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,
    0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x31,0x29,0x20,0x6f,
    0x75,0x74,0x20,0x76,0x65,0x63,0x32,0x20,0x75,0x76,0x3b,0x0a,0x6c,0x61,0x79,0x6f,
    0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x32,0x29,
    0x20,0x69,0x6e,0x20,0x76,0x65,0x63,0x32,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,
    0x64,0x30,0x3b,0x0a,0x0a,0x76,0x6f,0x69,0x64,0x20,0x6d,0x61,0x69,0x6e,0x28,0x29,
    0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,
    0x6f,0x6e,0x20,0x3d,0x20,0x76,0x65,0x63,0x34,0x28,0x70,0x6f,0x73,0x2c,0x20,0x30,
    0x2e,0x30,0x2c,0x20,0x31,0x2e,0x30,0x29,0x3b,0x0a,0x20,0x20,0x20,0x20,0x63,0x6f,
    0x6c,0x6f,0x72,0x20,0x3d,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x20,0x20,
    0x20,0x20,0x75,0x76,0x20,0x3d,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,
    0x3b,0x0a,0x7d,0x0a,0x0a,0x00,
};
//
//    #version 410
//
//    uniform sampler2D tex_smp;
//
//    layout(location = 0) out vec4 frag_color;
//    layout(location = 1) in vec2 uv;
//    layout(location = 0) in vec4 color;
//
//    void main()
//    {
//        frag_color = texture(tex_smp, uv) * color;
//    }
//
//
const fs_source_glsl410 = [219]u8 {
    0x23,0x76,0x65,0x72,0x73,0x69,0x6f,0x6e,0x20,0x34,0x31,0x30,0x0a,0x0a,0x75,0x6e,
    0x69,0x66,0x6f,0x72,0x6d,0x20,0x73,0x61,0x6d,0x70,0x6c,0x65,0x72,0x32,0x44,0x20,
    0x74,0x65,0x78,0x5f,0x73,0x6d,0x70,0x3b,0x0a,0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,
    0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x30,0x29,0x20,0x6f,
    0x75,0x74,0x20,0x76,0x65,0x63,0x34,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,
    0x6f,0x72,0x3b,0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,0x74,
    0x69,0x6f,0x6e,0x20,0x3d,0x20,0x31,0x29,0x20,0x69,0x6e,0x20,0x76,0x65,0x63,0x32,
    0x20,0x75,0x76,0x3b,0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,
    0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x30,0x29,0x20,0x69,0x6e,0x20,0x76,0x65,0x63,
    0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x0a,0x76,0x6f,0x69,0x64,0x20,0x6d,
    0x61,0x69,0x6e,0x28,0x29,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x72,0x61,0x67,
    0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x74,0x65,0x78,0x74,0x75,0x72,0x65,
    0x28,0x74,0x65,0x78,0x5f,0x73,0x6d,0x70,0x2c,0x20,0x75,0x76,0x29,0x20,0x2a,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x7d,0x0a,0x0a,0x00,
};
//
//    #version 300 es
//
//    layout(location = 0) in vec2 pos;
//    out vec4 color;
//    layout(location = 1) in vec4 color0;
//    out vec2 uv;
//    layout(location = 2) in vec2 texcoord0;
//
//    void main()
//    {
//        gl_Position = vec4(pos, 0.0, 1.0);
//        color = color0;
//        uv = texcoord0;
//    }
//
//
const vs_source_glsl300es = [255]u8 {
    0x23,0x76,0x65,0x72,0x73,0x69,0x6f,0x6e,0x20,0x33,0x30,0x30,0x20,0x65,0x73,0x0a,
    0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,
    0x20,0x3d,0x20,0x30,0x29,0x20,0x69,0x6e,0x20,0x76,0x65,0x63,0x32,0x20,0x70,0x6f,
    0x73,0x3b,0x0a,0x6f,0x75,0x74,0x20,0x76,0x65,0x63,0x34,0x20,0x63,0x6f,0x6c,0x6f,
    0x72,0x3b,0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,
    0x6f,0x6e,0x20,0x3d,0x20,0x31,0x29,0x20,0x69,0x6e,0x20,0x76,0x65,0x63,0x34,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x6f,0x75,0x74,0x20,0x76,0x65,0x63,0x32,
    0x20,0x75,0x76,0x3b,0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,
    0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x32,0x29,0x20,0x69,0x6e,0x20,0x76,0x65,0x63,
    0x32,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,0x3b,0x0a,0x0a,0x76,0x6f,
    0x69,0x64,0x20,0x6d,0x61,0x69,0x6e,0x28,0x29,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,
    0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x76,0x65,
    0x63,0x34,0x28,0x70,0x6f,0x73,0x2c,0x20,0x30,0x2e,0x30,0x2c,0x20,0x31,0x2e,0x30,
    0x29,0x3b,0x0a,0x20,0x20,0x20,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x63,
    0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x20,0x20,0x20,0x20,0x75,0x76,0x20,0x3d,0x20,
    0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,0x3b,0x0a,0x7d,0x0a,0x0a,0x00,
};
//
//    #version 300 es
//    precision mediump float;
//    precision highp int;
//
//    uniform highp sampler2D tex_smp;
//
//    layout(location = 0) out highp vec4 frag_color;
//    in highp vec2 uv;
//    in highp vec4 color;
//
//    void main()
//    {
//        frag_color = texture(tex_smp, uv) * color;
//    }
//
//
const fs_source_glsl300es = [250]u8 {
    0x23,0x76,0x65,0x72,0x73,0x69,0x6f,0x6e,0x20,0x33,0x30,0x30,0x20,0x65,0x73,0x0a,
    0x70,0x72,0x65,0x63,0x69,0x73,0x69,0x6f,0x6e,0x20,0x6d,0x65,0x64,0x69,0x75,0x6d,
    0x70,0x20,0x66,0x6c,0x6f,0x61,0x74,0x3b,0x0a,0x70,0x72,0x65,0x63,0x69,0x73,0x69,
    0x6f,0x6e,0x20,0x68,0x69,0x67,0x68,0x70,0x20,0x69,0x6e,0x74,0x3b,0x0a,0x0a,0x75,
    0x6e,0x69,0x66,0x6f,0x72,0x6d,0x20,0x68,0x69,0x67,0x68,0x70,0x20,0x73,0x61,0x6d,
    0x70,0x6c,0x65,0x72,0x32,0x44,0x20,0x74,0x65,0x78,0x5f,0x73,0x6d,0x70,0x3b,0x0a,
    0x0a,0x6c,0x61,0x79,0x6f,0x75,0x74,0x28,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,
    0x20,0x3d,0x20,0x30,0x29,0x20,0x6f,0x75,0x74,0x20,0x68,0x69,0x67,0x68,0x70,0x20,
    0x76,0x65,0x63,0x34,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x3b,
    0x0a,0x69,0x6e,0x20,0x68,0x69,0x67,0x68,0x70,0x20,0x76,0x65,0x63,0x32,0x20,0x75,
    0x76,0x3b,0x0a,0x69,0x6e,0x20,0x68,0x69,0x67,0x68,0x70,0x20,0x76,0x65,0x63,0x34,
    0x20,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x0a,0x76,0x6f,0x69,0x64,0x20,0x6d,0x61,
    0x69,0x6e,0x28,0x29,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x72,0x61,0x67,0x5f,
    0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x74,0x65,0x78,0x74,0x75,0x72,0x65,0x28,
    0x74,0x65,0x78,0x5f,0x73,0x6d,0x70,0x2c,0x20,0x75,0x76,0x29,0x20,0x2a,0x20,0x63,
    0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x7d,0x0a,0x0a,0x00,
};
//
//    static float4 gl_Position;
//    static float2 pos;
//    static float4 color;
//    static float4 color0;
//    static float2 uv;
//    static float2 texcoord0;
//
//    struct SPIRV_Cross_Input
//    {
//        float2 pos : TEXCOORD0;
//        float4 color0 : TEXCOORD1;
//        float2 texcoord0 : TEXCOORD2;
//    };
//
//    struct SPIRV_Cross_Output
//    {
//        float4 color : TEXCOORD0;
//        float2 uv : TEXCOORD1;
//        float4 gl_Position : SV_Position;
//    };
//
//    void vert_main()
//    {
//        gl_Position = float4(pos, 0.0f, 1.0f);
//        color = color0;
//        uv = texcoord0;
//    }
//
//    SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
//    {
//        pos = stage_input.pos;
//        color0 = stage_input.color0;
//        texcoord0 = stage_input.texcoord0;
//        vert_main();
//        SPIRV_Cross_Output stage_output;
//        stage_output.gl_Position = gl_Position;
//        stage_output.color = color;
//        stage_output.uv = uv;
//        return stage_output;
//    }
//
const vs_source_hlsl5 = [829]u8 {
    0x73,0x74,0x61,0x74,0x69,0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x67,0x6c,
    0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,
    0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x32,0x20,0x70,0x6f,0x73,0x3b,0x0a,0x73,0x74,
    0x61,0x74,0x69,0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,
    0x72,0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,
    0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,0x63,0x20,
    0x66,0x6c,0x6f,0x61,0x74,0x32,0x20,0x75,0x76,0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,
    0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x32,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,
    0x64,0x30,0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x53,0x50,0x49,0x52,
    0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,0x49,0x6e,0x70,0x75,0x74,0x0a,0x7b,0x0a,
    0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,0x32,0x20,0x70,0x6f,0x73,0x20,0x3a,
    0x20,0x54,0x45,0x58,0x43,0x4f,0x4f,0x52,0x44,0x30,0x3b,0x0a,0x20,0x20,0x20,0x20,
    0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x20,0x3a,0x20,
    0x54,0x45,0x58,0x43,0x4f,0x4f,0x52,0x44,0x31,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x32,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,0x20,
    0x3a,0x20,0x54,0x45,0x58,0x43,0x4f,0x4f,0x52,0x44,0x32,0x3b,0x0a,0x7d,0x3b,0x0a,
    0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,
    0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,
    0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3a,0x20,
    0x54,0x45,0x58,0x43,0x4f,0x4f,0x52,0x44,0x30,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x32,0x20,0x75,0x76,0x20,0x3a,0x20,0x54,0x45,0x58,0x43,0x4f,
    0x4f,0x52,0x44,0x31,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,
    0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x20,0x3a,0x20,0x53,
    0x56,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x3b,0x0a,0x7d,0x3b,0x0a,0x0a,
    0x76,0x6f,0x69,0x64,0x20,0x76,0x65,0x72,0x74,0x5f,0x6d,0x61,0x69,0x6e,0x28,0x29,
    0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,
    0x6f,0x6e,0x20,0x3d,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x28,0x70,0x6f,0x73,0x2c,
    0x20,0x30,0x2e,0x30,0x66,0x2c,0x20,0x31,0x2e,0x30,0x66,0x29,0x3b,0x0a,0x20,0x20,
    0x20,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,
    0x3b,0x0a,0x20,0x20,0x20,0x20,0x75,0x76,0x20,0x3d,0x20,0x74,0x65,0x78,0x63,0x6f,
    0x6f,0x72,0x64,0x30,0x3b,0x0a,0x7d,0x0a,0x0a,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,
    0x72,0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,0x20,0x6d,0x61,0x69,0x6e,
    0x28,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,0x49,0x6e,0x70,
    0x75,0x74,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,0x29,0x0a,
    0x7b,0x0a,0x20,0x20,0x20,0x20,0x70,0x6f,0x73,0x20,0x3d,0x20,0x73,0x74,0x61,0x67,
    0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,0x2e,0x70,0x6f,0x73,0x3b,0x0a,0x20,0x20,0x20,
    0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x20,0x3d,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,
    0x69,0x6e,0x70,0x75,0x74,0x2e,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x20,0x20,
    0x20,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,0x20,0x3d,0x20,0x73,0x74,
    0x61,0x67,0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,0x2e,0x74,0x65,0x78,0x63,0x6f,0x6f,
    0x72,0x64,0x30,0x3b,0x0a,0x20,0x20,0x20,0x20,0x76,0x65,0x72,0x74,0x5f,0x6d,0x61,
    0x69,0x6e,0x28,0x29,0x3b,0x0a,0x20,0x20,0x20,0x20,0x53,0x50,0x49,0x52,0x56,0x5f,
    0x43,0x72,0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,0x20,0x73,0x74,0x61,
    0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x3b,0x0a,0x20,0x20,0x20,0x20,0x73,
    0x74,0x61,0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x2e,0x67,0x6c,0x5f,0x50,
    0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,
    0x69,0x74,0x69,0x6f,0x6e,0x3b,0x0a,0x20,0x20,0x20,0x20,0x73,0x74,0x61,0x67,0x65,
    0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x2e,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x20,0x20,0x20,0x20,0x73,0x74,0x61,0x67,0x65,
    0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x2e,0x75,0x76,0x20,0x3d,0x20,0x75,0x76,0x3b,
    0x0a,0x20,0x20,0x20,0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x20,0x73,0x74,0x61,0x67,
    0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x3b,0x0a,0x7d,0x0a,0x00,
};
//
//    Texture2D<float4> tex : register(t0);
//    SamplerState smp : register(s0);
//
//    static float4 frag_color;
//    static float2 uv;
//    static float4 color;
//
//    struct SPIRV_Cross_Input
//    {
//        float4 color : TEXCOORD0;
//        float2 uv : TEXCOORD1;
//    };
//
//    struct SPIRV_Cross_Output
//    {
//        float4 frag_color : SV_Target0;
//    };
//
//    void frag_main()
//    {
//        frag_color = tex.Sample(smp, uv) * color;
//    }
//
//    SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
//    {
//        uv = stage_input.uv;
//        color = stage_input.color;
//        frag_main();
//        SPIRV_Cross_Output stage_output;
//        stage_output.frag_color = frag_color;
//        return stage_output;
//    }
//
const fs_source_hlsl5 = [599]u8 {
    0x54,0x65,0x78,0x74,0x75,0x72,0x65,0x32,0x44,0x3c,0x66,0x6c,0x6f,0x61,0x74,0x34,
    0x3e,0x20,0x74,0x65,0x78,0x20,0x3a,0x20,0x72,0x65,0x67,0x69,0x73,0x74,0x65,0x72,
    0x28,0x74,0x30,0x29,0x3b,0x0a,0x53,0x61,0x6d,0x70,0x6c,0x65,0x72,0x53,0x74,0x61,
    0x74,0x65,0x20,0x73,0x6d,0x70,0x20,0x3a,0x20,0x72,0x65,0x67,0x69,0x73,0x74,0x65,
    0x72,0x28,0x73,0x30,0x29,0x3b,0x0a,0x0a,0x73,0x74,0x61,0x74,0x69,0x63,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x34,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,
    0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,0x32,0x20,
    0x75,0x76,0x3b,0x0a,0x73,0x74,0x61,0x74,0x69,0x63,0x20,0x66,0x6c,0x6f,0x61,0x74,
    0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,
    0x20,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,0x49,0x6e,0x70,
    0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3a,0x20,0x54,0x45,0x58,0x43,0x4f,0x4f,0x52,0x44,
    0x30,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,0x32,0x20,0x75,0x76,
    0x20,0x3a,0x20,0x54,0x45,0x58,0x43,0x4f,0x4f,0x52,0x44,0x31,0x3b,0x0a,0x7d,0x3b,
    0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,
    0x72,0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,
    0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,
    0x6c,0x6f,0x72,0x20,0x3a,0x20,0x53,0x56,0x5f,0x54,0x61,0x72,0x67,0x65,0x74,0x30,
    0x3b,0x0a,0x7d,0x3b,0x0a,0x0a,0x76,0x6f,0x69,0x64,0x20,0x66,0x72,0x61,0x67,0x5f,
    0x6d,0x61,0x69,0x6e,0x28,0x29,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x72,0x61,
    0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x74,0x65,0x78,0x2e,0x53,0x61,
    0x6d,0x70,0x6c,0x65,0x28,0x73,0x6d,0x70,0x2c,0x20,0x75,0x76,0x29,0x20,0x2a,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x7d,0x0a,0x0a,0x53,0x50,0x49,0x52,0x56,0x5f,
    0x43,0x72,0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,0x75,0x74,0x20,0x6d,0x61,0x69,
    0x6e,0x28,0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,0x49,0x6e,
    0x70,0x75,0x74,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,0x29,
    0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x75,0x76,0x20,0x3d,0x20,0x73,0x74,0x61,0x67,
    0x65,0x5f,0x69,0x6e,0x70,0x75,0x74,0x2e,0x75,0x76,0x3b,0x0a,0x20,0x20,0x20,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,
    0x70,0x75,0x74,0x2e,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,
    0x72,0x61,0x67,0x5f,0x6d,0x61,0x69,0x6e,0x28,0x29,0x3b,0x0a,0x20,0x20,0x20,0x20,
    0x53,0x50,0x49,0x52,0x56,0x5f,0x43,0x72,0x6f,0x73,0x73,0x5f,0x4f,0x75,0x74,0x70,
    0x75,0x74,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,0x74,0x3b,
    0x0a,0x20,0x20,0x20,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,0x75,
    0x74,0x2e,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x66,
    0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x20,0x20,0x20,0x20,0x72,
    0x65,0x74,0x75,0x72,0x6e,0x20,0x73,0x74,0x61,0x67,0x65,0x5f,0x6f,0x75,0x74,0x70,
    0x75,0x74,0x3b,0x0a,0x7d,0x0a,0x00,
};
//
//    #include <metal_stdlib>
//    #include <simd/simd.h>
//
//    using namespace metal;
//
//    struct main0_out
//    {
//        float4 color [[user(locn0)]];
//        float2 uv [[user(locn1)]];
//        float4 gl_Position [[position]];
//    };
//
//    struct main0_in
//    {
//        float2 pos [[attribute(0)]];
//        float4 color0 [[attribute(1)]];
//        float2 texcoord0 [[attribute(2)]];
//    };
//
//    vertex main0_out main0(main0_in in [[stage_in]])
//    {
//        main0_out out = {};
//        out.gl_Position = float4(in.pos, 0.0, 1.0);
//        out.color = in.color0;
//        out.uv = in.texcoord0;
//        return out;
//    }
//
//
const vs_source_metal_macos = [524]u8 {
    0x23,0x69,0x6e,0x63,0x6c,0x75,0x64,0x65,0x20,0x3c,0x6d,0x65,0x74,0x61,0x6c,0x5f,
    0x73,0x74,0x64,0x6c,0x69,0x62,0x3e,0x0a,0x23,0x69,0x6e,0x63,0x6c,0x75,0x64,0x65,
    0x20,0x3c,0x73,0x69,0x6d,0x64,0x2f,0x73,0x69,0x6d,0x64,0x2e,0x68,0x3e,0x0a,0x0a,
    0x75,0x73,0x69,0x6e,0x67,0x20,0x6e,0x61,0x6d,0x65,0x73,0x70,0x61,0x63,0x65,0x20,
    0x6d,0x65,0x74,0x61,0x6c,0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x6d,
    0x61,0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x5b,0x5b,0x75,0x73,
    0x65,0x72,0x28,0x6c,0x6f,0x63,0x6e,0x30,0x29,0x5d,0x5d,0x3b,0x0a,0x20,0x20,0x20,
    0x20,0x66,0x6c,0x6f,0x61,0x74,0x32,0x20,0x75,0x76,0x20,0x5b,0x5b,0x75,0x73,0x65,
    0x72,0x28,0x6c,0x6f,0x63,0x6e,0x31,0x29,0x5d,0x5d,0x3b,0x0a,0x20,0x20,0x20,0x20,
    0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,
    0x6f,0x6e,0x20,0x5b,0x5b,0x70,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x5d,0x5d,0x3b,
    0x0a,0x7d,0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x6d,0x61,0x69,0x6e,
    0x30,0x5f,0x69,0x6e,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,
    0x32,0x20,0x70,0x6f,0x73,0x20,0x5b,0x5b,0x61,0x74,0x74,0x72,0x69,0x62,0x75,0x74,
    0x65,0x28,0x30,0x29,0x5d,0x5d,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,
    0x74,0x34,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x20,0x5b,0x5b,0x61,0x74,0x74,0x72,
    0x69,0x62,0x75,0x74,0x65,0x28,0x31,0x29,0x5d,0x5d,0x3b,0x0a,0x20,0x20,0x20,0x20,
    0x66,0x6c,0x6f,0x61,0x74,0x32,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,
    0x20,0x5b,0x5b,0x61,0x74,0x74,0x72,0x69,0x62,0x75,0x74,0x65,0x28,0x32,0x29,0x5d,
    0x5d,0x3b,0x0a,0x7d,0x3b,0x0a,0x0a,0x76,0x65,0x72,0x74,0x65,0x78,0x20,0x6d,0x61,
    0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x20,0x6d,0x61,0x69,0x6e,0x30,0x28,0x6d,0x61,
    0x69,0x6e,0x30,0x5f,0x69,0x6e,0x20,0x69,0x6e,0x20,0x5b,0x5b,0x73,0x74,0x61,0x67,
    0x65,0x5f,0x69,0x6e,0x5d,0x5d,0x29,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x6d,0x61,
    0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x20,0x6f,0x75,0x74,0x20,0x3d,0x20,0x7b,0x7d,
    0x3b,0x0a,0x20,0x20,0x20,0x20,0x6f,0x75,0x74,0x2e,0x67,0x6c,0x5f,0x50,0x6f,0x73,
    0x69,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x28,0x69,
    0x6e,0x2e,0x70,0x6f,0x73,0x2c,0x20,0x30,0x2e,0x30,0x2c,0x20,0x31,0x2e,0x30,0x29,
    0x3b,0x0a,0x20,0x20,0x20,0x20,0x6f,0x75,0x74,0x2e,0x63,0x6f,0x6c,0x6f,0x72,0x20,
    0x3d,0x20,0x69,0x6e,0x2e,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x3b,0x0a,0x20,0x20,0x20,
    0x20,0x6f,0x75,0x74,0x2e,0x75,0x76,0x20,0x3d,0x20,0x69,0x6e,0x2e,0x74,0x65,0x78,
    0x63,0x6f,0x6f,0x72,0x64,0x30,0x3b,0x0a,0x20,0x20,0x20,0x20,0x72,0x65,0x74,0x75,
    0x72,0x6e,0x20,0x6f,0x75,0x74,0x3b,0x0a,0x7d,0x0a,0x0a,0x00,
};
//
//    #include <metal_stdlib>
//    #include <simd/simd.h>
//
//    using namespace metal;
//
//    struct main0_out
//    {
//        float4 frag_color [[color(0)]];
//    };
//
//    struct main0_in
//    {
//        float4 color [[user(locn0)]];
//        float2 uv [[user(locn1)]];
//    };
//
//    fragment main0_out main0(main0_in in [[stage_in]], texture2d<float> tex [[texture(0)]], sampler smp [[sampler(0)]])
//    {
//        main0_out out = {};
//        out.frag_color = tex.sample(smp, in.uv) * in.color;
//        return out;
//    }
//
//
const fs_source_metal_macos = [436]u8 {
    0x23,0x69,0x6e,0x63,0x6c,0x75,0x64,0x65,0x20,0x3c,0x6d,0x65,0x74,0x61,0x6c,0x5f,
    0x73,0x74,0x64,0x6c,0x69,0x62,0x3e,0x0a,0x23,0x69,0x6e,0x63,0x6c,0x75,0x64,0x65,
    0x20,0x3c,0x73,0x69,0x6d,0x64,0x2f,0x73,0x69,0x6d,0x64,0x2e,0x68,0x3e,0x0a,0x0a,
    0x75,0x73,0x69,0x6e,0x67,0x20,0x6e,0x61,0x6d,0x65,0x73,0x70,0x61,0x63,0x65,0x20,
    0x6d,0x65,0x74,0x61,0x6c,0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x6d,
    0x61,0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,
    0x6c,0x6f,0x61,0x74,0x34,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,
    0x20,0x5b,0x5b,0x63,0x6f,0x6c,0x6f,0x72,0x28,0x30,0x29,0x5d,0x5d,0x3b,0x0a,0x7d,
    0x3b,0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x6d,0x61,0x69,0x6e,0x30,0x5f,
    0x69,0x6e,0x0a,0x7b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,0x34,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x20,0x5b,0x5b,0x75,0x73,0x65,0x72,0x28,0x6c,0x6f,0x63,
    0x6e,0x30,0x29,0x5d,0x5d,0x3b,0x0a,0x20,0x20,0x20,0x20,0x66,0x6c,0x6f,0x61,0x74,
    0x32,0x20,0x75,0x76,0x20,0x5b,0x5b,0x75,0x73,0x65,0x72,0x28,0x6c,0x6f,0x63,0x6e,
    0x31,0x29,0x5d,0x5d,0x3b,0x0a,0x7d,0x3b,0x0a,0x0a,0x66,0x72,0x61,0x67,0x6d,0x65,
    0x6e,0x74,0x20,0x6d,0x61,0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x20,0x6d,0x61,0x69,
    0x6e,0x30,0x28,0x6d,0x61,0x69,0x6e,0x30,0x5f,0x69,0x6e,0x20,0x69,0x6e,0x20,0x5b,
    0x5b,0x73,0x74,0x61,0x67,0x65,0x5f,0x69,0x6e,0x5d,0x5d,0x2c,0x20,0x74,0x65,0x78,
    0x74,0x75,0x72,0x65,0x32,0x64,0x3c,0x66,0x6c,0x6f,0x61,0x74,0x3e,0x20,0x74,0x65,
    0x78,0x20,0x5b,0x5b,0x74,0x65,0x78,0x74,0x75,0x72,0x65,0x28,0x30,0x29,0x5d,0x5d,
    0x2c,0x20,0x73,0x61,0x6d,0x70,0x6c,0x65,0x72,0x20,0x73,0x6d,0x70,0x20,0x5b,0x5b,
    0x73,0x61,0x6d,0x70,0x6c,0x65,0x72,0x28,0x30,0x29,0x5d,0x5d,0x29,0x0a,0x7b,0x0a,
    0x20,0x20,0x20,0x20,0x6d,0x61,0x69,0x6e,0x30,0x5f,0x6f,0x75,0x74,0x20,0x6f,0x75,
    0x74,0x20,0x3d,0x20,0x7b,0x7d,0x3b,0x0a,0x20,0x20,0x20,0x20,0x6f,0x75,0x74,0x2e,
    0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x74,0x65,0x78,
    0x2e,0x73,0x61,0x6d,0x70,0x6c,0x65,0x28,0x73,0x6d,0x70,0x2c,0x20,0x69,0x6e,0x2e,
    0x75,0x76,0x29,0x20,0x2a,0x20,0x69,0x6e,0x2e,0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,
    0x20,0x20,0x20,0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x20,0x6f,0x75,0x74,0x3b,0x0a,
    0x7d,0x0a,0x0a,0x00,
};
//
//    diagnostic(off, derivative_uniformity);
//
//    var<private> pos : vec2f;
//
//    var<private> color : vec4f;
//
//    var<private> color0 : vec4f;
//
//    var<private> uv : vec2f;
//
//    var<private> texcoord0 : vec2f;
//
//    var<private> gl_Position : vec4f;
//
//    fn main_1() {
//      let x_19 : vec2f = pos;
//      gl_Position = vec4f(x_19.x, x_19.y, 0.0f, 1.0f);
//      let x_30 : vec4f = color0;
//      color = x_30;
//      let x_34 : vec2f = texcoord0;
//      uv = x_34;
//      return;
//    }
//
//    struct main_out {
//      @builtin(position)
//      gl_Position : vec4f,
//      @location(0)
//      color_1 : vec4f,
//      @location(1)
//      uv_1 : vec2f,
//    }
//
//    @vertex
//    fn main(@location(0) pos_param : vec2f, @location(1) color0_param : vec4f, @location(2) texcoord0_param : vec2f) -> main_out {
//      pos = pos_param;
//      color0 = color0_param;
//      texcoord0 = texcoord0_param;
//      main_1();
//      return main_out(gl_Position, color, uv);
//    }
//
//
const vs_source_wgsl = [814]u8 {
    0x64,0x69,0x61,0x67,0x6e,0x6f,0x73,0x74,0x69,0x63,0x28,0x6f,0x66,0x66,0x2c,0x20,
    0x64,0x65,0x72,0x69,0x76,0x61,0x74,0x69,0x76,0x65,0x5f,0x75,0x6e,0x69,0x66,0x6f,
    0x72,0x6d,0x69,0x74,0x79,0x29,0x3b,0x0a,0x0a,0x76,0x61,0x72,0x3c,0x70,0x72,0x69,
    0x76,0x61,0x74,0x65,0x3e,0x20,0x70,0x6f,0x73,0x20,0x3a,0x20,0x76,0x65,0x63,0x32,
    0x66,0x3b,0x0a,0x0a,0x76,0x61,0x72,0x3c,0x70,0x72,0x69,0x76,0x61,0x74,0x65,0x3e,
    0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x3b,0x0a,
    0x0a,0x76,0x61,0x72,0x3c,0x70,0x72,0x69,0x76,0x61,0x74,0x65,0x3e,0x20,0x63,0x6f,
    0x6c,0x6f,0x72,0x30,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x3b,0x0a,0x0a,0x76,
    0x61,0x72,0x3c,0x70,0x72,0x69,0x76,0x61,0x74,0x65,0x3e,0x20,0x75,0x76,0x20,0x3a,
    0x20,0x76,0x65,0x63,0x32,0x66,0x3b,0x0a,0x0a,0x76,0x61,0x72,0x3c,0x70,0x72,0x69,
    0x76,0x61,0x74,0x65,0x3e,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,0x20,
    0x3a,0x20,0x76,0x65,0x63,0x32,0x66,0x3b,0x0a,0x0a,0x76,0x61,0x72,0x3c,0x70,0x72,
    0x69,0x76,0x61,0x74,0x65,0x3e,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,
    0x6f,0x6e,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x3b,0x0a,0x0a,0x66,0x6e,0x20,
    0x6d,0x61,0x69,0x6e,0x5f,0x31,0x28,0x29,0x20,0x7b,0x0a,0x20,0x20,0x6c,0x65,0x74,
    0x20,0x78,0x5f,0x31,0x39,0x20,0x3a,0x20,0x76,0x65,0x63,0x32,0x66,0x20,0x3d,0x20,
    0x70,0x6f,0x73,0x3b,0x0a,0x20,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,
    0x6f,0x6e,0x20,0x3d,0x20,0x76,0x65,0x63,0x34,0x66,0x28,0x78,0x5f,0x31,0x39,0x2e,
    0x78,0x2c,0x20,0x78,0x5f,0x31,0x39,0x2e,0x79,0x2c,0x20,0x30,0x2e,0x30,0x66,0x2c,
    0x20,0x31,0x2e,0x30,0x66,0x29,0x3b,0x0a,0x20,0x20,0x6c,0x65,0x74,0x20,0x78,0x5f,
    0x33,0x30,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x20,0x3d,0x20,0x63,0x6f,0x6c,
    0x6f,0x72,0x30,0x3b,0x0a,0x20,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x78,
    0x5f,0x33,0x30,0x3b,0x0a,0x20,0x20,0x6c,0x65,0x74,0x20,0x78,0x5f,0x33,0x34,0x20,
    0x3a,0x20,0x76,0x65,0x63,0x32,0x66,0x20,0x3d,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,
    0x72,0x64,0x30,0x3b,0x0a,0x20,0x20,0x75,0x76,0x20,0x3d,0x20,0x78,0x5f,0x33,0x34,
    0x3b,0x0a,0x20,0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x3b,0x0a,0x7d,0x0a,0x0a,0x73,
    0x74,0x72,0x75,0x63,0x74,0x20,0x6d,0x61,0x69,0x6e,0x5f,0x6f,0x75,0x74,0x20,0x7b,
    0x0a,0x20,0x20,0x40,0x62,0x75,0x69,0x6c,0x74,0x69,0x6e,0x28,0x70,0x6f,0x73,0x69,
    0x74,0x69,0x6f,0x6e,0x29,0x0a,0x20,0x20,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,
    0x69,0x6f,0x6e,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x2c,0x0a,0x20,0x20,0x40,
    0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x28,0x30,0x29,0x0a,0x20,0x20,0x63,0x6f,
    0x6c,0x6f,0x72,0x5f,0x31,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x2c,0x0a,0x20,
    0x20,0x40,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x28,0x31,0x29,0x0a,0x20,0x20,
    0x75,0x76,0x5f,0x31,0x20,0x3a,0x20,0x76,0x65,0x63,0x32,0x66,0x2c,0x0a,0x7d,0x0a,
    0x0a,0x40,0x76,0x65,0x72,0x74,0x65,0x78,0x0a,0x66,0x6e,0x20,0x6d,0x61,0x69,0x6e,
    0x28,0x40,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x28,0x30,0x29,0x20,0x70,0x6f,
    0x73,0x5f,0x70,0x61,0x72,0x61,0x6d,0x20,0x3a,0x20,0x76,0x65,0x63,0x32,0x66,0x2c,
    0x20,0x40,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x28,0x31,0x29,0x20,0x63,0x6f,
    0x6c,0x6f,0x72,0x30,0x5f,0x70,0x61,0x72,0x61,0x6d,0x20,0x3a,0x20,0x76,0x65,0x63,
    0x34,0x66,0x2c,0x20,0x40,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x28,0x32,0x29,
    0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,0x5f,0x70,0x61,0x72,0x61,0x6d,
    0x20,0x3a,0x20,0x76,0x65,0x63,0x32,0x66,0x29,0x20,0x2d,0x3e,0x20,0x6d,0x61,0x69,
    0x6e,0x5f,0x6f,0x75,0x74,0x20,0x7b,0x0a,0x20,0x20,0x70,0x6f,0x73,0x20,0x3d,0x20,
    0x70,0x6f,0x73,0x5f,0x70,0x61,0x72,0x61,0x6d,0x3b,0x0a,0x20,0x20,0x63,0x6f,0x6c,
    0x6f,0x72,0x30,0x20,0x3d,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x30,0x5f,0x70,0x61,0x72,
    0x61,0x6d,0x3b,0x0a,0x20,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,0x20,
    0x3d,0x20,0x74,0x65,0x78,0x63,0x6f,0x6f,0x72,0x64,0x30,0x5f,0x70,0x61,0x72,0x61,
    0x6d,0x3b,0x0a,0x20,0x20,0x6d,0x61,0x69,0x6e,0x5f,0x31,0x28,0x29,0x3b,0x0a,0x20,
    0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x20,0x6d,0x61,0x69,0x6e,0x5f,0x6f,0x75,0x74,
    0x28,0x67,0x6c,0x5f,0x50,0x6f,0x73,0x69,0x74,0x69,0x6f,0x6e,0x2c,0x20,0x63,0x6f,
    0x6c,0x6f,0x72,0x2c,0x20,0x75,0x76,0x29,0x3b,0x0a,0x7d,0x0a,0x0a,0x00,
};
//
//    diagnostic(off, derivative_uniformity);
//
//    var<private> frag_color : vec4f;
//
//    @group(1) @binding(48) var tex : texture_2d<f32>;
//
//    @group(1) @binding(64) var smp : sampler;
//
//    var<private> uv : vec2f;
//
//    var<private> color : vec4f;
//
//    fn main_1() {
//      let x_23 : vec2f = uv;
//      let x_24 : vec4f = textureSample(tex, smp, x_23);
//      let x_27 : vec4f = color;
//      frag_color = (x_24 * x_27);
//      return;
//    }
//
//    struct main_out {
//      @location(0)
//      frag_color_1 : vec4f,
//    }
//
//    @fragment
//    fn main(@location(1) uv_param : vec2f, @location(0) color_param : vec4f) -> main_out {
//      uv = uv_param;
//      color = color_param;
//      main_1();
//      return main_out(frag_color);
//    }
//
//
const fs_source_wgsl = [630]u8 {
    0x64,0x69,0x61,0x67,0x6e,0x6f,0x73,0x74,0x69,0x63,0x28,0x6f,0x66,0x66,0x2c,0x20,
    0x64,0x65,0x72,0x69,0x76,0x61,0x74,0x69,0x76,0x65,0x5f,0x75,0x6e,0x69,0x66,0x6f,
    0x72,0x6d,0x69,0x74,0x79,0x29,0x3b,0x0a,0x0a,0x76,0x61,0x72,0x3c,0x70,0x72,0x69,
    0x76,0x61,0x74,0x65,0x3e,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,
    0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x3b,0x0a,0x0a,0x40,0x67,0x72,0x6f,0x75,
    0x70,0x28,0x31,0x29,0x20,0x40,0x62,0x69,0x6e,0x64,0x69,0x6e,0x67,0x28,0x34,0x38,
    0x29,0x20,0x76,0x61,0x72,0x20,0x74,0x65,0x78,0x20,0x3a,0x20,0x74,0x65,0x78,0x74,
    0x75,0x72,0x65,0x5f,0x32,0x64,0x3c,0x66,0x33,0x32,0x3e,0x3b,0x0a,0x0a,0x40,0x67,
    0x72,0x6f,0x75,0x70,0x28,0x31,0x29,0x20,0x40,0x62,0x69,0x6e,0x64,0x69,0x6e,0x67,
    0x28,0x36,0x34,0x29,0x20,0x76,0x61,0x72,0x20,0x73,0x6d,0x70,0x20,0x3a,0x20,0x73,
    0x61,0x6d,0x70,0x6c,0x65,0x72,0x3b,0x0a,0x0a,0x76,0x61,0x72,0x3c,0x70,0x72,0x69,
    0x76,0x61,0x74,0x65,0x3e,0x20,0x75,0x76,0x20,0x3a,0x20,0x76,0x65,0x63,0x32,0x66,
    0x3b,0x0a,0x0a,0x76,0x61,0x72,0x3c,0x70,0x72,0x69,0x76,0x61,0x74,0x65,0x3e,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x3b,0x0a,0x0a,
    0x66,0x6e,0x20,0x6d,0x61,0x69,0x6e,0x5f,0x31,0x28,0x29,0x20,0x7b,0x0a,0x20,0x20,
    0x6c,0x65,0x74,0x20,0x78,0x5f,0x32,0x33,0x20,0x3a,0x20,0x76,0x65,0x63,0x32,0x66,
    0x20,0x3d,0x20,0x75,0x76,0x3b,0x0a,0x20,0x20,0x6c,0x65,0x74,0x20,0x78,0x5f,0x32,
    0x34,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x20,0x3d,0x20,0x74,0x65,0x78,0x74,
    0x75,0x72,0x65,0x53,0x61,0x6d,0x70,0x6c,0x65,0x28,0x74,0x65,0x78,0x2c,0x20,0x73,
    0x6d,0x70,0x2c,0x20,0x78,0x5f,0x32,0x33,0x29,0x3b,0x0a,0x20,0x20,0x6c,0x65,0x74,
    0x20,0x78,0x5f,0x32,0x37,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x20,0x3d,0x20,
    0x63,0x6f,0x6c,0x6f,0x72,0x3b,0x0a,0x20,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,
    0x6c,0x6f,0x72,0x20,0x3d,0x20,0x28,0x78,0x5f,0x32,0x34,0x20,0x2a,0x20,0x78,0x5f,
    0x32,0x37,0x29,0x3b,0x0a,0x20,0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x3b,0x0a,0x7d,
    0x0a,0x0a,0x73,0x74,0x72,0x75,0x63,0x74,0x20,0x6d,0x61,0x69,0x6e,0x5f,0x6f,0x75,
    0x74,0x20,0x7b,0x0a,0x20,0x20,0x40,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x28,
    0x30,0x29,0x0a,0x20,0x20,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x5f,
    0x31,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x2c,0x0a,0x7d,0x0a,0x0a,0x40,0x66,
    0x72,0x61,0x67,0x6d,0x65,0x6e,0x74,0x0a,0x66,0x6e,0x20,0x6d,0x61,0x69,0x6e,0x28,
    0x40,0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x28,0x31,0x29,0x20,0x75,0x76,0x5f,
    0x70,0x61,0x72,0x61,0x6d,0x20,0x3a,0x20,0x76,0x65,0x63,0x32,0x66,0x2c,0x20,0x40,
    0x6c,0x6f,0x63,0x61,0x74,0x69,0x6f,0x6e,0x28,0x30,0x29,0x20,0x63,0x6f,0x6c,0x6f,
    0x72,0x5f,0x70,0x61,0x72,0x61,0x6d,0x20,0x3a,0x20,0x76,0x65,0x63,0x34,0x66,0x29,
    0x20,0x2d,0x3e,0x20,0x6d,0x61,0x69,0x6e,0x5f,0x6f,0x75,0x74,0x20,0x7b,0x0a,0x20,
    0x20,0x75,0x76,0x20,0x3d,0x20,0x75,0x76,0x5f,0x70,0x61,0x72,0x61,0x6d,0x3b,0x0a,
    0x20,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x20,0x3d,0x20,0x63,0x6f,0x6c,0x6f,0x72,0x5f,
    0x70,0x61,0x72,0x61,0x6d,0x3b,0x0a,0x20,0x20,0x6d,0x61,0x69,0x6e,0x5f,0x31,0x28,
    0x29,0x3b,0x0a,0x20,0x20,0x72,0x65,0x74,0x75,0x72,0x6e,0x20,0x6d,0x61,0x69,0x6e,
    0x5f,0x6f,0x75,0x74,0x28,0x66,0x72,0x61,0x67,0x5f,0x63,0x6f,0x6c,0x6f,0x72,0x29,
    0x3b,0x0a,0x7d,0x0a,0x0a,0x00,
};
pub fn quadShaderDesc(backend: sg.Backend) sg.ShaderDesc {
    var desc: sg.ShaderDesc = .{};
    desc.label = "quad_shader";
    switch (backend) {
        .GLCORE => {
            desc.attrs[0].name = "pos";
            desc.attrs[1].name = "color0";
            desc.attrs[2].name = "texcoord0";
            desc.vs.source = &vs_source_glsl410;
            desc.vs.entry = "main";
            desc.fs.source = &fs_source_glsl410;
            desc.fs.entry = "main";
            desc.fs.images[0].used = true;
            desc.fs.images[0].multisampled = false;
            desc.fs.images[0].image_type = ._2D;
            desc.fs.images[0].sample_type = .FLOAT;
            desc.fs.samplers[0].used = true;
            desc.fs.samplers[0].sampler_type = .FILTERING;
            desc.fs.image_sampler_pairs[0].used = true;
            desc.fs.image_sampler_pairs[0].image_slot = 0;
            desc.fs.image_sampler_pairs[0].sampler_slot = 0;
            desc.fs.image_sampler_pairs[0].glsl_name = "tex_smp";
        },
        .GLES3 => {
            desc.attrs[0].name = "pos";
            desc.attrs[1].name = "color0";
            desc.attrs[2].name = "texcoord0";
            desc.vs.source = &vs_source_glsl300es;
            desc.vs.entry = "main";
            desc.fs.source = &fs_source_glsl300es;
            desc.fs.entry = "main";
            desc.fs.images[0].used = true;
            desc.fs.images[0].multisampled = false;
            desc.fs.images[0].image_type = ._2D;
            desc.fs.images[0].sample_type = .FLOAT;
            desc.fs.samplers[0].used = true;
            desc.fs.samplers[0].sampler_type = .FILTERING;
            desc.fs.image_sampler_pairs[0].used = true;
            desc.fs.image_sampler_pairs[0].image_slot = 0;
            desc.fs.image_sampler_pairs[0].sampler_slot = 0;
            desc.fs.image_sampler_pairs[0].glsl_name = "tex_smp";
        },
        .D3D11 => {
            desc.attrs[0].sem_name = "TEXCOORD";
            desc.attrs[0].sem_index = 0;
            desc.attrs[1].sem_name = "TEXCOORD";
            desc.attrs[1].sem_index = 1;
            desc.attrs[2].sem_name = "TEXCOORD";
            desc.attrs[2].sem_index = 2;
            desc.vs.source = &vs_source_hlsl5;
            desc.vs.d3d11_target = "vs_5_0";
            desc.vs.entry = "main";
            desc.fs.source = &fs_source_hlsl5;
            desc.fs.d3d11_target = "ps_5_0";
            desc.fs.entry = "main";
            desc.fs.images[0].used = true;
            desc.fs.images[0].multisampled = false;
            desc.fs.images[0].image_type = ._2D;
            desc.fs.images[0].sample_type = .FLOAT;
            desc.fs.samplers[0].used = true;
            desc.fs.samplers[0].sampler_type = .FILTERING;
            desc.fs.image_sampler_pairs[0].used = true;
            desc.fs.image_sampler_pairs[0].image_slot = 0;
            desc.fs.image_sampler_pairs[0].sampler_slot = 0;
        },
        .METAL_MACOS => {
            desc.vs.source = &vs_source_metal_macos;
            desc.vs.entry = "main0";
            desc.fs.source = &fs_source_metal_macos;
            desc.fs.entry = "main0";
            desc.fs.images[0].used = true;
            desc.fs.images[0].multisampled = false;
            desc.fs.images[0].image_type = ._2D;
            desc.fs.images[0].sample_type = .FLOAT;
            desc.fs.samplers[0].used = true;
            desc.fs.samplers[0].sampler_type = .FILTERING;
            desc.fs.image_sampler_pairs[0].used = true;
            desc.fs.image_sampler_pairs[0].image_slot = 0;
            desc.fs.image_sampler_pairs[0].sampler_slot = 0;
        },
        .WGPU => {
            desc.vs.source = &vs_source_wgsl;
            desc.vs.entry = "main";
            desc.fs.source = &fs_source_wgsl;
            desc.fs.entry = "main";
            desc.fs.images[0].used = true;
            desc.fs.images[0].multisampled = false;
            desc.fs.images[0].image_type = ._2D;
            desc.fs.images[0].sample_type = .FLOAT;
            desc.fs.samplers[0].used = true;
            desc.fs.samplers[0].sampler_type = .FILTERING;
            desc.fs.image_sampler_pairs[0].used = true;
            desc.fs.image_sampler_pairs[0].image_slot = 0;
            desc.fs.image_sampler_pairs[0].sampler_slot = 0;
        },
        else => {},
    }
    return desc;
}
