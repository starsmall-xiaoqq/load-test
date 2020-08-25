#!/bin/bash

set -ue

jmeter_options=()

FILE=./gproperties
if test -f "$FILE"; then
  echo "read global properties "
  IFS="="
  while read -r key value
  do
    jmeter_options+=( -G"$key=${value}" )
  done < "$FILE"
  jmeter_options+=( -G"$key=$value" )
  echo ${jmeter_options[@]}
fi


