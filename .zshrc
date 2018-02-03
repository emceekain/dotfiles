# ~/.zshrc


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/brent/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# My Custom Aliases
alias ll='ls -alt --color=auto'
alias b='cd ..'

# powerline
powerline-daemon -q
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

# thef*ck
eval $(thefuck --alias)
