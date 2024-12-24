#!/bin/zsh

while true; do
  curl -s -o /dev/null -w "%{http_code}" https://pt2.abu.org/auth/login
  echo 
  sleep 30
done
