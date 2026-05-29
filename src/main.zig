const std = @import("std");

fn add(a: i32, b: i32) i32 {
    return a + b;
}

fn subtract(a: i32, b: i32) i32 {
    return a - b;
}

fn multiply(a: i32, b: i32) i32 {
    return a * b;
}

const DivisionError = error{
    DivideByZero,
};

fn divide(a: i32, b: i32) DivisionError!i32 {
    if (b == 0) {
        return DivisionError.DivideByZero;
    }

    return @divTrunc(a, b);
}

pub fn main() !void {
    const add_result = add(10, 20);
    const subtract_result = subtract(20, 10);
    const multiply_result = multiply(10, 20);
    const divide_result = try divide(20, 10);

    std.debug.print("10 + 20 = {}\n", .{add_result});
    std.debug.print("20 - 10 = {}\n", .{subtract_result});
    std.debug.print("10 * 20 = {}\n", .{multiply_result});
    std.debug.print("20 / 10 = {}\n", .{divide_result});
}
