#!/bin/bash

sudo dnf install kitty

cd $HOME/.config/kitty
touch kitty.conf

mv $HOME/set_install/kitty/kitty.conf $HOME/.config/kitty
