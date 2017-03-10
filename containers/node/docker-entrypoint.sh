#!/bin/bash

CONFIG_FILENAME="$1"

if [ -z "$1" ]; then
	echo "No configuration file name was provided, aborting."
	echo "Please, provide the configuration file name as first parameter or a run command."
	exit 1
fi

if [ ! -f /waves/${CONFIG_FILENAME} ]; then
	echo "Configuration file '${CONFIG_FILENAME}' not found, aborting..."
	exit 1
fi

cd /waves

java -jar waves.jar ${CONFIG_FILENAME}
