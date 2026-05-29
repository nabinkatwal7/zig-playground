const std = @import("std");

pub fn main(init: std.process.Init.Minimal) void {
    var args = init.args.iterate();

    var index: usize = 0;

    while (args.next()) |arg| {
        std.debug.print("arg[{d}] = {s}\n", .{ index, arg });
        index += 1;
    }
}
