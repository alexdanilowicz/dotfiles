# This file is sourced by bash in every login shell.  After editing
# this file, type `source .bash_profile' in any shell which is already
# open and in which you want the changes to take effect.  For more
# info type `man bash'.

# Alex Danilowicz
# Last modified Nov. 9th 2018
# Remember to source

# --------------------------------------------------------------------

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export GOPATH=${HOME}/work
export GOVERSION=$(brew list go | head -n 1 | cut -d '/' -f 6)
export GOROOT=$(brew --prefix)/Cellar/go/${GOVERSION}/libexec
export PATH=${GOPATH}/bin:$PATH
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias work='cd ~/Desktop/projects'
alias personal='cd ~/Desktop/projects'
alias haul='cat ~/haul.txt | nms -a -c'
alias stop-mongo='/opt/mongo/release/bin/mongo admin --eval "db.shutdownServer()"'
alias phantomjs="/Users/AlexDanilowicz/node_modules/phantomjs/lib/phantom/bin/phantomjs"


function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

macdown() {
    "$(mdfind kMDItemCFBundleIdentifier=com.uranusjr.macdown | head -n1)/Contents/SharedSupport/bin/macdown" $@
}


function textTeddyInfinite () {
	while true
	do
		osascript -e 'tell application "Messages" to send "'"$1"'" to buddy "Teddy Ni"' | /dev/null
	done
}

function textIsabelInfinite () {
    while true
    do
        osascript -e 'tell application "Messages" to send "'"$1"'" to buddy "isabel tubao"' | /dev/null
    done
}


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

cat ~/welcome.txt
