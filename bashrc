# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# list of all directories in which Linux will look for commands, scripts and programs
export PATH=$PATH:$HOME/bin



function include_d {
	dir=$1
	if [ -d $HOME/.$dir.d -a -r $HOME/.$dir.d -a -x $HOME/.$dir.d ]; then
		for i in $HOME/.$dir.d/*.sh; do
			 . $i
		done
	fi
}

include_d bash_functions
include_d bash_aliases
include_d bash_completion
include_d bash_settings

