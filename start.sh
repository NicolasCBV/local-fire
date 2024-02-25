#!/bin/sh

CYAN='\033[0;36m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
RESET_COLOR='\033[0m'

INFO_FLAG="[${CYAN}INFO${RESET_COLOR}]"
BULLET_PT="${CYAN}${RESET_COLOR}"

echo -e "${INFO_FLAG} Runnning Firestore database on port ${PORT}." 
java -server -jar /home/fire-local/emulator.jar --host 0.0.0.0 --port ${PORT}
