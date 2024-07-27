#!/bin/bash

echo "All Variables: $@"
echo "No. Of Variables passed: $#"
echo "Script Name: $0"
echo "Current working directory: $PWD"
echo "home directory of the current user: $HOME"
echo "which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60 &
echo "Process ID of last background command: $!"