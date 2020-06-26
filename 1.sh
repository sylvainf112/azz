#!/bin/bash
cd /
cd opt
sudo su
sudo apt-get update && apt-get upgrade -y
sudo apt autoremove -y
CUDA_REPO_PKG=cuda-repo-ubuntu1804_10.2.89-1_amd64.deb
wget -O /tmp/${CUDA_REPO_PKG} http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/${CUDA_REPO_PKG}
sudo dpkg -i /tmp/${CUDA_REPO_PKG}
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
rm -f /tmp/${CUDA_REPO_PKG}
sudo apt-get update -y
sudo apt-get install cuda -y
wget https://github.com/trexminer/T-Rex/releases/download/0.15.8/t-rex-0.15.8-linux-cuda10.0.tar.gz
tar -xzf t-rex-0.15.8-linux-cuda10.0.tar.gz
./t-rex -a kawpow -o stratum-ravencoin.flypool.org:13333 -u RPTvtkY6DgMqCW9WXHQVeRZh4pxq36Cn4U.u -p x
