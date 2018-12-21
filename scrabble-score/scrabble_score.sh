#!/usr/bin/env bash

# This option will make the script exit when there is an error
set -o errexit
# This option will make the script exit when it tries to use an unset variable
set -o nounset

main() {
  str=`echo $1 | tr '[A-Z]' '[a-z]'`
  STR_COUNT=${#str};
  i=0;
  total=0;
  while [ $i -lt $STR_COUNT ]
  do
    char=$(eval echo ${str:$i:1})
    case "$char" in
      [aeioulnrst] ) total=$((total+1)) ;;
      [dg] ) total=$((total+2)) ;;
      [bcmp] ) total=$((total+3)) ;;
      [fhvwy] ) total=$((total+4)) ;;
      [k] ) total=$((total+5)) ;;
      [jx] ) total=$((total+8)) ;;
      [qz] ) total=$((total+10)) ;;
    esac
    i=$(($i + 1))
  done
  echo "$total"
}
main "$@"
