#!/bin/bash
#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
cd ./vendor/twrp/config/
sed -i '/^ifeq/,$d' BoardConfigTWRP.mk
cd ~-

cd ./bootable/recovery/
sed -i '2628 s/sys\/class\/android_usb\/android0\/idVendor/config\/usb_gadget\/g1\/idVendor/g
        2629 s/sys\/class\/android_usb\/android0\/idProduct/config\/usb_gadget\/g1\/idProduct/g
        2684 s/sys\/class\/android_usb\/android0\/idVendor/config\/usb_gadget\/g1\/idVendor/g
        2685 s/sys\/class\/android_usb\/android0\/idProduct/config\/usb_gadget\/g1\/idProduct/g' partitionmanager.cpp
cd ~-

cd ./bootable/recovery/gui/theme/common/languages
sed -i '119 s/Перезагрузка/Rebooting/g' ru.xml
cd ~-
