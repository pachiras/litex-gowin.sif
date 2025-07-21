Gowin + LiteX FPGA Toolchain
============================

Prerequisite
--------------

Bind the GOWIN installation directory with `/opt/gowin` in the container.
You can specify the GOWIN directory in the `Makefile`.

Example
-------

### Building sif

```shell
$ make
```

### Running

```shell
$ make shell
Apptainer> openFPGAloader --detect
```

