# Created by newuser for 5.0.7
archey3

source ~/.config/keys.sh
export NODE_ENV=development

export PATH

export EDITOR='vim'
export BROWSER='google-chrome-stable'
export KEYTIMEOUT=1


alias gca='git commit -a'
alias nca='sudo netctl-auto'
alias plz='sudo'
alias rr='ranger'
alias sx='startx'

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

#regenerate with antigen bundle < .antigen_bundles > .zsh_plugins.sh
source .zsh_plugins.sh

# OPAM configuration
. /home/austin/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
