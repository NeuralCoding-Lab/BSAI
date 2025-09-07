# Python Bootcamp - BSAI Course, Autumn 2025

This repository contains the Python Bootcamp materials for the BSAI (Brain Science and Artificial Intelligence) course.

## Course Overview

This bootcamp covers fundamental Python programming concepts and scientific computing libraries essential for data science and machine learning:

- **Basic Python**: Objects, data structures, control flow, and functions
- **Scientific Computing**: NumPy, SciPy, Matplotlib, and Pandas
- **Data Analysis**: Working with datasets, visualization, and statistical analysis
- **Image Processing**: Basic image manipulation and analysis
- **Machine Learning**: Introduction to scikit-learn

## Environment Setup

### Option 1: Using Conda (Recommended)

1. **Install Miniconda or Anaconda** (if not already installed):
   - Download from: https://docs.conda.io/en/latest/miniconda.html
   - Or: https://www.anaconda.com/products/distribution

2. **Create the environment**:
   ```bash
   conda env create -f environment.yml
   ```

3. **Activate the environment**:
   ```bash
   conda activate python-bootcamp-bsai
   ```

4. **Start Jupyter Lab**:
   ```bash
   jupyter lab
   ```

### Option 2: Using pip

1. **Create a virtual environment**:
   ```bash
   python -m venv python-bootcamp-env
   ```

2. **Activate the virtual environment**:
   - On Windows:
     ```bash
     python-bootcamp-env\Scripts\activate
     ```
   - On macOS/Linux:
     ```bash
     source python-bootcamp-env/bin/activate
     ```

3. **Install packages**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Start Jupyter Lab**:
   ```bash
   jupyter lab
   ```

### Solutions

Complete solutions for all exercises are available in the `solutions/` directory.

## Package Versions

The environment includes the following key packages:

- **Python**: 3.11
- **NumPy**: ≥1.24.0 (Numerical computing)
- **SciPy**: ≥1.10.0 (Scientific computing)
- **Matplotlib**: ≥3.7.0 (Plotting and visualization)
- **Pandas**: ≥2.0.0 (Data manipulation and analysis)
- **Scikit-learn**: ≥1.3.0 (Machine learning)
- **Jupyter**: Lab and Notebook support
- **Pillow**: ≥10.0.0 (Image processing)

## Getting Started

1. **Set up your environment** using one of the methods above
2. **Open Jupyter Lab** and navigate to the course materials
3. **Start with 00_Introduction.ipynb** for an overview
4. **Work through the notebooks sequentially** - each builds on the previous ones
5. **Try the exercises** before looking at the solutions
6. **Use the solutions** in the `solutions/` directory to check your work

## Troubleshooting

### Common Issues

1. **Environment creation fails**:
   - Make sure you have the latest version of conda
   - Try updating conda: `conda update conda`

2. **Jupyter Lab won't start**:
   - Make sure the environment is activated
   - Try: `conda install jupyterlab` or `pip install jupyterlab`

3. **Import errors**:
   - Verify all packages are installed: `conda list` or `pip list`
   - Try reinstalling the problematic package

4. **Kernel issues**:
   - Install ipykernel: `conda install ipykernel` or `pip install ipykernel`
   - Register the kernel: `python -m ipykernel install --user --name python-bootcamp-bsai`

### Getting Help

- Check the [Python documentation](https://docs.python.org/3/)
- NumPy: https://numpy.org/doc/stable/
- Matplotlib: https://matplotlib.org/stable/
- Pandas: https://pandas.pydata.org/docs/
- SciPy: https://scipy.org/


## License

This course material is provided for educational purposes as part of the BSAI course by Jiaxx.
