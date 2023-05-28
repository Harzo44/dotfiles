#!/bin/sh

if command -v paru; then
    echo "Paru already installed, skipping"
    exit 0
fi

git clone https://aur.archlinux.org/paru.git /tmp/paru
CURDIR="$PWD"
trap 'cd $CURDIR' EXIT
cd /tmp/paru
makepkg -si

sed -i 's/^#Color$/Color/' /etc/pacman.conf
sed -i 's/^ParallelDownloads.*/ParallelDownloads = 5/' /etc/pacman.conf
sed -i 's/^#VerbosePkgLists$/VerbosePkgLists/' /etc/pacman.conf
sed -i 's/^#BottomUp$/BottomUp/' /etc/paru.conf
