#!/bin/sh

CURDIR="$(dirname "$0")"
. "${CURDIR}/helpers/root_guard.sh"
root_guard

# Refresh package database
pacman -Sy

# Uninstall unused software
pacman -Rc - < "${CURDIR}/pkglist-remove"

# Install required packages
pacman -S --needed - < "${CURDIR}/pkglist-add"

"${CURDIR}"/core/install-rust.sh
"${CURDIR}"/core/install-paru.sh

# Install AUR packages
paru -S --needed < "${CURDIR}/pkglistaur-add"

"${CURDIR}"/core/setup-default-apps.sh
"${CURDIR}"/core/setup-sddm.sh

systemctl enable --now sddm
