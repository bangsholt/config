# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias grepc='grep -rn --include "*.c" --include "*.h"'
alias grepj='grep -rn --include "*.java"'
alias handset_manager='java -jar /home/jbangsholt/handset_management_tool_no_changes/trunk/Spectralink_Handset_Management_Tool.jar'
alias add-link='sh add-link.sh'
