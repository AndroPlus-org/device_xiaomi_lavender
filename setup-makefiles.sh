#!/bin/bash
#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=lavender
export DEVICE_COMMON=sdm660-common
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2019

./../../$VENDOR/$DEVICE_COMMON/setup-makefiles.sh $@
