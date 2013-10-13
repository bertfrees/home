# ------------------------------------------------------------------
# ALIASES
# ------------------------------------------------------------------

alias l="ls -lAh"
alias ..="cd .."
alias rgrep="grep -r"
alias top="htop"
alias gitk="gitk --all"

if [[ "$OSTYPE" =~ ^darwin ]]; then
    alias clojure="/usr/local/bin/clj"
else
    alias ls="ls --color=auto"
fi

# Git
magit() {
	emacs -te "(magit-status \"$(readlink -f .)\")"
}

# Subversion
svndiff() {
    svn diff "${@}" | colordiff
}
