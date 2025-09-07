# 🚀 Quick Start Guide - Python Bootcamp

## Get Started in 5 Minutes!

### Step 1: Choose Your Setup Method

**Option A: One-Click Setup (Recommended)**
```bash
# Linux/Mac
./setup.sh

# Windows
setup.bat
```

**Option B: Manual Setup**
```bash
# Using conda (recommended)
conda env create -f environment.yml
conda activate python-bootcamp-bsai

# Using pip
python -m venv python-bootcamp-env
source python-bootcamp-env/bin/activate  # Linux/Mac
# or
python-bootcamp-env\Scripts\activate.bat  # Windows
pip install -r requirements.txt
```

### Step 2: Start Jupyter Lab
```bash
jupyter lab
```

### Step 3: Verify Everything Works
```bash
python verify_installation.py
```

### Step 4: Begin Learning!
1. Open `00_Introduction.ipynb`
2. Work through the notebooks in order
3. Complete the exercises
4. Check solutions in the `solutions/` folder

## 📚 Course Structure

| Notebook | Topic | Duration |
|----------|-------|----------|
| 00 | Introduction | 15 min |
| 01-02 | Basic Python | 2 hours |
| 03-05 | Scientific Computing | 2 hours |
| 06-07 | Data Analysis | 2 hours |
| 08-10 | Advanced Topics | 2 hours |

## 🛠️ Troubleshooting

**Can't run setup script?**
- Make sure you have Python 3.11+ installed
- Try the manual setup method

**Jupyter won't start?**
- Make sure environment is activated
- Try: `conda install jupyterlab` or `pip install jupyterlab`

**Import errors?**
- Run: `python verify_installation.py`
- Check error messages and install missing packages

## 📖 Need More Help?

- **Detailed setup**: See `setup_instructions.md`
- **Full documentation**: See `README.md`
- **Environment files**: `environment.yml` and `requirements.txt`

## 🎯 Learning Objectives

By the end of this bootcamp, you'll be able to:
- ✅ Write clean Python code
- ✅ Work with NumPy arrays and SciPy functions
- ✅ Create publication-quality plots with Matplotlib
- ✅ Analyze data with Pandas
- ✅ Process images and perform statistical analysis
- ✅ Apply machine learning with scikit-learn

**Ready to start? Run the setup script and dive in! 🐍**
