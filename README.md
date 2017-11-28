# HEASoft container

HEASoft, https://heasarc.gsfc.nasa.gov/lheasoft, is a package for High Energy Astrophysics data analysis.

HEASoft is a complex package and the its setup may be difficult for some users.
This container provides the HEASoft package as a solution for *easy-of-use* and portability for HEASoft.

Briefly, Docker allows a package to run in any platform (Linux and Windows and Mac, for instance) seamlessly.
Like done here with Heasoft, the package is pre-install in what is called a container.
The idea is that all we have to do is to download and run the container to have Heasoft, for instance,
ready to use.
To know more about containers, in particular Docker, see https://www.docker.com/what-docker


## How to use it

To use this *ready-to-run* heasoft setup we just need Docker installed.
Look [#Install-Docker] for instructions about your platform.

There are two ways to use the Heasoft from this container: from inside the container or 
direct from the host system command-line. See the sections below for details.


### How to use the container seamlessly

When we run `install.sh` the interface to Heasoft tools is created.
This interface operates over the container seamlessly, so we can use all the tools
provided by the container straight from our command-line, without noticing docker.

Once we run `install` it will give us a message about the location of this interface,
```
$ ./install.sh

# Run the following line to make docker-heasoft binaries available on your environment:
#----------
export PATH="/home/chbrandt/docker-heasoft/bin/links:$PATH"
#----------
```
Use *export* to allow the use of this interface from anywhere in your system

You may now use `nh`, `ximage`, `xrtpipeline` and any other tool Heasoft provides


## How to run the container explicitly

We may as well access the container explicitly:
```
# docker run chbrandt/heasoft
```
This command returns a shell from inside the container, from here we have access to all heasoft tools.
You may try `fhelp` for the manual, for example.
Now...most probably we'll want to analysis some data files in hand, since containers run in a closed box inside 
our system we have to explicit provide them the directories we want to access from inside.

**Side note:**
*I like to use the option `--rm` when running docker, it automatically removes the container when I exit the shell*
```
# docker run --rm chbrandt/heasoft
```

Let's consider our data is inside the directory `/home/user/data`.
To share the data directory with the container we do:
```
# docker run -v /home/user/data:/host_data chbrandt/heasoft
```
Now we'll be inside the container with access to user's `data/` directory. Data can now be access and analyzed
using the heasoft tools.


## Install Docker
Follow the links below to setup your docker environment; we see each other soon back here...

* [Windows](https://www.docker.com/docker-windows)
* [MacOS](https://www.docker.com/docker-mac)
* Linux: 
  * [Ubuntu](https://www.docker.com/docker-ubuntu)
  * [CentOS](https://www.docker.com/docker-centos-distribution)
 
all options available: https://store.docker.com/
