# osx settings
if [[ "$OSTYPE" == darwin* ]]; then
  export JAVA_HOME=`/usr/libexec/java_home`
  export ANDROID_HOME=/usr/local/opt/android-sdk
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

#
# Aliases
#

# for terminal
alias em='emacsclient -t'

# for GUI
# alias emacs='emacsclient -c -n'
