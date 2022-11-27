#!/usr/bin/env bash

# Linux X-ray: Linux diagnostic tool.

# Author : Bobby Valenzuela
# Created : 27th November 2022
# Last Modified : 27th November 2022

# Description:
# Scans for violations of security best practices and performance detriments.
# Requires sudo privileges to run.



## get top 5 process eating memory
ps auxf | sort -nr -k 4 | head -5
 
## get top 5 process eating cpu ##
ps auxf | sort -nr -k 3 | head -5

## Update cache and upgrade binaries
# sudo apt update

