#!/bin/bash
set -x
fastboot oem format
fastboot flash boot_a boot.img
fastboot flash system_a system.img
fastboot flash syshash_a syshash.img
fastboot flash data data.img
