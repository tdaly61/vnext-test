#!/usr/bin/env bash

echo "who am i" 
who am i 

my_id=`id`
echo "my id is $my_id"

echo "make the vnext directory"
mkdir vnext 
cd vnext 
pwd 

echo "clone platform-shared-tools "
git clone --branch k8s_working_br https://github.com/mojaloop/platform-shared-tools.git

ls 

sudo ./platform-shared-tools/packages/installer/mini-loop/mini-loop-k8s.sh -m install