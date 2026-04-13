#!/bin/bash

sudo dnf update -y

# gcc, g++, make, git
echo "----------------------"
echo "---gcc,g++,make,git---"
echo "----------------------"
sudo dnf install -y gcc gcc-c++ make git



# INSTALL KITTY
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


# INSTALL NVIM
# CONFIG NVIM




# INSTALL NIX
#

# INSTALL FONTS
fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
	echo "mkdir -p ${fonts_dir}"
	mkdir -p "${fonts_dir}"
else
	echo "Found fonts dir"
fi

cd fonts
cp *.ttf $fonts_dir

echo "FiraCode Nerd Conclued"
