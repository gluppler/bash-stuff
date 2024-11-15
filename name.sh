#!/bin/bash

#1. Accepts two arguments on the command line and assigns them to variables.
# The first argument should be your first name, and the second should be your last name.

echo "What is your first name?"
read -r firstname

echo "What is your last name?"
read -r lastname

echo "Your first name is ${firstname} and your last name is ${lastname}"

#2. Creates a new file named output.txt

echo "Creating new file output.txt..."
touch output.txt

#3. Writes the current date to output.txt by using the date command.
# DD-MM-YYYY
date "+%d-%m-%Y" >> output.txt

#4. Writes your full name to output.txt
echo "${firstname} ${lastname}" >> output.txt

#5. Makes a backup copy of output.txt, named backup.txt, using the cp command.
echo "Creating new file backup.txt..."
cp output.txt backup.txt

#6. Prints the content of the output.txt file to the standard output stream
cat output.txt
