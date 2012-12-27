# ==================================================================
# SHELL INIT
# ==================================================================

if [[ "$OSTYPE" =~ ^darwin ]]; then
    EMACS="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -a /Applications/Emacs.app/Contents/MacOS/Emacs"
else
    EMACS="emacsclient -a emacs-snapshot-gtk"
fi

# ------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------
alias l="ls -lAh"
alias ..="cd .."
alias emacs="$EMACS -n"

if [[ "$OSTYPE" =~ ^darwin ]]; then
    alias wine="/Applications/Darwine/Wine.bundle/Contents/bin/wine"
else
    alias ls="ls --color=auto"
    alias mvn="mvn3"
fi

# ------------------------------------------------------------------
# PATH
# ------------------------------------------------------------------
if [[ "$OSTYPE" =~ ^darwin ]]; then
    PATH=/usr/local/bin:/usr/local/sbin:$PATH
    PATH=/usr/local/i386-mingw32-4.3.0/bin:$PATH
fi
export PATH=$PATH

# ------------------------------------------------------------------
# Miscellaneous
# ------------------------------------------------------------------

# Language
export LANG="en_US.UTF-8"
export LANGUAGE="en_US:en"
export LC_MESSAGES="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"

# Subversion
svndiff() {
    svn diff "${@}" | colordiff
}

# Emacs
export EDITOR=$EMACS

# Git
if [[ "$OSTYPE" =~ ^darwin ]]; then
    export GIT_SSL_NO_VERIFY=1
fi
