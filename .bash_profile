# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH

alias python='python3.7'

export PATH="/anaconda3/bin:$PATH"

export PYTHONPATH=$PYTHONPATH:/Users/eric/venv/DA_env
export PYTHONPATH=$PYTHONPATH:/Users/eric/GitHub/data_analytics
export PYTHONPATH=$PYTHONPATH:/Users/eric/GitHub/data_analytics/DA_package
export PYTHONPATH=$PYTHONPATH:/Users/eric/GitHub/data_analytics/ReportAutomation

export PATH="/usr/local/opt/openssl/bin:$PATH"
# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# export PATH="/Users/eric/.bash_profile:$PATH"

# SalesForce
export SFDX_AUTOUPDATE_DISABLE=$SFDX_AUTOUPDATE_DISABLE:true