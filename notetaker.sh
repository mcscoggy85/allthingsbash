#!/bin/bash

# Simple note taking script
# Author: Chris Scogin

echo $(date): $* >> notes.txt
echo "Note has been taken..."
