#!/bin/bash

sudo dnf update -y
BASEDIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# gcc, g++, make, git
echo "----------------------"
echo "---gcc,g++,make,git---"
echo "----------------------"
sudo dnf install -y gcc gcc-c++ make git

# INSTALL KITTY
KITTY_SCRIPT="$BASEDIR/kitty/install_kitty.sh"

# INSTALL R
echo "------------------"
echo "----Install R-----"
echo "------------------"

sudo dnf install -y R libcurl-devel openssl-devel libxml2-devel harfbuzz-devel fribidi-devel

PACK_R="'ggplot2', 'dplyr', 'tidyr', 'readr', 'jsonlite'"

sudo Rscript -e "install.packages(c($PACK_R), repos='https://cloud.r-project.org/', dependencies=TRUE)"

R --version | head -n 1

# INSTALL ZSH
# INSTALL ZSH THEME
# CALL ZSH INSTALL
ZSH_SCRIPT="$BASEDIR/zsh/install_zsh.sh"
if [ -f "$ZSH_SCRIPT" ]; then
    bash "$ZSH_SCRIPT"
else
    echo "WARNING --> $ZSH_SCRIPT --> NOT FOUND"
fi

FONTS_SCRIPT="$BASEDIR/zsh/install_fonts.sh"
if [ -f "$FONTS_SCRIPT" ]; then
	bash "$FONTS_SCRIPT"
else
	echo "WARNING --> $FONTS_SCRIPT --> NOT FOUND"
fi

# INSTALL NVIM
# CONFIG NVIM
NVIM_SCRIPT="$BASEDIR/"

# INSTALL CUDA TOOLKIT
CUDA_SCRIPT="$BASEDIR/cuda_toolkit/install_cuda_toolkit_fedora43.sh"

# INSTALL NIX
#
