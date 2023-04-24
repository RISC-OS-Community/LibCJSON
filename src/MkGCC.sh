#!/bin/bash
current_dir="$1"
if [ "$current_dir" == "" ]; then
    current_dir="$(pwd)"
fi
cd ${current_dir}
make static OS=`uname -s` -f ./MakeFileGCC
