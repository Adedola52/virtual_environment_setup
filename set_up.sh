#! /bin/bash
set -e

source helpers.sh

install_python3 () {

if ! dpkg -s python3.10-venv &> /dev/null
    then
        echo "$(info "python3 venv not found, installing python3.10-venv...")" > "$log_file" 2>&1
        sudo apt update >> "$log_file" 2>&1
        sudo apt install python3.10-venv >> "$log_file" 2>&1
else
    echo "$(success "python3.10-venv already installed")" > "$log_file"

fi

}

create_venv () {

if [ -f "$venvv" ]
    then
        echo "$(success "virtual  environment found, activating...")" >> "$log_file"
        source "$venvv"   >> "$log_file" 2>&1
        echo "$(success "Environment is activated...")" >> "$log_file"
else
    echo "$(info "No environment found, creating...")" >> "$log_file"
    python3 -m venv "$venv_name" >> "$log_file" 2>&1
    echo "$(success "Environment created, now activating...")" >> "$log_file"
    source "venvv" >> "$log_file" 2>&1
    echo "$(success "Environment is activated...")" >> "$log_file"
fi
}

pip_upgrade () {

echo "$(info "Upgrading pip...")" >> "$log_file"
python3 -m pip install --upgrade pip >> "$log_file" 2>&1
echo "$(success "Pip upgraded within environment...")" >> "$log_file"

echo "$(info "Installing dependencies...")" >> "$log_file"
pip install -r "$requirements" >> "$log_file" 2>&1
echo "$(success "Dependencies successfully installed...")" >> "$log_file"

}


ignore () {

if [ ! -f "$gitignore" ]
    then
        echo "$(info ".gitignore file does not exist within environment, creating a .gitignore...")" >> "$log_file"
        touch "$gitignore" >> "$log_file" 2>&1
else
    echo "$(warning ".gitignore exist, exiting...")" >> "$log_file"
fi

}


main () {

install_python3
create_venv
pip_upgrade
ignore
echo "$(success "Environment is ready for use ...")" >> "$log_file"

}

main
