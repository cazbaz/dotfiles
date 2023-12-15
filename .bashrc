#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vi="nvim"
alias vic="vi ~/.config/nvim/init.vim"
alias la="ll -aG"

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/Tools/podman
