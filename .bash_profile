# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export PATH="/Users/JoseJavier/Library/Haskell/bin:$PATH"
export PATH="/Users/JoseJavier/Library/Application Support/GoodSync":$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/bin:$PATH"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
source /usr/local/bin/virtualenvwrapper.sh
export PATH="/usr/local/gcc-5.2.0/bin:$PATH"



##
# Your previous /Users/JoseJavier/.bash_profile file was backed up as /Users/JoseJavier/.bash_profile.macports-saved_2015-11-26_at_22:27:36
##

# MacPorts Installer addition on 2015-11-26_at_22:27:36: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# added by Anaconda2 2.4.1 installer
export PATH="/Users/JoseJavier/anaconda/bin:$PATH"

export PATH="/Applications/MATLAB_R2014a.app/bin:$PATH"

PS1="\[\e]0;\u@\h: \W\a\]\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[00;36m\]\W\[\033[00m\]\$ "
#PS1="\[\e]0;\u@\h: \W\a\]\[\033[38;5;196m\]\u@\h\[\033[00m\]:\[\033[00;36m\]\W\[\033[00m\]\$ "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ls='ls -G'
alias grep='grep --color=auto'
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
test -f ~/.git-completion.bash && . $_

# alias aspell='aspell -d en_US'
alias jc='source activate py3 && jupyter qtconsole --style monokai &'
alias jcw='source activate py3 && jupyter qtconsole &'

# alias matlab='/Applications/MATLAB_R2014a.app/bin/matlab -nodesktop'

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh


# function _update_ps1() {
#     PS1="$(~/.powerline-shell/powerline-shell.py $? 2> /dev/null)"
# }

# if [ "$TERM" != "linux" ]; then
#     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
# fi


