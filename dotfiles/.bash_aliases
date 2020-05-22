#  █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝
# ███████║██║     ██║███████║███████╗█████╗  ███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║
# ██║  ██║███████╗██║██║  ██║███████║███████╗███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝

# Functions

function extract(){

	if [ -f $1 ]; then
		case $1 in
			*.tar.bz2) tar xjf $1 ;;
			*.tar.gz) tar xzf $1 ;;
			*.bz2) bunzip2 $1 ;;
			*.rar) unrar x $1 ;;
			*.gz) gunzip $1 ;;
			*.tar) tar xf $1 ;;
			*.tbz2) tar xjf $1 ;;
			*.tgz) tar xzf $1 ;;
			*.zip) unzip $1 ;;
			*.Z) uncompress $1 ;;
			*.7z) 7z x $1 ;;
			*) echo "'$1' cannot be extracted" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi

}

function mkcd() {
	mkdir -p $1
	cd $1
}

# Aliases

# MISC
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias grep='grep --color=auto'
alias fuck='sudo $(history -p !!)'
alias reload='source ~/.bashrc'
alias vim='nvim'
alias py_wal='wal -i ~/Pictures/wallpapers/'
alias makeit='makepkg -isc'
# Docker
alias docker='sudo docker'
alias sqlmap='docker run --rm -it -v /tmp/sqlmap:/root/.sqlmap/ paoloo/sqlmap'
alias wpscan='docker run --rm -it wpscanteam/wpscan'
alias nikto='docker run --rm -it frapsoft/nikto'
