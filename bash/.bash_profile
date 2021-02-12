# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Friendly directory listing
c() {
        cd "$1" && ls -d */;
}

# User specific environment and startup programs
