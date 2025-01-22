#!/bin/bash
# This script converts the input text to the lowercase

if [ -z "$1" ]; then
	echo "Usage: $0 <HeLlO>"
	exit 1
fi

echo "$1" | awk '{print tolower($0)}'

