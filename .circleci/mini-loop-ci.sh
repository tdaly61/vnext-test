#!/usr/bin/env bash

echo "who am i" 
who am i 

echo "make the vnext directory"
mkdir vnext 
cd vnext 
pwd 

echo "clone platform-shared-tools "
git clone --branch k8s_working_branch https://github.com/mojaloop/platform-shared-tools.git

ls 
