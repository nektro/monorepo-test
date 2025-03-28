// This file is part of the Unicode Character Database
// For documentation, see http://www.unicode.org/reports/tr44/
//
// Based on the source file: https://unicode.org/Public/16.0.0/ucd/BidiBrackets.txt
//
// zig fmt: off

pub const BracketPairing = struct {
    codepoint: u21,
    pair: u21,
    type: Type,

    pub const Type = enum {
        o,
        c,
        n,
    };
};

pub const data = [_]BracketPairing{
    .{ .codepoint = 0x0028, .pair = 0x0029, .type = .o },
    .{ .codepoint = 0x0029, .pair = 0x0028, .type = .c },
    .{ .codepoint = 0x005B, .pair = 0x005D, .type = .o },
    .{ .codepoint = 0x005D, .pair = 0x005B, .type = .c },
    .{ .codepoint = 0x007B, .pair = 0x007D, .type = .o },
    .{ .codepoint = 0x007D, .pair = 0x007B, .type = .c },
    .{ .codepoint = 0x0F3A, .pair = 0x0F3B, .type = .o },
    .{ .codepoint = 0x0F3B, .pair = 0x0F3A, .type = .c },
    .{ .codepoint = 0x0F3C, .pair = 0x0F3D, .type = .o },
    .{ .codepoint = 0x0F3D, .pair = 0x0F3C, .type = .c },
    .{ .codepoint = 0x169B, .pair = 0x169C, .type = .o },
    .{ .codepoint = 0x169C, .pair = 0x169B, .type = .c },
    .{ .codepoint = 0x2045, .pair = 0x2046, .type = .o },
    .{ .codepoint = 0x2046, .pair = 0x2045, .type = .c },
    .{ .codepoint = 0x207D, .pair = 0x207E, .type = .o },
    .{ .codepoint = 0x207E, .pair = 0x207D, .type = .c },
    .{ .codepoint = 0x208D, .pair = 0x208E, .type = .o },
    .{ .codepoint = 0x208E, .pair = 0x208D, .type = .c },
    .{ .codepoint = 0x2308, .pair = 0x2309, .type = .o },
    .{ .codepoint = 0x2309, .pair = 0x2308, .type = .c },
    .{ .codepoint = 0x230A, .pair = 0x230B, .type = .o },
    .{ .codepoint = 0x230B, .pair = 0x230A, .type = .c },
    .{ .codepoint = 0x2329, .pair = 0x232A, .type = .o },
    .{ .codepoint = 0x232A, .pair = 0x2329, .type = .c },
    .{ .codepoint = 0x2768, .pair = 0x2769, .type = .o },
    .{ .codepoint = 0x2769, .pair = 0x2768, .type = .c },
    .{ .codepoint = 0x276A, .pair = 0x276B, .type = .o },
    .{ .codepoint = 0x276B, .pair = 0x276A, .type = .c },
    .{ .codepoint = 0x276C, .pair = 0x276D, .type = .o },
    .{ .codepoint = 0x276D, .pair = 0x276C, .type = .c },
    .{ .codepoint = 0x276E, .pair = 0x276F, .type = .o },
    .{ .codepoint = 0x276F, .pair = 0x276E, .type = .c },
    .{ .codepoint = 0x2770, .pair = 0x2771, .type = .o },
    .{ .codepoint = 0x2771, .pair = 0x2770, .type = .c },
    .{ .codepoint = 0x2772, .pair = 0x2773, .type = .o },
    .{ .codepoint = 0x2773, .pair = 0x2772, .type = .c },
    .{ .codepoint = 0x2774, .pair = 0x2775, .type = .o },
    .{ .codepoint = 0x2775, .pair = 0x2774, .type = .c },
    .{ .codepoint = 0x27C5, .pair = 0x27C6, .type = .o },
    .{ .codepoint = 0x27C6, .pair = 0x27C5, .type = .c },
    .{ .codepoint = 0x27E6, .pair = 0x27E7, .type = .o },
    .{ .codepoint = 0x27E7, .pair = 0x27E6, .type = .c },
    .{ .codepoint = 0x27E8, .pair = 0x27E9, .type = .o },
    .{ .codepoint = 0x27E9, .pair = 0x27E8, .type = .c },
    .{ .codepoint = 0x27EA, .pair = 0x27EB, .type = .o },
    .{ .codepoint = 0x27EB, .pair = 0x27EA, .type = .c },
    .{ .codepoint = 0x27EC, .pair = 0x27ED, .type = .o },
    .{ .codepoint = 0x27ED, .pair = 0x27EC, .type = .c },
    .{ .codepoint = 0x27EE, .pair = 0x27EF, .type = .o },
    .{ .codepoint = 0x27EF, .pair = 0x27EE, .type = .c },
    .{ .codepoint = 0x2983, .pair = 0x2984, .type = .o },
    .{ .codepoint = 0x2984, .pair = 0x2983, .type = .c },
    .{ .codepoint = 0x2985, .pair = 0x2986, .type = .o },
    .{ .codepoint = 0x2986, .pair = 0x2985, .type = .c },
    .{ .codepoint = 0x2987, .pair = 0x2988, .type = .o },
    .{ .codepoint = 0x2988, .pair = 0x2987, .type = .c },
    .{ .codepoint = 0x2989, .pair = 0x298A, .type = .o },
    .{ .codepoint = 0x298A, .pair = 0x2989, .type = .c },
    .{ .codepoint = 0x298B, .pair = 0x298C, .type = .o },
    .{ .codepoint = 0x298C, .pair = 0x298B, .type = .c },
    .{ .codepoint = 0x298D, .pair = 0x2990, .type = .o },
    .{ .codepoint = 0x298E, .pair = 0x298F, .type = .c },
    .{ .codepoint = 0x298F, .pair = 0x298E, .type = .o },
    .{ .codepoint = 0x2990, .pair = 0x298D, .type = .c },
    .{ .codepoint = 0x2991, .pair = 0x2992, .type = .o },
    .{ .codepoint = 0x2992, .pair = 0x2991, .type = .c },
    .{ .codepoint = 0x2993, .pair = 0x2994, .type = .o },
    .{ .codepoint = 0x2994, .pair = 0x2993, .type = .c },
    .{ .codepoint = 0x2995, .pair = 0x2996, .type = .o },
    .{ .codepoint = 0x2996, .pair = 0x2995, .type = .c },
    .{ .codepoint = 0x2997, .pair = 0x2998, .type = .o },
    .{ .codepoint = 0x2998, .pair = 0x2997, .type = .c },
    .{ .codepoint = 0x29D8, .pair = 0x29D9, .type = .o },
    .{ .codepoint = 0x29D9, .pair = 0x29D8, .type = .c },
    .{ .codepoint = 0x29DA, .pair = 0x29DB, .type = .o },
    .{ .codepoint = 0x29DB, .pair = 0x29DA, .type = .c },
    .{ .codepoint = 0x29FC, .pair = 0x29FD, .type = .o },
    .{ .codepoint = 0x29FD, .pair = 0x29FC, .type = .c },
    .{ .codepoint = 0x2E22, .pair = 0x2E23, .type = .o },
    .{ .codepoint = 0x2E23, .pair = 0x2E22, .type = .c },
    .{ .codepoint = 0x2E24, .pair = 0x2E25, .type = .o },
    .{ .codepoint = 0x2E25, .pair = 0x2E24, .type = .c },
    .{ .codepoint = 0x2E26, .pair = 0x2E27, .type = .o },
    .{ .codepoint = 0x2E27, .pair = 0x2E26, .type = .c },
    .{ .codepoint = 0x2E28, .pair = 0x2E29, .type = .o },
    .{ .codepoint = 0x2E29, .pair = 0x2E28, .type = .c },
    .{ .codepoint = 0x2E55, .pair = 0x2E56, .type = .o },
    .{ .codepoint = 0x2E56, .pair = 0x2E55, .type = .c },
    .{ .codepoint = 0x2E57, .pair = 0x2E58, .type = .o },
    .{ .codepoint = 0x2E58, .pair = 0x2E57, .type = .c },
    .{ .codepoint = 0x2E59, .pair = 0x2E5A, .type = .o },
    .{ .codepoint = 0x2E5A, .pair = 0x2E59, .type = .c },
    .{ .codepoint = 0x2E5B, .pair = 0x2E5C, .type = .o },
    .{ .codepoint = 0x2E5C, .pair = 0x2E5B, .type = .c },
    .{ .codepoint = 0x3008, .pair = 0x3009, .type = .o },
    .{ .codepoint = 0x3009, .pair = 0x3008, .type = .c },
    .{ .codepoint = 0x300A, .pair = 0x300B, .type = .o },
    .{ .codepoint = 0x300B, .pair = 0x300A, .type = .c },
    .{ .codepoint = 0x300C, .pair = 0x300D, .type = .o },
    .{ .codepoint = 0x300D, .pair = 0x300C, .type = .c },
    .{ .codepoint = 0x300E, .pair = 0x300F, .type = .o },
    .{ .codepoint = 0x300F, .pair = 0x300E, .type = .c },
    .{ .codepoint = 0x3010, .pair = 0x3011, .type = .o },
    .{ .codepoint = 0x3011, .pair = 0x3010, .type = .c },
    .{ .codepoint = 0x3014, .pair = 0x3015, .type = .o },
    .{ .codepoint = 0x3015, .pair = 0x3014, .type = .c },
    .{ .codepoint = 0x3016, .pair = 0x3017, .type = .o },
    .{ .codepoint = 0x3017, .pair = 0x3016, .type = .c },
    .{ .codepoint = 0x3018, .pair = 0x3019, .type = .o },
    .{ .codepoint = 0x3019, .pair = 0x3018, .type = .c },
    .{ .codepoint = 0x301A, .pair = 0x301B, .type = .o },
    .{ .codepoint = 0x301B, .pair = 0x301A, .type = .c },
    .{ .codepoint = 0xFE59, .pair = 0xFE5A, .type = .o },
    .{ .codepoint = 0xFE5A, .pair = 0xFE59, .type = .c },
    .{ .codepoint = 0xFE5B, .pair = 0xFE5C, .type = .o },
    .{ .codepoint = 0xFE5C, .pair = 0xFE5B, .type = .c },
    .{ .codepoint = 0xFE5D, .pair = 0xFE5E, .type = .o },
    .{ .codepoint = 0xFE5E, .pair = 0xFE5D, .type = .c },
    .{ .codepoint = 0xFF08, .pair = 0xFF09, .type = .o },
    .{ .codepoint = 0xFF09, .pair = 0xFF08, .type = .c },
    .{ .codepoint = 0xFF3B, .pair = 0xFF3D, .type = .o },
    .{ .codepoint = 0xFF3D, .pair = 0xFF3B, .type = .c },
    .{ .codepoint = 0xFF5B, .pair = 0xFF5D, .type = .o },
    .{ .codepoint = 0xFF5D, .pair = 0xFF5B, .type = .c },
    .{ .codepoint = 0xFF5F, .pair = 0xFF60, .type = .o },
    .{ .codepoint = 0xFF60, .pair = 0xFF5F, .type = .c },
    .{ .codepoint = 0xFF62, .pair = 0xFF63, .type = .o },
    .{ .codepoint = 0xFF63, .pair = 0xFF62, .type = .c },
};
