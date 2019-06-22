This Repository get the FreeSteam code and remove the GUI and python dependencies, so it can be compiled with a simple makefile and easy to link in your application.

It also contains an interface module for usage in Fortran codes

Original project
================

https://sourceforge.net/projects/freesteam/

Dependencies
============  

GSL
---  

```
$ wget ftp://ftp.gnu.org/gnu/gsl/gsl-2.5.tar.gz
$ tar -xvf gsl-2.5.tar.gz
$ cd gsl-2.5
$ ./configure --prefix=/opt/apps/gsl/2.5-gcc-5.4.0 CFLAGS=-fPIC
$ sudo make install
```
Set **GSL** install path to Makefile:
```
PATH_TO_GSL=/opt/apps/gsl/2.5-gcc-5.4.0
```

