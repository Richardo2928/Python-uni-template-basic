#!/bin/bash
set -e
trap 'echo "Error at line $LINENO. Exiting."' ERR

# Define paths
WORKDIR=$(pwd)
VENV_PATH="$WORKDIR/venv"
REQUIREMENTS_FILE="$WORKDIR/requirements.txt"

# --force flag to recreate venv
if [[ "$1" == "--force" ]]; then
    echo "Forcing recreation of virtual environment..."
    rm -rf "$VENV_PATH"
fi

# Check if venv exists
if [ -d "$VENV_PATH" ]; then
    echo "Virtual environment already exists at $VENV_PATH. Skipping creation."
else
    # Create virtual environment
    echo "Creating virtual environment at $VENV_PATH..."
    python3 -m venv "$VENV_PATH" # <--- Change your Python version if needed ---
    echo "Virtual environment created successfully."
fi

# Check if requirements file exists
if [ ! -f "$REQUIREMENTS_FILE" ]; then
    echo "Requirements file not found"
    echo "\n Virtual environment setup complete! :) \n"
    echo "---No requirements to install---"
    echo "To see what else you can do, run:"
    echo "make template-help"
    exit 0
fi

# Install requirements
echo "Installing required packages from $REQUIREMENTS_FILE..."
"$VENV_PATH/bin/pip" install -r "$REQUIREMENTS_FILE"
echo "Required packages installed successfully."

# Final message
echo -e "\n Virtual environment setup complete! :)"
echo "To see what else you can do, run:"
echo "make template-help"