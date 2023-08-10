#!/usr/bin/env bash

termux_boot_scripts_path="$HOME/.termux/boot"
[ -d "$termux_boot_scripts_path" ] || mkdir $termux_boot_scripts_path -p
termux_config_path="$HOME/.config"
[ -d "$termux_config_path" ] || mkdir $termux_config_path -p
termux_init_services_path="$HOME/.termux_init/services"
[ -d "$termux_init_services_path" ] || mkdir $termux_init_services_path -p

for i in $(find termux_boot -type f); do
    cp $i $termux_boot_scripts_path
    chmod +x $termux_boot_scripts_path/$(basename $i)
done

for i in $(find config -type f); do
    cp $i $termux_config_path
done

for i in $(find services -type f); do
    cp $i $termux_init_services_path
done