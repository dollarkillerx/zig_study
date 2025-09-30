const std = @import("std"); // 导入为静态的必须使用const

pub fn main() void {
    std.debug.print("Hello, {s}!\n", .{"world"});
    // demo1();
    // demo2_arry();
    demo3_string();
}

fn demo1() void {
    var n: u8 = 10;
    n = n + 1;
    std.debug.print("n: {}\n", .{n});

    const pi: f32 = 3.14;
    std.debug.print("pi: {}\n", .{pi});
    const negative_eleven: i8 = -11;
    std.debug.print("negative_eleven: {}\n", .{negative_eleven});
    const positive_eleven: u8 = 11;
    std.debug.print("positive_eleven: {}\n", .{positive_eleven});
    const positive_eleven_u16: u16 = 11;
    std.debug.print("positive_eleven_u16: {}\n", .{positive_eleven_u16});
    const positive_eleven_u32: u32 = 11;
    std.debug.print("positive_eleven_u32: {}\n", .{positive_eleven_u32});

    const a = 12; // const 可以自动推断类型 var 必须指定类型
    // a = a + 1;
    std.debug.print("a: {}\n", .{a});
}

fn demo2_arry() void {
    const some_primes = [_]u8{ 2, 3, 5, 7, 11, 13 }; // 可自动推导大小

    const first = some_primes[0];
    std.debug.print("first: {}\n", .{first});

    const length = some_primes.len;
    std.debug.print("length: {}\n", .{length});

    // var some_2 = [_]u8{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    // some_2[0] = 10;

    var some_2 = some_primes; // clone 数组
    some_2[0] = 10;
    std.debug.print("some_2: {any}\n", .{some_2});

    std.debug.print("some_primes: {any}\n", .{some_primes});

    const some_3 = some_primes[0..2] ** 2; // 切片 2,3, 2,3
    std.debug.print("some_3: {any}\n", .{some_3});

    for (some_primes) |prime| {
        std.debug.print("prime: {} ", .{prime});
    }

    std.debug.print("\n", .{});
}

fn demo3_string() void {
    const hello = "Hello";
    const world = "World";
    const hello_world = hello ++ " " ++ world;
    std.debug.print("hello_world: {s}\n", .{hello_world});

    const lyrics =
        \\Oh, my darling, don't be dismayed,
        \\Don't worry, be happy.
        \\With your troubled mind and tear-stained face,
        \\You better put on a happy face.
    ;
    std.debug.print("lyrics: {s}\n", .{lyrics});
}
