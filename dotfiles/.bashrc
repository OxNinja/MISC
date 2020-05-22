#    ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
#    ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
#    ██████╔╝███████║███████╗███████║██████╔╝██║     
#    ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     
# ██╗██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
# ╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='\[$(tput sgr0)\]\u \[\033[38;5;33m\]\W\[$(tput sgr0)\] -> '

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# pywal
(cat ~/.cache/wal/sequences &)

# kitty
source <(kitty + complete setup bash)
