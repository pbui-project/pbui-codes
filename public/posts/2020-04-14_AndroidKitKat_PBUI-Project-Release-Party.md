The PBUI Project IPO!
# PBUI Project Launch!

Today, the [PBUI Project] is officially launching. You may have seen or heard of our project before, so we thank you for your continued interest. If this is the first time hearing of the PBUI Project, let me explain what it is.

The PBUI Project is an implementation of a subset of [GNU Coreutils] in the up and coming programming language [Zig]. We've had our ups and downs with the language, but overall we really like it and will continue to follow its development. 

Here is a quick video by jcharbon giving a general introduction/overview to the [PBUI Project]:

<iframe width="560" height="315" src="https://www.youtube.com/embed/BFtKidPvIEo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
(The video by AndroidKitKat referenced can be found at the bottom of this blog post)

The PBUI Project currently has implementations of:

- basename
- cat
- dirname
- du
- false
- head
- ls
- mkdir
- rm
- sleep
- tail
- true
- uniq
- wc
- zigsay
- A dynamic command line argument parser


Each of these applets can (theoretically) be symlinked to your existing command line and tools and be used in a fashion that mimics Coreutils. However, this software is still in development and not all features of all commands are implemented, however "normal" functionality should work. More on that further down in this blog post.

If you are interested in contributing to the PBUI Project in any capacity (documentation, code, etc.) please feel free to [make an issue on our GitHub]. We have lots of open issues and are interested in working with anyone who is willing to lend a hand!

Our code can also be found on [GitHub page]

### In Recent Zig News...

We are very, very excited to see the release of Zig 0.6.0! We've made sure that all our tools were updated to support the new release. Zig 0.6.0 adds a ton of new functionality to the language and we look forward to the future of the language! Read more on the [Ziglang blogpost about it].

The PBUI Project has also made an effort to update the [Homebrew version] of Zig so macOS users can get the latest update!


### More...

If you're interested in installing the PBUI-Project, it's as simple as [installing Zig] on your machine and then running `zig build` in the root directory of the repository. Below is a video demonstrating how to build and use the PBUI Project!

Note: word of warning about installing Zig from your package manager: since Zig is still early in development, things are changing a lot and you cannot always rely on your package manager to get you the latest updates. It's much easier to just download the pre-compiled binaries and run those!

Here's a quick little video getting you up and running with the PBUI Project

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/1MsWjSOSIfM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

[PBUI Project]: https://github.com/pbui-project/pbui-main
[GitHub page]: https://github.com/pbui-project/pbui-main
[GNU Coreutils]: https://www.gnu.org/software/coreutils/coreutils.html
[Zig]: https://ziglang.org
[make an issue on our GitHub]: https://github.com/pbui-project/pbui-main/issues
[Ziglang blogpost about it]: https://ziglang.org/download/0.6.0/release-notes.html
[Homebrew version]: https://github.com/Homebrew/homebrew-core/pull/53161
[Sam]: https://github.com/sambattalio
[this get_line function]: https://github.com/pbui-project/pbui-main/blob/master/src/uniq.zig#L52
[installing Zig]: https://ziglang.org/download/
