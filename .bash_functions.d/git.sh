# gc      => git checkout master
# gc bugs => git checkout bugs

function gc {
  if [ -z "$1" ]; then
    git checkout master
  else
    git checkout $1
  fi
}