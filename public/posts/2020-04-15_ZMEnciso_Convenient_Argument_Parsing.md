This post describes how to use kwjw's argument parsing method `opt.zig`.
#   Convenient Arugment Parsing

By ZMEnciso, describing work done by kwjw.

---

##  Goal

Create a robust but easy-to-use set of functions that may be imported into 
Zig programs.  This would allow the user to easily deploy argument parsing
into their Zig projects, so they can spend more time focusing on their
project's functionality.


##  Usage

First, be sure to include `opt.zig` in your program.  For the following 
examples, `opt.zig` was imported as
```
const opt = @import("opt.zig");
```
  
`opt.zig` relies on **enumerating** all of the potential flags.  It is 
recommended to make this enumeration a global constant.  For example:
```
const Flags = enum {
    Foo,
    Bar,
    Foobar
};
```
  
After the enumeration, each one of the flags may be given additional 
properties, including
  - Name (required)
  - Longform (appears as `--flag` during use)
  - Shortform (appears as `-f` during use)
  - Mandatory status
  - Kind (either `String` or `None`, default `None`)

In practice, this might look like:
```
var flags = [_]opt.Flag(Flags) {
    .{ 
        .name   = Flags.Foo,
        .long   = "foo",
    },
    .{
        .name       = Flags.Bar,
        .short      = 'b',
        .long       = "bar",
        .mandatory  = true,
    },
    .{
        .name   = Flags.Foobar,
        .short  = 'z',
        .long   = "foobar",
        .kind   = opt.ArgTypeTag.String,
    },
};
```

Then, in the main function (`main(args: [][]u8)`), you can either examine
a specific argument, or use the `FlagIterator` to loop through the command
line arguments passed to the program.  To do so, define a `opt.FlagIterator`
variable and use its `next_flag` method to check each flag.  

For example,
```
var it = opt.FlagIterator(Flags).init(flags[0..], args);
while (it.next_flag() catch {
    return 0; 
}) |flag| {
    switch (flag.name) {
        Flags.Foo => {
            <>
        },
        Flags.Bar => {
            <>
        },
        Flags.Foobar => {
            <>
        },
    }
}
```


##  Examples

All of the examples that parse command line arguments in the PBUI userland
have been converted to use kwjw's `opt.zig`, so they serve as real-world
examples for its usage.


