#!/bin/bash
set -o errexit

case "$1" in
sh | bash | bats)
  set -- "$@"
  ;;
*)
  set -- /usr/local/bin/bats "$@"
  ;;
esac

exec "$@"
