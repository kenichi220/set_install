#!/bin/bash
# INSTALL KITTY
# INSTALL R
# INSTALL ZSH
# INSTALL ZSH THEME
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
