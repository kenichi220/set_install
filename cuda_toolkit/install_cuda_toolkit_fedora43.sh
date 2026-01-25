#!/bin/bash

sudo dnf -y install g++ gcc

echo "Addrepo Nvidia toolkit"

sudo dnf config-manager addrepo --from-repofile https://developer.download.nvidia.com/compute/cuda/repos/fedora42/x86_64/cuda-fedora42.repo
sudo dnf clean all
sudo dnf -y install cuda-toolkit

echo "Install gclib path"

sudo dnf copr enable sunnyyang/cuda-glibc-patch
sudo dnf install cuda-glibc-patch
