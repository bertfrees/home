# ==============================================
# ~/.bashrc
#  executed by bash(1) for non-login shells.
# ==============================================

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# ------------------------------------------------------------------
# BASH
# ------------------------------------------------------------------

# History
export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
shopt -s histappend

# Make bash check its window size after a process completes
shopt -s checkwinsize

# Colours
NM="\[\033[0;38m\]"
HI="\[\033[1;32m\]"
HII="\[\033[1;31m\]"
SI="\[\033[1;34m\]"
IN="\[\033[0m\]"

export PS1="$NM[$HI\u$NM@$HII\h$IN:$SI\w$NM]$ $IN"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Advanced Completion
[[ $- = *i* ]] && bind TAB:menu-complete
if [[ "$OSTYPE" =~ ^darwin ]]; then source /usr/local/etc/bash_completion; fi
if [[ "$OSTYPE" =~ ^darwin ]]; then source /usr/local/git/contrib/completion/git-completion.bash; fi

# ------------------------------------------------------------------
# COMMON SETTINGS
# ------------------------------------------------------------------

export DOTFILES=$HOME/.homesick/repos/home

source $DOTFILES/sh/aliases.sh
source $DOTFILES/sh/path.sh
source $DOTFILES/sh/misc.sh
