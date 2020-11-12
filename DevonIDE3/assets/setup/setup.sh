#!/bin/sh

SETUP_FILE="/root/setup/setup.txt"
while [ ! -f $SETUP_FILE ]
do 
	sleep 1
done

STEPS=$(head $SETUP_FILE -n1)
echo "Start setup script ($STEPS steps)"
i=0
while [ "$i" -lt $STEPS ]; do
	NAME_LINE=$((i * 4 + 2))
	SCRIPT_LINE=$((i * 4 + 3))
	FIN_LINE=$((i * 4 + 4))
	NAME=$(head $SETUP_FILE -n$NAME_LINE | tail -n1)
	COMMAND=$(head $SETUP_FILE -n$SCRIPT_LINE | tail -n1)
	TMP=$(head $SETUP_FILE -n$FIN_LINE | tail -n1)
	echo "Executing step $((i + 1)): $NAME"
	while [ "$TMP" != "Finished" ]; do
        sleep 1
		TMP=$(head $SETUP_FILE -n$FIN_LINE | tail -n1)
    done
	i=$(( i + 1 ))
done
echo "Setup script finished!"
