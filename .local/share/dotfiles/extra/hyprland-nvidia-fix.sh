#!/bin/sh

CURDIR="$(dirname "$0")"
. "${CURDIR}/../helpers/root_guard.sh"
root_guard

echo "options nvidia NVreg_PreserveVideoMemoryAllocations=1 NVreg_TemporaryFilePath=/path/to/tmp-nvidia" > /etc/modprobe.d/nvidia-power-management.conf

#install -m 755 "${CURDIR}/../files/scripts/suspend-hyprland" /usr/local/bin
#install -m 644 "${CURDIR}/../files/services/hyprland-suspend.service" /usr/lib/systemd/system
#install -m 644 "${CURDIR}/../files/services/hyprland-resume.service" /usr/lib/systemd/system
#
#systemctl daemon-reload
#systemctl enable hyprland-suspend.service
#systemctl enable hyprland-resume.service
systemctl enable nvidia-suspend
systemctl enable nvidia-hibernate
