#!/usr/bin/env bash

###########################################################################################
#           This wee helper script prevents a MacOS from going to sleep.                  #
#  The name is a spin-off of the 'caffeinate' command that is pre-installed on all macs.  #
###########################################################################################

echo "Sipping a fresh brewed mocha.."
#caffeinate -diut 3
caffeinate -diut 28801

# Prompt the user with a pop-up dialog surveying whether they would like to rerun
echo "The cup is empty!"
user_input=$(osascript -e 'tell app "System Events" to display dialog "Care to brew another?" with title "The mocha is empty" buttons {"No thanks", "Start brewing"}')

if [[ "$user_input" == *"button returned:Start brewing"* ]]; then
  # If the user chose to rerun, re-initiate the script
  "$0"
fi

