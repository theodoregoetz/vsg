#!/bin/bash

HERE="$(realpath "$( dirname -- "${BASH_SOURCE[0]}" )" )"
source ${HERE}/env.sh

for i in
do
    git -C $i remote add upstream git@github.com:vsg-dev/${i}.git
done
