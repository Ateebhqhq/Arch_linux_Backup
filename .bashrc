
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Run neofetch on terminal start
if command -v neofetch &> /dev/null; then
    neofetch
fi

# Ascii art
if command -v echo &> /dev/null; then
	echo "
 بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ

"
fi

# List tasks from a specific Taskwarrior project
if command -v task &> /dev/null; then
    echo "Life Roadmap."
    task project:Roadmap
fi


if command -v task &> /dev/null; then
	echo "To-Dos Everyday. :O"
	task project:EverydayTasks
fi


alias map='mapscii'


alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# eval "$(starship init bash)"





export OPENAI_API_KEY='sk-your_key_here'
export PATH=$HOME/.local/bin:$PATH
