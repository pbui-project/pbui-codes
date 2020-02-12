A short introduction to the PBUI project.
# Introduction to the PBUI Project

By elopez7

----

### What is the PBUI project?

The PBUI (POSIX-compliant BSD/Linux Userland Implementation) project is a a free and open source project intended 
to implement some standard library toolsets in the Zig programming language. We will also implement some basic applets 
and a shell to demonstrate usage of the toolsets as well as provide functionality. 

Another goal of the PBUI project is to help improve documentation for Zig through our blog posts, some of which
will take the form of tutorials that explain how to use both our toolsets and other Zig functions when creating 
applets. By doing this, we hope to make Zig more user friendly and encourage others to create Zig-based applications.

#### Design Choices

Our overall design for this project is to create a shell in Zig, which will allow the user to use the applets that we
created. These applets will in turn depend on functions from our standard library, linking all parts of our project.

### Why PBUI project?

Why did we choose Zig to create our toolsets/userland? Firstly, we set out to create a userland in Go, however we soon
found out this already existed. After doing some more research, we found that userlands already existed in other languages
that we were interested in. When we discovered Zig during our research, we decided to expand the scope of our project, and
help contribute to a young language. Instead of just creating a userland like Busybox or Toybox, we decided to create some
standard library functions that could be reused by others when creating Zig programs, and to use applets to demonstrate the
functionality of our toolset. 

----

-- elopez7
