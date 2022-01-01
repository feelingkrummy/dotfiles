# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kameron/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# PROMPT="%F{red}[%f%F{yellow}%n%f%F{green}@%M%f %F{blue}%3~]%f %# " 
#RPROMPT='%(?.%F{green}[%?]%f.%B%F{red}[%?]%f%b)'
RPROMPT='%(?..%B%F{red}[%?]%f%b)'
PROMPT=$'\n'"%F{cyan}(%M)%f %F{blue}%~%f"$'\n'" %B%F{yellow}>>%f%b " 

alias ls="ls --color=auto"

alias ll="ls -lh"
alias la="ls -a"
alias lla="ll -a"

alias v="nvim"
alias sue="EDITOR=nvim sudoedit"

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

