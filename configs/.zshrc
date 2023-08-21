# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
zstyle :compinstall filename '/home/nova/.zshrc'
autoload -Uz compinit
compinit

alias vi="nvim"

alias pinstall="yay -S"
alias premove="yay -Rnc"
alias psearch="yay -Ss"

alias finstall="flatpak install"
alias fsearch="flatpak search"
alias fremove="flatpak uninstall"

PROMPT='%F{208}%n%f in %F{226}%~%f 
-> '


