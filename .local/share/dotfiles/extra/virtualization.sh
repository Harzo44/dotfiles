#!/bin/sh

CURDIR="$(dirname "$0")"
. "${CURDIR}/../helpers/root_guard.sh"
root_guard

pacman -S --needed virt-manager qemu-base
systemctl enable --now libvirtd
