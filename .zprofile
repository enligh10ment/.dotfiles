alias ls='ls -l'
alias ll='ls -lahrt'
alias h='history'
alias p='ps aux'
alias scp='scp -C'
alias sudo='command sudo '
alias g='git'
alias less='less -R'
alias pg='pgrep -fli'
alias weather='curl wttr.in/Chicago'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Because zsh doesn't have a 'help' that outputs builtin  commands like in bash E.g. help test, help read, help readonly etc. It will help you to unalias run-help from man and alias to help to run-help. Life is way easier with this alias.
unalias run-help 2>/dev/null
autoload run-help
HELPDIR=/path/to/zsh_help_directory
alias help=run-help


#dash aliases
# to get rid of the chdir error(UTF)
export LC_ALL=C 
# java set up
JAVA_HOME=/usr/java/java-8-oracle
JRE_HOME=/usr/java/java-8-oracle/jre
# directory highlight that appears as non-human readable in the tree.
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
