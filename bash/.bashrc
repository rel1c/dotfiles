# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Set the PS1 prompt (with colors).
PS1="\[\033[0;34m\][\u@\h \W]\\$ \[$(tput sgr0)\]"

# Set the default editor to vim.
export EDITOR=vim

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'

# User specific aliases
if [ -f $HOME/.bash_aliases ]
then
  . $HOME/.bash_aliases
fi

#User specific functions
if [ -f $HOME/.bash_functions ]
then
  . $HOME/.bash_functions
fi
