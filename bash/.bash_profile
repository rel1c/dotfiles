# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Friendly directory change with listing
c() {
        cd "$1" && ls --color;
}

# User specific environment and startup programs
