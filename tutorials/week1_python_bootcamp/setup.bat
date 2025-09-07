@echo off
REM Python Bootcamp Environment Setup Script
REM BSAI Course, Autumn 2025

echo 🐍 Python Bootcamp Environment Setup
echo =====================================
echo.

REM Check if conda is available
where conda >nul 2>nul
if %errorlevel% equ 0 (
    echo ✅ Conda found. Using conda to create environment...
    echo.
    
    REM Create conda environment
    echo Creating conda environment 'python-bootcamp-bsai'...
    conda env create -f environment.yml
    
    if %errorlevel% equ 0 (
        echo.
        echo ✅ Environment created successfully!
        echo.
        echo To activate the environment, run:
        echo   conda activate python-bootcamp-bsai
        echo.
        echo To start Jupyter Lab, run:
        echo   jupyter lab
        echo.
    ) else (
        echo ❌ Failed to create conda environment. Trying pip method...
        echo.
        goto :setup_with_pip
    )
) else (
    REM Check if python is available
    where python >nul 2>nul
    if %errorlevel% equ 0 (
        echo ✅ Python found. Using pip to create virtual environment...
        echo.
        goto :setup_with_pip
    ) else (
        echo ❌ Neither conda nor Python found.
        echo Please install either:
        echo   - Anaconda: https://www.anaconda.com/products/distribution
        echo   - Miniconda: https://docs.conda.io/en/latest/miniconda.html
        echo   - Python 3.11: https://www.python.org/downloads/
        pause
        exit /b 1
    )
)

:setup_with_pip
echo Creating Python virtual environment...
python -m venv python-bootcamp-env

if %errorlevel% equ 0 (
    echo ✅ Virtual environment created!
    echo.
    echo Activating virtual environment...
    call python-bootcamp-env\Scripts\activate.bat
    
    echo Installing packages...
    pip install -r requirements.txt
    
    if %errorlevel% equ 0 (
        echo.
        echo ✅ Environment setup complete!
        echo.
        echo To activate the environment, run:
        echo   python-bootcamp-env\Scripts\activate.bat
        echo.
        echo To start Jupyter Lab, run:
        echo   jupyter lab
        echo.
    ) else (
        echo ❌ Failed to install packages with pip.
        pause
        exit /b 1
    )
) else (
    echo ❌ Failed to create virtual environment.
    pause
    exit /b 1
)

echo 🎉 Setup complete! Happy coding!
pause
