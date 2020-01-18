# coarrays-docker

This one is mostly for macOS users who want to run OpenCoarrays based code.

Building OpenCoarrays on macOS can be quite challenging - [Building OpenCoarrays on macOS – everything from the sources](http://www.owsiak.org/building-opencoarrays-on-macos-everything-from-the-sources). If all you want to do is to play a little bit with coarrays in Fortran (inside macOS) all you have to do, is to clone this repo and run Docker based container.

# Building container

```
> git clone https://github.com/mkowsiak/coarrays-docker.git
> cd coarrays-docker
> docker build -t coarrays .
```

# Starting container

Starting the container is quite simple, all you have to do is to run

```
> docker run -i -t -v ~/your_fortran_code:/home/fortcoder/code coarrays
```

once inside, you are "logged in" as user `fortcoder` and you can access two directories

```
.
|-- code       - here you can find external 
|                source that you have linked to container
`-- sample     - here are sample codes that are part
                 of the container (e.g.: hello.f90)
```

# Running sample code

You can run simple sample code that is part of the container by calling

```
> cd sample
> caf -o hello hello.f90
> cafrun -np -2 ./hello
Hello world from            1 of           2
Hello world from            2 of           2
```

# Known limitations

Note that this container should be used only for research purposes. If you want to use OpenCoarrays on your macOS, you should definitelly think about building native installation of GCC, MPICH/OpenMPI, and OpenCoarrays. You can find steps here: [Building OpenCoarrays on macOS – everything from the sources](http://www.owsiak.org/building-opencoarrays-on-macos-everything-from-the-sources)

