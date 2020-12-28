#!/usr/bin/env bash
# Note: this file needs to be run in a unix-like environment. If you're on
# Windows, you can use MSYS, Cygwin or WSL.

# Building from the cloned repo won't work because the assets/minecraft/sounds
# folder is missing. You can copy it from one of the releases.

pack_name=mat_zen
engine_version=`grep -oP "\"engineversion.*?\K[1-9]+" assets/matmos/mat_pack.json`
pack_version=`grep -oP "\"version.*?\K[1-9\.]+" assets/matmos/mat_pack.json`

zip -qFSr $pack_name-$engine_version-$pack_version.zip . -x ".*" -x "*.zip" -x "*.sh"