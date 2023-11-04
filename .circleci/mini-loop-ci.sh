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

cd platform-shared-tools 
git branch 
sudo ./packages/installer/mini-loop/mini-loop-k8s.sh -m install -k k3s -v 1.27
source ~/.bashrc
export KUBECONFIG=$HOME/k3s.yaml
./packages/installer/mini-loop/mini-loop-vnext.sh -m install_ml 

