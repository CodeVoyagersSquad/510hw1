#!/bin/bash
pid=$(ps -ef | grep 'infinite.sh' | grep -v grep | awk '{print $2}')
if [ -z "$pid" ]; then
  echo "No process found."
else
  kill -9 $pid
  echo "Process infinite.sh with PID $pid killed."
fi
