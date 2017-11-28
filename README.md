# HEASoft container

HEASoft, https://heasarc.gsfc.nasa.gov/lheasoft, is a package for High Energy Astrophysics data analysis.

HEASoft is a complex package and the its setup may be difficult for some users.
This container provides the HEASoft package as a solution for *easy-of-use* and portability for HEASoft.

To know more about containers, in particular Docker, see https://www.docker.com/what-docker

## How to run?

The container is run by:
```
# docker run chbrandt/heasoft
```
This command returns a shell from inside the container, from here we have access to all heasoft tools.
You may try `fhelp` for the manual, for example.
Now...most probably we'll want to analysis some data files in hand, since containers run in a closed box inside 
our system we have to explicit provide them the directories we want to access from inside.

**Side note**
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
