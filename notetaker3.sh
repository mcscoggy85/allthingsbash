#!/bin/bash

## exanding on the note taking script
# Author: Chris Scogin

# Note topic
topic="$1"
# echo $topic

# Write to a file
noteFile=notes.txt

# Destination file
file="${topic}-${noteFile}"
# echo $file

# Get the date
date=$(date +%F' ''||'' '%X)
# echo $date

echo 'Time to take notes:'
read usrNotes
echo

if [[ $usrNotes ]]; then
	echo -e "${topic} notes were saved to ${file} at ${date}\n"
	echo "###########"
	echo "#  NOTES  #"
	echo -e "###########\n\n"
	echo ${usrNotes}
	echo "${date}: ${usrNotes}" >> ${file}
else
	echo "No Input was detected; note was not saved"
fi

# cat ${file}
