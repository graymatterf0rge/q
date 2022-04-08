#!/bin/bash

input="junk"
installQueue=()

for i in {16..21} {21..16} ; do echo -en "\e[38;5;${i}m#\e[0m" ; done ; echo

echo "Add npm modules to the queue "
echo "When you've finished, type [q] and press [Enter] to begin the installation"

while [ "$input" != "" ]
do
   read -p "Module name: " input
   installQueue+=("$input")
done
modules=${installQueue[@]}

npm i $modules
