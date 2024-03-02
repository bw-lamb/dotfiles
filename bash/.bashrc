# Use my scripts
PATH=$PATH:~/script

# I don't like typing 'nvim'
alias v='nvim'

# Gets the name of the current branch
# If we aren't in a branch, nothing is returned, and an error shows up, which is just sent to null.
function get_git_branch() {
	branch=$(git branch --show-current 2>/dev/null)
	
	if [[ -n $branch ]]; then
		branch="($branch) "
	else
		branch=""
	fi
}

# Updates $PS1 before printing it
update_ps1() {
	get_git_branch
	PS1="\w \033[1m$branch\033[0m\n\u@\h $ "
}

branch="This shouldnt be printed"
precmd_functions+=(update_ps1)

# This doesn't really matter? it gets updated by update_ps1
PS1="\w $branch\n\u@\h $ "
