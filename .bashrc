# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

parse_git_branch() {
    # the branch variable is empty if you're not in a repository.
    branch=$(git branch --show-current 2> /dev/null | sed "s/\(.*\)/(\1)/");
    firstletter=${branch:0:1}
    if [[ $firstletter = "(" ]]; then
	printf " %s "  "$branch";
    else
	 echo "";	
    fi
}

alias ls='ls --color=auto'
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[1;33m\]$(parse_git_branch)\[\033[00m\]\$ '

export PATH=~/.local/bin/statusbar:$PATH
