#diff "line by line"
function dill {
  # arguments for sed command
  args='--debug -n'
  # temporary file for holding the diff
  tmp=$(mktemp)
  # find the diff between two chunks in two files
  # and store the result in the temporary file
  diff --color \
  <(sed ${args} "${2},${3} p" ${1}) \
  <(sed ${args} "${5},${6} p" ${4}) &> "$tmp"
  # return the temporary file or an error message
  if ((! $? )) ; then
    cat "$tmp"
  fi
  rm "$tmp"
}

function docker_nuke {
  docker container stop $(docker container ps -q)
  docker container rm $(docker container ps -aq)
  docker image rm $(docker image ls -q -f dangling=true)
}
