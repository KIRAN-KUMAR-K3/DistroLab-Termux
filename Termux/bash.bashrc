# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth
termux-wake-lock

# Default command line prompt.
PROMPT_DIRTRIM=2
# Test if PS1 is set to the upstream default value, and if so overwrite it with our default.
# This allows users to override $PS1 by passing it to the invocation of bash as an environment variable
clear
user=termux
[[ "$PS1" == '\s-\v\$ ' ]] && PS1="\[\033[1;91m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[1;92m\]\342\234\227\[\033[1;91m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[1;91m\]root\[\033[1;93m\]💀\[\033[1;96m\]$user'; else echo '\[\033[1;91m\]root\[\033[1;93m\]💀\[\033[1;96m\]$user'; fi)\[\033[1;91m\]]\342\224\200[\[\033[1;93m\]\w\[\033[1;91m\]]\n\[\033[1;91m\]\342\224\224\342\224\200\342\224\200\342\225\274=>\[\033[1;97m\] "
# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi

[ -r /data/data/com.termux/files/usr/share/bash-completion/bash_completion ] && . /data/data/com.termux/files/usr/share/bash-completion/bash_completion
neofetch
