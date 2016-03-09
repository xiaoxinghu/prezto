# osx settings
if [[ "$OSTYPE" == darwin* ]]; then
  export JAVA_HOME=`/usr/libexec/java_home`
  export ANDROID_HOME=/usr/local/opt/android-sdk
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

#
# Aliases
#

# Emacs

# for terminal
alias em='emacsclient -t'

# for GUI
# alias emacs='emacsclient -c -n'

# The Fuck
# alias fuck='sudo $(history -p \!\!)'
alias fuck='sudo $(fc -ln -1)'