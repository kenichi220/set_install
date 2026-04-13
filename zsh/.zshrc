export ZSH="$HOME/.oh-my-zsh"

# CUDA Paths
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

#ZSH_THEME="robbyrussell"
alias ll="ls -lha"
alias cl="clear"
alias em="emacs"
alias .="source"
alias ls="ls -lha"
alias update-grub='sudo grub2-mkconfig -o /boot/grub2/grub.cfg'
alias bat="batcat"
alias nv="nvim"
alias pw="poweroff"
export TERM="xterm-256color"

#ZSH_THEME="agnoster"
#ZSH_THEME="bira"
ZSH_THEME="ultima"
rsyncdownload() {
    rsync  --delete --verbose --progress --recursive "kbrumati@gppd-hpc.inf.ufrgs.br:~/${1}/" "./${1}/"
}                                                                                        

rsyncupload() {
    rsync --verbose --progress --recursive "./${1}" "kbrumati@gppd-hpc.inf.ufrgs.br:~/"
 }      

#plugins

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi
