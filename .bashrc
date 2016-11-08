# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

function ag_search_c() {
	ag $1 . --ignore COBS --stats
}

# User specific aliases and functions
alias grepc='grep -rn --include "*.c" --include "*.h"'
alias grepj='grep -rn --include "*.java"'
alias agc=ag_search_c
alias handset_manager='java -jar /home/jbangsholt/handset_management_tool_no_changes/trunk/Spectralink_Handset_Management_Tool.jar'
alias add-link='sh add-link.sh'
alias handset_flashloader='/home/jbangsholt/handset_flashloader/handset_flashloader'
