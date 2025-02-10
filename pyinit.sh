#!/bin/bash

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "Python3 is not installed. Please install it first."
    exit 1
fi

# Create virtual environment if it doesn't exist
if [ ! -d "env" ]; then
    echo "Creating virtual environment..."
    python3 -m venv env
else
    echo "Virtual environment already exists."
fi
echo $'Virtual environment activated.\nTo activate ENV enter: \n\nsource env/bin/activate\n'
