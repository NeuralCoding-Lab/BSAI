#!/bin/bash

# Python Bootcamp Environment Setup Script
# BSAI Course, Autumn 2025

echo "🐍 Python Bootcamp Environment Setup"
echo "====================================="
echo ""

# Check if conda is available
if command -v conda &> /dev/null; then
    echo "✅ Conda found. Using conda to create environment..."
    echo ""
    
    # Create conda environment
    echo "Creating conda environment 'python-bootcamp-bsai'..."
    conda env create -f environment.yml
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ Environment created successfully!"
        echo ""
        echo "To activate the environment, run:"
        echo "  conda activate python-bootcamp-bsai"
        echo ""
        echo "To start Jupyter Lab, run:"
        echo "  jupyter lab"
        echo ""
    else
        echo "❌ Failed to create conda environment. Trying pip method..."
        echo ""
        setup_with_pip
    fi
    
elif command -v python3 &> /dev/null; then
    echo "✅ Python 3 found. Using pip to create virtual environment..."
    echo ""
    setup_with_pip
else
    echo "❌ Neither conda nor Python 3 found."
    echo "Please install either:"
    echo "  - Anaconda: https://www.anaconda.com/products/distribution"
    echo "  - Miniconda: https://docs.conda.io/en/latest/miniconda.html"
    echo "  - Python 3.11: https://www.python.org/downloads/"
    exit 1
fi

function setup_with_pip() {
    echo "Creating Python virtual environment..."
    python3 -m venv python-bootcamp-env
    
    if [ $? -eq 0 ]; then
        echo "✅ Virtual environment created!"
        echo ""
        echo "Activating virtual environment..."
        source python-bootcamp-env/bin/activate
        
        echo "Installing packages..."
        pip install -r requirements.txt
        
        if [ $? -eq 0 ]; then
            echo ""
            echo "✅ Environment setup complete!"
            echo ""
            echo "To activate the environment, run:"
            echo "  source python-bootcamp-env/bin/activate"
            echo ""
            echo "To start Jupyter Lab, run:"
            echo "  jupyter lab"
            echo ""
        else
            echo "❌ Failed to install packages with pip."
            exit 1
        fi
    else
        echo "❌ Failed to create virtual environment."
        exit 1
    fi
}

echo "🎉 Setup complete! Happy coding!"
