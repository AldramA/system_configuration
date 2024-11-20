# The following lines were added by compinstall
zstyle :compinstall filename '/home/mu/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# Miscellaneous configurations
# doas loadkeys ~/.config/loadkeys/loadkeysrc
if [[ "$(tty)" == "/dev/tty1" ]]; then
    startx
fi

export BROWSER="firefox"
export TERMINAL="st"
export TERM="st"
bindkey -e

###########
# Aliases #
###########
## Basic Aliases
alias nv='nvim'
alias vi='vim'

## xbps
alias i='doas xbps-install -S'
alias u='i; doas xbps-install -u xbps ; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R; doas xbps-remove -o'

## Directory Navigation
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."

## Disk Usage
alias du1="du -d 1"

## Git Commands
alias gs="git status"
alias gst="git status -sb"
alias gl="git log"
alias ga="git add"
alias gaa="git add -A"
alias gal="git add ."
alias gca="git commit -a"
alias gc="git commit -m"
alias gcot="git checkout"
alias go="git push -u origin"
alias gsh='git stash'
alias gw='git whatchanged'
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias nah="git clean -df && git checkout -- ."

## History Commands
alias h="history"
alias h1="history 10"
alias h2="history 20"
alias h3="history 30"
alias hgrep='history | grep'

## List Commands
alias l='ls -a --color=auto'
alias ll='ls -Flha --color=auto --group-directories-first'

## Ping Commands
alias pg="ping google.com -c 5"
alias pf="ping facebook.com -c 5"
alias ping="ping -c 5"
alias fastping="ping -c 100 -s.2"

## Confirmation Aliases
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -I --preserve-root'

## Permission Commands
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'


## System State Commands
alias reboot="doas /sbin/reboot"
alias poweroff="doas /sbin/poweroff"
alias halt="doas /sbin/halt"
alias shutdown="doas /sbin/shutdown"
alias flighton='doas rfkill block all'
alias flightoff='doas rfkill unblock all'
alias snr='doas service network-manager restart'

## Show Open Ports
alias ports='doas netstat -tulanp'

# Vi mode
set -o vi

# Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# PATH Configuration
export PATH=$HOME/bin:/usr/local/bin:/snap/bin:/opt/bin:$PATH

# Powerlevel10k and Zsh Plugins
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
