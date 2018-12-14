#!/usr/bin/env bash

# This option will make the script exit when there is an error
set -o errexit
# This option will make the script exit when it tries to use an unset variable
set -o nounset

main() {
  input=$1

  if [ $input =  "total" ]; then
     echo 18446744073709551615 
     exit 0
  fi
  
  if [ $input -gt 0 -a $input -lt 65 ]; then
    echo "2^($input-1)" | bc
    exit 0 
  fi

  echo "Error: invalid input"
  exit 1
}

# Calls the main function passing all the arguments to it via '$@'
# The argument is in quotes to prevent whitespace issues
main "$@"
