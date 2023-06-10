#!/bin/sh

CURDIR="$(dirname "$0")"
. "${CURDIR}/../helpers/root_guard.sh"

cp /usr/bin/grimblast ~/.local/bin/
patch -u ~/.local/bin/grimblast -i "${CURDIR}/../files/patches/grimblast-hide-cursor.patch"
