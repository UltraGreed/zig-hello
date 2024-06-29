const std = @import("std");

pub fn main() !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("All your codebase are belong to us\n", .{});

    try bw.flush(); // don't forget to flush!
}
