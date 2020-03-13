#!/bin/bash


# This is a variable
# There should be no spaces between the equal signs
# or bash will interpret your var as a command
TEXT="Hello"
NUM=123
MIX=123abc
# Variables are accessed with $
echo $TEXT
echo $NUM
# -e lets you put in special characters (the blackslash ones)
echo -e $MIX "\n"


# Read User Input
echo "Who are you?"
read NAME
echo -e "Hello, $NAME \n"


# Arrays
ARR[0]="A"
ARR[1]=123
ARRAY=("B" 245)
# Print index
echo "ARR: ${ARR[0]}"
# Print all
echo "ARR: ${ARR[*]}"
echo -e "ARRAY: ${ARRAY[@]} \n"


# Operators
# There's many operators
# Arithmetic, Relational, Boolean, String, File Test
# Uses the backtick (under tilda ~) for arithmetic
EXP=`expr 1 + 1`
echo -e $EXP "\n"


# if...else
# Uses brackets for other operators
if [ 1 == 1 ]
then
    echo -e Yes "\n"
fi


# Loops
i=0
while [ $i -lt 3 ]
do
    echo $i
    i=`expr $i + 1`
done
echo

for thing in ${ARRAY[*]}
do
    echo $thing
done
echo

# Functions
# $(number) are arguments to the function
myfunc() {
    echo "Hi $1"
    # Return must be a number
    return 1
}
myfunc Justin
# Get return value of last function called
RETN=$?
echo -e $RETN "\n"
