# .bashrc
DOTNET_CLI_TELEMETRY_OPTOUT=1
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups

# append history entries..
shopt -s histappend

# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

function ag_search_c() {
	ag $1 . --ignore COBS --stats
}


# User specific aliases and functions
alias grepc='grep -rn --include "*.c" --include "*.h"'
alias grepj='grep -rn --include "*.java"'
alias agc=ag_search_c
alias handset_manager='java -jar /home/jbangsholt/hmt/target/handsetmanagementtool-18D-jar-with-dependencies.jar'
alias add-link='sh add-link.sh'
alias handset_flashloader='/home/jbangsholt/handset_flashloader/handset_flashloader'
alias dec-to-hex='printf "%x\n"'
alias hex-to-dec='printf "%d\n"'
alias git-visual='git log --graph --decorate --oneline'
export PATH=$PATH:/opt/gitkraken:/home/jbangsholt/.cargo/bin

# Unfuck the mess of SVN commit prompts
export SVN_EDITOR=vim

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
