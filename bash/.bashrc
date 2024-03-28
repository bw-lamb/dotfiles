# Use my scripts
PATH=$PATH:~/script

# zettelkasten path. This will probably be useful.
SECOND_BRAIN="$HOME/second-brain/"

# I don't like typing 'nvim'
alias v='nvim'
# Go to notes easily
alias z='cd $SECOND_BRAIN'

# Gets the name of the current branch
# If we aren't in a branch, nothing is returned, and an error shows up, which is just sent to null.
function get_git_branch() {
	CUR_BRANCH=$(git branch --show-current 2>/dev/null)
	
	git diff &>/dev/null
	diff=$?

	if [[ -n $CUR_BRANCH ]]; then
		if [[ -n $diff ]]; then
			CUR_BRANCH="($CUR_BRANCH \e[0;31m*\e[0m)"
		else
			CUR_BRANCH="($CUR_BRANCH)"
		fi
	else
		CUR_BRANCH=""
	fi
}

# Updates $PS1 before printing it
update_ps1() {
	get_git_branch
	PS1="\w \033[1m$CUR_BRANCH\033[0m\n\u@\h $ "
}

CURBRANCH="This shouldnt be printed"
precmd_functions+=(update_ps1)

# This doesn't really matter? it gets updated by update_ps1
PS1="\w $CUR_BRANCH\n\u@\h $ "
. "$HOME/.cargo/env"
