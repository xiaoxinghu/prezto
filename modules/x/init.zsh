# osx settings
if [[ "$OSTYPE" == darwin* ]]; then
  export JAVA_HOME=`/usr/libexec/java_home`
  export ANDROID_HOME=/usr/local/opt/android-sdk
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

#
# Aliases
#

alias em='emacsclient -c -n'
# alias emacs='emacsclient -c -n'
