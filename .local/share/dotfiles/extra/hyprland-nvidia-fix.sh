#!/bin/sh

CURDIR="$(dirname "$0")"
. "${CURDIR}/../helpers/root_guard.sh"
root_guard

echo "options nvidia NVreg_PreserveVideoMemoryAllocations=1 NVreg_TemporaryFilePath=/path/to/tmp-nvidia" > /etc/modprobe.d/nvidia-power-management.conf

install -m 644 "${CURDIR}/../files/hooks/nvidia.hook" /etc/pacman.d/hooks/nvidia.hook

systemctl enable nvidia-suspend
systemctl enable nvidia-hibernate
