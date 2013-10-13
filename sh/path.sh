# ------------------------------------------------------------------
# PATH
# ------------------------------------------------------------------

if [[ "$OSTYPE" =~ ^darwin ]]; then
    PATH=/usr/local/bin:/usr/local/sbin:$PATH
    PATH=$PATH:/usr/local/i386-mingw32-4.3.0/bin
    PATH=$PATH:/usr/local/share/python
    PATH=$PATH:/Applications/Darwine/Wine.bundle/Contents/bin
fi

# MinGW-w64
PATH=$PATH:/usr/local/mingw-w64/bin

# homeshick
PATH=$HOME/.homesick/repos/homeshick/bin:$PATH

# play
PATH=$PATH:$HOME/dev/play

# gnulib
PATH=$PATH:$HOME/dev/gnulib

# gem
PATH=$PATH:$HOME/.gem/ruby/1.8/bin

# Dropbox/scripts
PATH=$HOME/Dropbox/scripts:$PATH

# home/bin
PATH=$DOTFILES/bin:$PATH

export PATH

# ------------------------------------------------------------------
# JAVA CLASSPATH
# ------------------------------------------------------------------

# ivy
CLASSPATH=$CLASSPATH:/usr/local/Cellar/ivy/2.3.0/libexec/ivy-2.3.0.jar

export CLASSPATH

# ------------------------------------------------------------------
# PKG_CONFIG_PATH
# ------------------------------------------------------------------

PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/usr/local/opt/libffi/lib/pkgconfig

export PKG_CONFIG_PATH
