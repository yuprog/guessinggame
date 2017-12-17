#!/usr/bin/env bash
# This is my own task script
echo "Hello! This is gussing game."
let cnt=0
let guess=0
let files=1
echo -n "Current directory is "
pwd

while [[ $guess -ne $files ]]
do
let cnt=$cnt+1
echo -n "$cnt. Enter how many files are in the current directory: "
read guess
echo -n "    Your answer is $guess. "

let files=5

if [[ $guess =~ [^0-9.] ]] ; then
   echo "Only digits 0-9 are correct for answer."
else
  if [[ $guess -eq $files ]] ; then
     echo "This is correct answer!!! Congratulation!"
  elif [[ $guess -lt $files ]] ; then
     echo "Answer should be Greater."
  else 
     echo "Answer should be Less."
  fi
fi
done
