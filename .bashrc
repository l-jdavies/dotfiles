# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then

export PIPITS_UNITE_RETRAINED_DIR=$HOME/pipits/refdb/UNITE_retrained
export PIPITS_UNITE_REFERENCE_DATA_CHIMERA=$HOME/pipits/refdb/uchime_reference_dataset_28.06.2017/uchime_reference_dataset_28.06.2017.fasta
export PIPITS_WARCUP_RETRAINED_DIR=$HOME/pipits/refdb/warcup_retrained_V2
export PATH=$PATH:$HOME/ncbi-blast-2.2.29+/bin

#source $HOME/.bashrc
#. /etc/bashrc
fi

# User specific aliases and functions
# added by Miniconda2 4.5.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/DAVIEL20/software/miniconda2/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/DAVIEL20/software/miniconda2/etc/profile.d/conda.sh" ]; then
# . "/home/DAVIEL20/software/miniconda2/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/DAVIEL20/software/miniconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
alias push="git push origin master"
alias pull="git pull origin master"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/DAVIEL20/software/miniconda2/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/DAVIEL20/software/miniconda2/etc/profile.d/conda.sh" ]; then
        . "/home/DAVIEL20/software/miniconda2/etc/profile.d/conda.sh"
    else
        export PATH="/home/DAVIEL20/software/miniconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

PATH=/home/DAVIEL20/anaconda3/bin:$PATH

# Add z.sh filepath
. /home/DAVIEL20/z/z.sh

# Show current working directory on command prompt
PS1="\[\`if [[ \$? = "0" ]]; then echo '\e[32m\h\e[0m'; else echo '\e[31m\h\e[0m' ; fi\`:\$PWD\n\$ "

# Functions

# When cd automatically list dir contents
cdls() { cd "$@" && ls; }
