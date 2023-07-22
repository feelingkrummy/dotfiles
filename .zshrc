# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

bindkey "^[[H"  beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[3~" delete-char

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kameron/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#

setopt completealiases

# PROMPT="%F{red}[%f%F{yellow}%n%f%F{green}@%M%f %F{blue}%3~]%f %# " 
#RPROMPT='%(?.%F{green}[%?]%f.%B%F{red}[%?]%f%b)'
RPROMPT='%(?..%B%F{red}[%?]%f%b)'
# PROMPT=$'\n'"%F{cyan}(%M)%f %F{blue}%~%f"$'\n'" %B%F{yellow}>>%f%b " 
PROMPT="%F{blue}[%n]%f%F{yellow}(%3~)%f %F{red}>%f "

alias ls="ls --color=auto"

alias ll="ls -lh"
alias la="ls -a"
alias lla="ll -a"

alias v="nvim.appimage"
alias sue="sudoedit"

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export QSYS_ROOTDIR="/home/kameron/intelFPGA_lite/22.1std/quartus/sopc_builder/bin"
