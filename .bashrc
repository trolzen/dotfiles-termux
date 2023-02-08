# skip if sourced from the system ../etc/profile
# because bash startup files in termux are broken
[ "`caller | cut -d ' ' -f2-`" = "/data/data/com.termux/files/usr/etc/profile" ] && return

alias ll='ls -gGh --time-style=long-iso'
alias la='ls -A'
alias lla='ls -AgGh --time-style=long-iso'
alias l='ls -CF'
alias e=micro

export EDITOR=micro
PS1='\[\033[01;33m\]\w\[\033[00m\]$ '
PS0='\[\033[32m\][\t]\[\033[m\]\n'
PROMPT_DIRTRIM=2
PROMPT_COMMAND='history -a'
HISTSIZE=2000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

shopt -s autocd cdable_vars cdspell checkjobs histappend
shopt -s nocaseglob nullglob
# shopt -s globstar # ** -> subdirs

function mkcd() {
  mkdir -p "$1" && cd "$1"
}

#__git_complete conf __git_main
