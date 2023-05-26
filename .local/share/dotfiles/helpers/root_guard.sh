#!/bin/sh

root_guard() {
    if [ "$(id -u)" -ne "0" ]; then
        echo "Please run as root."
        exit 3
    fi
}
