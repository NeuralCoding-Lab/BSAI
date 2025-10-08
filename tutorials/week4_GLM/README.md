## Project structure

```
├── week4_GLM_tutorial.ipynb
├── rgc_data.h5
├── requirements.txt
└── README.md
```

## Environment

Create a new conda environment, or use an existing environment

```bash
# create a new environment named 'BSAI_GLM'
conda create -n BSAI_GLM python=3.12
conda activate BSAI_GLM

# or using an existing environment, for example, an environment named '<your_env>'
conda activate <your_env>

```

Install packages manually, or via `requirements.txt`. Note that, if your python version is not 3.12, please do not install via `requirements.txt` due to possible version conflicts.

```bash
# manually install
pip install ipykernel numpy h5py matplotlib scikit-learn

# or install via requirements.txt
pip install -r requirements.txt
```

Try running the first code cell in the notebook, which imports all the packages required for this tutorial. If it executes successfully, your environment is all set—congratulations!