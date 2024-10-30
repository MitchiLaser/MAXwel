#!/bin/bash

# this script copies the European logic symbols to the destination directory.
# The Quartus software automatically detects them and makes them available.

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DEST_DIR=/opt/intelFPGA/quartus/libraries/primitives/

if [[ -d  ${DEST_DIR} ]]
then
	cp -r ${SCRIPT_DIR}/eu_symbols ${DEST_DIR}
	chown -R ${USER}:${USER} ${DEST_DIR}/eu_symbols
	chmod -R 444 ${DEST_DIR}/eu_symbols/*
	echo "Successfully Copied files to destination directory"
else
	echo "Destination directory not found"
fi

