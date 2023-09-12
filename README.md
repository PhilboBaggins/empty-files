# Zero files

This repository contains several files, of various sizes, which are full of zeros.

These files are useful for testing purposes or for zeroing out a disk (e.g on Windows, when you don't have easy access to the `dd` command).

To save disk space, the files are stored in a compressed format. So, when writing them to a disk, you'll need to decompress them first or use a program that automatically decompresses them while writing them to the disk.

The files are named according to their size. For example, the file `zeros-1GB.img.bz2` contains 1 GB of zeros.q

## Building

This repository contains the generated files, so you don't need to build them yourself. However, if you want to build them yourself, you can do so by following the instructions below.

### Building on a Unix like operating system

If you're building on a Unix like operating system with `make`, `dd` and a shell script interpreter (e.g. `bash`) installed, then you can simply run `make` to build all the files.

### Building with Docker or Podman

If you're using an operating systems (like Windows) which doesn't have easy access to the `dd` and the `/dev/zero`, then you may want to build inside a virtual machine or a container.

Example commands for building with Docker are provided below. If you're using [Podman](https://podman.io/) instead of [Docker](https://www.docker.com/), simply substitute `docker` in the commands below for `podman`.

Build the image:

    docker build . --tag zero-files-creator

Build a single file (e.g. `zeros-01GB.img.bz2`):

    docker run --rm -it --mount type=bind,source=.,target=/home/dev zero-files-creator 1M 1024 zeros-01GB.img.bz2

Build all files specified in the Makefile:

    docker run --rm -it --mount type=bind,source=.,target=/home/dev --entrypoint make zero-files-creator
