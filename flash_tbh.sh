#!/bin/bash
set -x
export TBH_SYSFS="/sys/devices/pci0000:00/0000:00:1d.0/0000:04:00.0/0000:05:08.0/0000:07:00.0"

echo 1 | sudo tee $TBH_SYSFS/create_partitions

echo -n "system_a" | sudo tee $TBH_SYSFS/partition
sudo dd if=system.img of=$TBH_SYSFS/image_data

echo -n "boot_a" | sudo tee $TBH_SYSFS/partition
sudo dd if=custom_boot.img of=$TBH_SYSFS/image_data

echo -n "syshash_a" | sudo tee $TBH_SYSFS/partition
sudo dd if=syshash.img of=$TBH_SYSFS/image_data

echo -n "capsule" | sudo tee $TBH_SYSFS/partition
sudo dd if=fip_aid.bin of=$TBH_SYSFS/image_data

echo -n "data" | sudo tee $TBH_SYSFS/partition
sudo dd if=data.img of=$TBH_SYSFS/image_data

echo 1 | sudo tee $TBH_SYSFS/recovery_done
