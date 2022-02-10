#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#shapes and colors
alias ls='ls --colo=auto'
PS1="\e[1;33m\t \W 
>\e[0;37m"

#navigation
alias ..='cd ../'
alias .='ls ./'
alias ...='cd ../../'


#nvim shannannigans
nvim_cd()
{
    if [ -d "${1}" ]; then
        local dir="${1}"
        shift 1
        ( cd "${dir}" && nvim "${@}" )
    else
        \nvim "${@}"
    fi
}
alias nvim=nvim_cd
alias vim=nvim

# git for my dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#paths and trails
export PATH=$HOME/.local/bin:$PATH
ZDOTDIR="$HOME/.config/zsh"

