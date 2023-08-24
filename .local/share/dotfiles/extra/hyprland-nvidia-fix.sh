#!/bin/sh

CURDIR="$(dirname "$0")"
. "${CURDIR}/../helpers/root_guard.sh"
root_guard

echo "options nvidia NVreg_PreserveVideoMemoryAllocations=1 NVreg_TemporaryFilePath=/path/to/tmp-nvidia" > /etc/modprobe.d/nvidia-power-management.conf

systemctl enable nvidia-suspend
systemctl enable nvidia-hibernate
