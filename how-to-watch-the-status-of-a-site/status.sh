#!/bin/zsh

while true; do
  curl -s -o /dev/null -w "%{http_code}" https://example.org/login
  echo 
  sleep 30
done
