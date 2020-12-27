#!/usr/bin/env bash

pack_name=mat_zen
engine_version=`grep -oP "\"engineversion.*?\K[1-9]+" assets/matmos/mat_pack.json`
pack_version=`grep -oP "\"version.*?\K[1-9\.]+" assets/matmos/mat_pack.json`

zip -q -r $pack_name-$engine_version-$pack_version.zip . -x ".*" -x "README.md" -x "*.zip"