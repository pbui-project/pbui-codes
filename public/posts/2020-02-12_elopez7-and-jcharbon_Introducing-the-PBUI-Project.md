An amended version of the introduction to the PBUI project.
# Introduction to the PBUI Project 

By elopez7 and jcharbon

----

This blog post is an updated version of the introduction of our project, the PBUI project. Our project adviser recommended
that we update the brief intro we had previously given, so that is precisely what is below!

### What is the PBUI project?

The PBUI (POSIX-compliant BSD/Linux Userland Implementation) project is a a free and open source project intended
to implement some standard library toolsets in the Zig programming language. We will also implement some basic applets
to demonstrate usage of the toolsets as well as provide functionality. The vision of our project is to create a "simple"
project for people to experience and understand zig as well as provide useful library functions that can be used or modified to help
in future projects. Since there is a very limited amount of exposure to Zig, we wanted to do soemthing to help! Our project is
inspired by Busybox (and other userlands), as well as coreutils and libc. PBUI will be written entirely in Zig, and will focus on
utilities we find useful.

Because of this, another goal of the PBUI project is to help improve documentation for Zig through our blog posts, some of which
will take the form of tutorials that explain how to use both our toolsets and other Zig functions when creating applets.
By doing this, we hope to make Zig more user friendly and encourage others to create Zig-based applications. These will
come down the road - our primary work to begin will be developing our applets and functions. We too are learning Zig as we go, thus
much of our work will be done when we realize we need to do it!

#### Design Choices

Our overall design for this project is to create a main executable in Zig that will allow the user to use the applets that we
created. These applets will in turn depend on functions from our standard library, linking all parts of our project. We are choosing
for our project to build this way because it allows for our applets to be standalone, but also callable from our main function.
Instead of requiring users to use a PBUI shell, we are enabling people to use and expereiment with our applets and functions

in their own environments. Our code is being designed and tested on linux machines, so we are only guaranteeing our project
to work on linux, however our use of core Ziglang should theoretically work on each Mac, Windows, and Linux.

As far as what to expect from the end of this project, our Minimum Viable Product will consist of applets (we are promising
15), our main executable, and library functions (we are promising 2 core utilities). Our MVP will also include blog
posts to this website to enhance Zig documentation.

If this project gains traction and enough progress is made, we have a few arpirational goals. Since Zig is so new, a future goal
might be to have our work pushed or recognized upstream to help with the language itself's development. We also have an
aspirational goal of our applets having a performance on par or suprpassing that of GNU utils, to demontrate the potential
of Zig! Again, these goals are aspirational, but we want to keep them in the very back of our minds as we dev!

### Why PBUI project?

Why did we choose Zig to create our toolsets/userland? Firstly, we set out to create a userland in Go, however we soon
found out this already existed. After doing some more research, we found that userlands already existed in other languages
that we were interested in. When we discovered Zig during our research, we decided to expand the scope of our project, and
help contribute to a young language. Instead of just creating a userland like Busybox or Toybox, we decided to create some
standard library functions that could be reused by others when creating Zig programs, and to use applets to demonstrate the
functionality of our toolset.

It should additionally be noted that this project was created as a part of the University of Notre Dame Course CSE 40677 - Open
Source Software Development. The course covers starting and developing an open source based project, but we hope to continue this
project much further beyond the purpose of the class.

Here is a link to the course website for full transparency: https://www3.nd.edu/~pbui/teaching/cse.40677.sp20/

### Where do I fit in?

PBUI is an Open Source Project, meaning you too can help us with development! Just a couple short months ago, we didn't know
anything about Ziglang. If you feel lost because you don't know anything about Zig, fear not! We were once in your shoes, and
know you can learn too! Here are few helpful links that can get you started towards contribution:

Our IRC chat channel: https://kiwiirc.com/nextclient/chat.freenode.org/#pbui
Our github repo: https://github.com/pbui-project

Our repo is a very big WIP, so our CONTRIBUTING.md is still unfinished. If you wish to contribute, feel free to contact
us directly! At the very least, feel free to take a look and see if you spot that anything looks off. We are also open
to criticism :)

Thank you for reading! Stay tuned for further updates!

----
