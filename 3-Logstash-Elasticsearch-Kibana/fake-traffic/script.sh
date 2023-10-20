#!/bin/bash
id=1
host=$(hostname)
while true
do
  echo "Hello. ID=${id}. Sent from ${host}"
  sleep 2
  let id=id+1
  if [[ ${id} == 5 ]]; then
    id=1
  fi
done
