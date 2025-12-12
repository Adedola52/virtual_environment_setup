#! /bin/bash


venv_name="venv"
venvv="./$venv_name/bin/activate"
log_file="./setup.log"
requirements="./requirement.txt"
gitignore="./.gitignore"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
RESET="\033[0m"

timestamp() {
    date '+%Y-%m-%d %H:%M:%S'
}

info() {
    echo -e "[${BLUE}INFO${RESET}] $(timestamp): $1"
}

warning() {
    echo -e  "[${YELLOW}WARNING${RESET}] $(timestamp): $1 "
}

error() {
    echo -e "[${RED}ERROR${RESET}] $(timestamp): $1 "
}

success() {
    echo -e  "[${GREEN}SUCCESS${RESET}] $(timestamp): $1 "
}



