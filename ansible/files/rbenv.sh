#!/bin/sh

if [ -s "${HOME}/.rbenv/bin" ]; then
  rbenv_root="${HOME}/.rbenv"
elif [ -s "/usr/local/rbenv" ]; then
  rbenv_root="/usr/local/rbenv"
  export RBENV_ROOT="$rbenv_root"
fi

if [ -n "$rbenv_root" ]; then
  export PATH="${rbenv_root}/bin:$PATH"
  eval "$(rbenv init -)"
fi
