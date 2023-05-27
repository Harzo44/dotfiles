#!/bin/sh

CURDIR="$(dirname "$0")"
. "${CURDIR}/../helpers/root_guard.sh"
root_guard

install -m 644 "${CURDIR}/../files/assets/archlinux-logo.png" /usr/share/custom/assets/

