# KubeOS

An operating system eventually designed to run on the raspberry pi. This is entirely for educational purposes and most likely useless otherwise.

## Installation

From the command line install the necessary toolchain:

```
sudo apt-get install automake xorriso
```

## Cross Compiler

**Note:** You can skip this section by checking out [kube_tools](https://github.com/tomasbasham/kube_tools).

The first step in undertaking OS development is to build a cross compiler. KubeOS is designed primarily to run on the raspberry pi platform but will also run under the i686 architecture, but the steps required to create either compiler are the same.

To build for the raspberry pi platofrm you must configure a cross compiler for **arm-none-eabi**; alternatively for the i686 architecture you'll need a cross compiler for **i686-elf**. These are both generic target architectures which provide a generic toolchain.

### The Build

You'll need to first setup some environment variables to make life a little easier:

```
export TARGET="arm-none-eabi" // Or i686-elf if building for native x86
export PREFIX="/opt/kube_tools/$TARGET"
export PATH="$PREFIX/bin:$PATH"
```

## Reference

* [Bare Bones](http://wiki.osdev.org/Bare_Bones)
* [Raspberry Pi Bare Bones](http://wiki.osdev.org/Raspberry_Pi_Bare_Bones)
* [Cross Compiler Successful Builds](http://wiki.osdev.org/Cross-Compiler_Successful_Builds)
