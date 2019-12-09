#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# My Custom Aliases 
alias ls='ls --color=auto'
alias ll='ls -alt --color=auto'
alias b='cd ..'

alias vim='nvim'
alias vi='nvim'
alias oldVim='\vim'
alias vimdiff='nvim -d'

alias nowtime='date +"%T"'
alias nowdate='date +"%Y-%m-%d"'
alias ping='ping -c 3'

alias mkdir='mkdir -pv'

alias ga='git add'
alias gaa='git add --all'
alias gaf='git add -f'
alias gb='git branch'
alias gc='git commit -v'
alias gcm='git checkout master'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gd='git difftool'
alias gf='git fetch'
alias gfo='git fetch origin'
alias ggpull='git pull origin $(git_current_branch)'
alias ggpush='git push origin $(git_current_branch)'
alias gl='git pull'
alias glg='git log --stat'
alias gm='git merge'
alias gmt='git mergetool --no-prompt'
alias grbi='git rebase -i'
alias gst='git status'
alias gsta='git stash save'
alias gstaa='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'

# powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh

# thef*ck 
eval $(thefuck --alias)
