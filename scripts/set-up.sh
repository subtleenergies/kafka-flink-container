#!/usr/bin/env bash

echo "checking for 'broker' hostname in hosts file.."

grep -E "^127.0.0.1\s+broker$" /etc/hosts
status=$?

if [ $status -ne 0 ]; then
  echo "adding 'broker' hostname to hosts file"
  echo "127.0.0.1       broker" | sudo tee -a /etc/hosts
fi
