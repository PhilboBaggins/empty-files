# Zero files

This repository contains several files, of various sizes, which are full of zeros.

These files are useful for testing purposes or for zeroing out a disk (e.g on Windows, when you don't have easy access to the `dd` command).

To save disk space, the files are stored in a compressed format. So, when writing them to a disk, you'll need to decompress them first or use a program that automatically decompresses them while writing them to the disk.

The files are named according to their size. For example, the file `zeros-1GB.img.bz2` contains 1 GB of zeros.q

## Building

This repository contains the generated files, so you don't need to build them yourself. However, if you want to build them yourself, you can do so by following the instructions below.

If you're building on a Unix like operating system with `make`, `dd` and a shell script interpreter (e.g. `bash`) installed, then you can simply run `make` to build all the files.

