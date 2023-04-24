#!/bin/bash
current_dir="$1"
if [ "$current_dir" == "" ]; then
    current_dir="$(pwd)"
fi
cd ${current_dir}

# Display MakefielGCC
cat ${current_dir}/MakeFileGCC

# Make the artifacts
make static OS=`uname -s` -f ${current_dir}/MakefileGCC

