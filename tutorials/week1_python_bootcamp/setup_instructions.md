# Python Bootcamp Environment Setup Instructions

## Quick Start (Recommended)

### For Conda Users

1. **Open Terminal/Command Prompt**

2. **Navigate to the course directory**:
   ```bash
   cd /path/to/PythonBootcamp
   ```

3. **Create the environment**:
   ```bash
   conda env create -f environment.yml
   ```

4. **Activate the environment**:
   ```bash
   conda activate python-bootcamp-bsai
   ```

5. **Start Jupyter Lab**:
   ```bash
   jupyter lab
   ```

### For pip Users

1. **Open Terminal/Command Prompt**

2. **Navigate to the course directory**:
   ```bash
   cd /path/to/PythonBootcamp
   ```

3. **Create virtual environment**:
   ```bash
   python -m venv python-bootcamp-env
   ```

4. **Activate virtual environment**:
   - Windows:
     ```bash
     python-bootcamp-env\Scripts\activate
     ```
   - macOS/Linux:
     ```bash
     source python-bootcamp-env/bin/activate
     ```

5. **Install packages**:
   ```bash
   pip install -r requirements.txt
   ```

6. **Start Jupyter Lab**:
   ```bash
   jupyter lab
   ```

## Detailed Setup Instructions

### Prerequisites

Before setting up the environment, ensure you have one of the following installed:

#### Option A: Anaconda (Recommended for beginners)
- Download from: https://www.anaconda.com/products/distribution
- Includes Python, conda, and many scientific packages
- Choose Python 3.11 version

#### Option B: Miniconda (Lightweight option)
- Download from: https://docs.conda.io/en/latest/miniconda.html
- Minimal installation with just Python and conda
- Choose Python 3.11 version

#### Option C: Python with pip
- Download Python 3.11 from: https://www.python.org/downloads/
- Ensure pip is included (usually installed by default)

### Environment Setup Methods

#### Method 1: Conda Environment (Recommended)

**Advantages:**
- Handles dependencies automatically
- Works across different operating systems
- Easy to share and reproduce

**Steps:**
1. Open terminal/command prompt
2. Navigate to the course directory
3. Run: `conda env create -f environment.yml`
4. Activate: `conda activate python-bootcamp-bsai`
5. Start Jupyter: `jupyter lab`

#### Method 2: pip Virtual Environment

**Advantages:**
- Uses standard Python tools
- Lightweight
- Good for experienced Python users

**Steps:**
1. Open terminal/command prompt
2. Navigate to the course directory
3. Create venv: `python -m venv python-bootcamp-env`
4. Activate venv (see platform-specific commands above)
5. Install packages: `pip install -r requirements.txt`
6. Start Jupyter: `jupyter lab`

### Verifying Installation

After setup, verify everything works:

1. **Start Jupyter Lab**:
   ```bash
   jupyter lab
   ```

2. **Open a new notebook** and run:
   ```python
   import numpy as np
   import matplotlib.pyplot as plt
   import pandas as pd
   import scipy
   print("All packages imported successfully!")
   ```

3. **Test plotting**:
   ```python
   import matplotlib.pyplot as plt
   import numpy as np
   
   x = np.linspace(0, 10, 100)
   y = np.sin(x)
   plt.plot(x, y)
   plt.title("Test Plot")
   plt.show()
   ```

### Troubleshooting

#### Common Issues and Solutions

**1. "conda: command not found"**
- Solution: Install Anaconda or Miniconda first
- Or use pip method instead

**2. "python: command not found"**
- Solution: Install Python 3.11 from python.org
- Make sure to check "Add Python to PATH" during installation

**3. "Permission denied" errors**
- Solution: Don't use `sudo` with conda
- Try creating environment in user directory

**4. "Package not found" errors**
- Solution: Update conda first: `conda update conda`
- Or try: `conda install -c conda-forge package_name`

**5. Jupyter Lab won't start**
- Solution: Install Jupyter Lab: `conda install jupyterlab`
- Or: `pip install jupyterlab`

**6. Kernel issues in Jupyter**
- Solution: Install ipykernel: `conda install ipykernel`
- Register kernel: `python -m ipykernel install --user --name python-bootcamp-bsai`

#### Platform-Specific Notes

**Windows:**
- Use Anaconda Prompt instead of Command Prompt for better conda support
- If using pip, ensure Python is added to PATH

**macOS:**
- You may need to install Xcode command line tools: `xcode-select --install`
- Use Terminal app

**Linux:**
- May need to install additional system dependencies
- Use your distribution's package manager for system libraries

### Environment Management

#### Updating Packages
```bash
# For conda
conda env update -f environment.yml

# For pip
pip install -r requirements.txt --upgrade
```

#### Removing Environment
```bash
# For conda
conda env remove -n python-bootcamp-bsai

# For pip
# Just delete the virtual environment directory
rm -rf python-bootcamp-env  # Linux/macOS
rmdir /s python-bootcamp-env  # Windows
```

#### Sharing Environment
The `environment.yml` and `requirements.txt` files make it easy to share the exact environment with others.

### Getting Help

If you encounter issues:

1. **Check the error message** carefully
2. **Search online** for the specific error
3. **Ask for help** with the complete error message
4. **Try the alternative method** (conda vs pip)

### Next Steps

Once your environment is set up:

1. **Open Jupyter Lab**
2. **Navigate to the course materials**
3. **Start with 00_Introduction.ipynb**
4. **Work through the notebooks in order**
5. **Complete the exercises**
6. **Check your solutions** in the `solutions/` directory

Happy coding! 🐍
