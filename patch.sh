#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/av'
    'frameworks/base'
    'frameworks/native'
    'frameworks/net/wifi'
    'frameworks/opt/telephony'
    'packages/apps/Camera2'
    'system/sepolicy'
 )

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
