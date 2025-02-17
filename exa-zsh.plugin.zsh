# Project:  exa-zsh
# File:     exa-zsh-plugin.zsh
# Author:   Mohamed Elashri
# Email:    muhammadelashri@gmail.com


if ! (( $+commands[exa] )); then
  print "zsh-exa-plugin: exa not found on path. Please install exa before using this plugin." >&2
  return 1
fi

# general use aliases 
alias ls='exa' # just replace ls by exa and allow all other exa arguments
alias l='ls -lbF' #   list, size, type
alias ll='ls -la' # long, all
alias llm='ll --sort=modified' # list, long, sort by modification date
alias la='ls -lbhHigUmuSa' # all list
alias lx='ls -lbhHigUmuSa@' # all list and extended
alias tree='exa --tree'0 # tree view
alias lS='exa -1' # one column by just names
