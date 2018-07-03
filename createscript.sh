#!/bin/bash

# Create script
# This script creates a new bash script, sets permissions and more
# Author: Chris Scogin

# Argument existance
if [[ ! $1 ]]; then
	echo "Missing Argument"
	exit 1
fi

editor='vim'
scriptname=$1
bindir="${HOME}/bin"
filename="${bindir}/${scriptname}"

if [[ -e ${filename} ]]; then
	echo "File ${filename} already exists"
	exit 1
fi

if type "${scriptname}"; then
	echo "There is already a command with the name ${scriptname}"
	exit 1
fi 

# Check if bin directory exists
if [[ ! -d ${bindir} ]]; then
	# if not: create the bin directory
	if mkdir ${bindir}; then
		echo "Created ${bindir}"
	else
		echo "Could not create ${bindir}"
		exit 1
	fi
fi

#create script with single line
echo '#!/bin/bash' > "${filename}"
# make script executable
chmod +x ${filename}
# Open in editor
${editor} ${filename}

echo -e "End\n"
exit 0