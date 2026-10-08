#!/bin/sh
# The default text file is read through the filename parameter.
set -e
H=http://web:5000
P=$(curl -fsS "$H/")
echo "$P" | grep -q 'name="filename"'
curl -fsS -d "filename=" "$H/home" -o /dev/null
