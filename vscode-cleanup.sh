#!/usr/bin/env bash

# Vscode cleanup script

# Author : Bobby Valenzuela
# Created : 26th October 2022
# Last Modified : 26th June 2022

# Description:
# Remove your .vscode-server dir and kill any running vscode processes


# Usage: ./git_merge_stash.sh
echo "Cleaning up .vscode-server directory..."

# Check if dir exists
[ -d /home/ubuntu/.vscode-server ] && echo "vscode-server dir found."

rm -r /home/ubuntu/.vscode-server

# Verify if dir was removed
[ ! -d /home/ubuntu/.vscode-server ] && echo "vscode-server dir removed."
[ -d /home/ubuntu/.vscode-server ] && echo "vscode-server dir could not be removed."

# Stop all vscode processes
echo "Removing vscode processes..."
ps aux | grep vscode-server/bin | tr -s [:space:] | cut -d " " -f2 | xargs kill &> /dev/null

echo "Processes removed - Cleanup Completed!"

exit 0

# Useful to run remotely on multiple machines
# Example: ssh ubuntu@myhost 'bash -s' < vscode-cleanup