// zig fmt: off
const std = @import("std");
const builtin = @import("builtin");
const string = []const u8;

pub const cache = "/home/meghan/dev/test/.zigmod/deps";

pub fn addAllTo(exe: *std.Build.Step.Compile) void {
    checkMinZig(builtin.zig_version, exe);
    @setEvalBranchQuota(1_000_000);
    for (packages) |pkg| {
        const module = pkg.module(exe);
        exe.root_module.addImport(pkg.import.?[0], module);
    }
    for (package_data._root.system_libs) |libname| {
        exe.linkSystemLibrary(libname);
        exe.linkLibC();
    }
}

var link_lib_c = false;
pub const Package = struct {
    directory: string,
    import: ?struct { string, std.Build.LazyPath } = null,
    dependencies: []const *Package,
    c_include_dirs: []const string = &.{},
    c_source_files: []const string = &.{},
    c_source_flags: []const string = &.{},
    system_libs: []const string = &.{},
    frameworks: []const string = &.{},
    module_memo: ?*std.Build.Module = null,

    pub fn module(self: *Package, exe: *std.Build.Step.Compile) *std.Build.Module {
        if (self.module_memo) |cached| {
            return cached;
        }
        const b = exe.step.owner;
        const result = b.createModule(.{
            .target = exe.root_module.resolved_target orelse b.graph.host,
        });
        if (self.import) |capture| {
            result.root_source_file = capture[1];
        }
        for (self.dependencies) |item| {
            const module_dep = item.module(exe);
            if (module_dep.root_source_file != null) {
                result.addImport(item.import.?[0], module_dep);
            }
            for (module_dep.include_dirs.items) |jtem| {
                switch (jtem) {
                    .path => result.addIncludePath(jtem.path),
                    .path_system, .path_after, .framework_path, .framework_path_system, .other_step, .config_header_step => {},
                }
            }
        }
        for (self.c_include_dirs) |item| {
            result.addIncludePath(.{ .cwd_relative = (b.fmt("{s}/{s}", .{ self.directory, item })) });
            exe.addIncludePath(.{ .cwd_relative = (b.fmt("{s}/{s}", .{ self.directory, item })) });
            link_lib_c = true;
        }
        for (self.c_source_files) |item| {
            exe.addCSourceFile(.{ .file = .{ .cwd_relative = (b.fmt("{s}/{s}", .{ self.directory, item })) }, .flags = self.c_source_flags });
            link_lib_c = true;
        }
        for (self.system_libs) |item| {
            result.linkSystemLibrary(item, .{});
            exe.linkSystemLibrary(item);
            link_lib_c = true;
        }
        for (self.frameworks) |item| {
            result.linkFramework(item, .{});
            exe.linkFramework(item);
            link_lib_c = true;
        }
        if (link_lib_c) {
            result.link_libc = true;
            exe.linkLibC();
        }
        self.module_memo = result;
        return result;
    }
};

fn checkMinZig(current: std.SemanticVersion, exe: *std.Build.Step.Compile) void {
    const min = std.SemanticVersion.parse("null") catch return;
    if (current.order(min).compare(.lt)) @panic(exe.step.owner.fmt("Your Zig version v{} does not meet the minimum build requirement of v{}", .{current, min}));
}

pub const dirs = struct {
    pub const _root = "";
    pub const _tq8c9uu13noy = "/home/meghan/dev/test";
    pub const _qoedvk82xtp0 = cache ++ "/v/git/github.com/kivikakk/libpcre.zig/commit-00b62bc8bea7da75ba61f56555ea6cbaf0dc4e26";
    pub const _8z7q0m81vvex = cache ++ "/v/git/github.com/nektro/pcre-8.45/commit-cd69966b46e641ba0847fdbab8b0d7c6d94d9594";
    pub const _mr0i9fhju8jh = cache ++ "/v/git/github.com/kivikakk/htmlentities.zig/commit-9cc3600c53ae60565d839eaf93d5c519c21e27cc";
    pub const _47zkmuv464zq = cache ++ "/v/git/github.com/nektro/zig-icu/commit-5c044fceca5cfaec37c08d0b58d5e13650f346d4";
    pub const _iws1u5qg29z5 = cache ++ "/v/git/github.com/nektro/zig-unicode-ucd/commit-ceb64573489955f0fea6df00439c94c7bb715cbc";
};

pub const package_data = struct {
    pub var _qoedvk82xtp0 = Package{
        .directory = dirs._qoedvk82xtp0,
        .import = .{ "libpcre", .{ .cwd_relative = dirs._qoedvk82xtp0 ++ "/src/main.zig" } },
        .dependencies = &.{ &_8z7q0m81vvex },
    };
    pub var _8z7q0m81vvex = Package{
        .directory = dirs._8z7q0m81vvex,
        .dependencies = &.{ },
        .c_include_dirs = &.{ "" },
        .c_source_files = &.{ "pcre_byte_order.c", "pcre_chartables.c", "pcre_compile.c", "pcre_config.c", "pcre_dfa_exec.c", "pcre_exec.c", "pcre_fullinfo.c", "pcre_get.c", "pcre_globals.c", "pcre_jit_compile.c", "pcre_maketables.c", "pcre_newline.c", "pcre_ord2utf8.c", "pcre_printint.c", "pcre_refcount.c", "pcre_string_utils.c", "pcre_study.c", "pcre_tables.c", "pcre_ucd.c", "pcre_valid_utf8.c", "pcre_version.c", "pcre_xclass.c" },
        .c_source_flags = &.{ "-Wno-implicit-function-declaration", "-DHAVE_CONFIG_H" },
    };
    pub var _mr0i9fhju8jh = Package{
        .directory = dirs._mr0i9fhju8jh,
        .import = .{ "htmlentities", .{ .cwd_relative = dirs._mr0i9fhju8jh ++ "/src/main.zig" } },
        .dependencies = &.{ },
    };
    pub var _iws1u5qg29z5 = Package{
        .directory = dirs._iws1u5qg29z5,
        .import = .{ "unicode-ucd", .{ .cwd_relative = dirs._iws1u5qg29z5 ++ "/src/lib.zig" } },
        .dependencies = &.{ },
    };
    pub var _47zkmuv464zq = Package{
        .directory = dirs._47zkmuv464zq,
        .import = .{ "icu", .{ .cwd_relative = dirs._47zkmuv464zq ++ "/src/root.zig" } },
        .dependencies = &.{ &_iws1u5qg29z5 },
    };
    pub var _tq8c9uu13noy = Package{
        .directory = dirs._tq8c9uu13noy,
        .import = .{ "koino", .{ .cwd_relative = dirs._tq8c9uu13noy ++ "/src/koino.zig" } },
        .dependencies = &.{ &_qoedvk82xtp0, &_mr0i9fhju8jh, &_47zkmuv464zq },
    };
    pub var _root = Package{
        .directory = dirs._root,
        .dependencies = &.{ &_tq8c9uu13noy },
    };
};

pub const packages = &[_]*Package{
    &package_data._tq8c9uu13noy,
};

pub const pkgs = struct {
    pub const koino = &package_data._tq8c9uu13noy;
};

pub const imports = struct {
};
