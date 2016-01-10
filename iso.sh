#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/wookie.kernel isodir/boot/wookie.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "wookie" {
	multiboot /boot/wookie.kernel
}
EOF
grub-mkrescue -o wookie.iso isodir
