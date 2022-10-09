#!/bin/bash
# Author : Teddy Skarin
# https://github.com/fearside/ProgressBar/blob/master/progressbar.sh
# Project home page at:
#    http://www.theiling.de/projects/bar.html
#
# Main source code distribution site:
#    http://www.theiling.de/downloads/?name=bar
# version 1.3.1


# 1. Create ProgressBar function
# 1.1 Input is currentState($1) and totalState($2)
function ProgressBar {
# Process data
	let _progress=(${1}*100/${2}*100)/100
	let _done=(${_progress}*4)/10
	let _left=40-$_done
# Build progressbar string lengths
	_done=$(printf "%${_done}s")
	_left=$(printf "%${_left}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:
# 1.2.1.1 Progress : [########################################] 100%
# 1.2.1.2 Progress : [████████████████████████████████████████] 100%
# 1.2.1.3 Progress : [▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓] 100%
# 1.2.1.4 Progress : [»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»] 100%
# 1.2.1.5 Progress : [>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>] 100%
# 1.2.1.6 Progress : [] 100%

printf "\rProgress : [${_done// /▓}${_left// /-}] ${_progress}%%"

}

# Variables
_start=1

# This accounts as the "totalState" variable for the ProgressBar function
_end=100

# Proof of concept
for number in $(seq ${_start} ${_end})
do
# rapidez de llenado de la barra
	sleep 0.05
	ProgressBar ${number} ${_end}
done
#printf
echo -e '\nCompleted!!!\n'
