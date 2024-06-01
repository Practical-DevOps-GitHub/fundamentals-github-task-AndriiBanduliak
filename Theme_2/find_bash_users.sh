#!/bin/bash

# Check if the file is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "File not found!"
  exit 1
fi

# Find users with /bin/bash shell
grep '/bin/bash' "$1" | cut -d':' -f1
