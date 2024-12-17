# Freshness ML Model

A repository used to hold a ML model made to analyze the freshness of coffee at it ages.

# Research Overview and Purpose

### Purpose:

As coffee ages, it loses key physical and chemical characteristics that are responsible for how it tastes fresh. The trend of how coffee ages (model for a rate of decay), as well as
what specifically changes when coffee ages, is currently unknown. The goal of this project is to create a machine learning platform that can analyze the data collected of the chemical
and physical traits of coffee and predict the age of the sample. This model can be used by roasters to help predict how old their coffee can be before it needs to be sold. The goal
of this model is to reduce the environmental and economic impacts of the coffee industry by reducing the waste produced by prematurely disposing of the coffee beans. 

### Input and output variable:

#### Input:
1. Date
2. Triplicate_#
3. Roast Level
4. FTIR Lipid Absorbance
5. FTIR Carboxylic Acid Absorbance
6. FTIR Peak Ratio
7. GCMS 2-Methylfuran Area (%)
8. GCMS Methanethiol Area (%)
9. GCMS Peak Ratio
10. TGA air onset deg (C)
11. TGA N2 residual wt at 700C
12. TGA/DSC Air exo pk (C)
13. TGA/DSC DH 250-360, 200-360	DSC endo pk (C)
14. DSC DH 40-180C (J/g)
15. Density (g/cm^3)
16. Moisture
17. Brew pH
18. Brew TDS
19. Brew Color L
20. Brew Color a
21. Brew Color b

#### Output: 

Sample Age (days)

### Machine Learning Algorithms

There are a large variety of machine learning models. Without trying a couple of the models, we have no way of knowing which one is correct. So, this project tested five different types of models. 

1. Linear Regression (Linear Model)
2. k-Nearest Neighbors (k-NN) (Instance-Based Learning)
3. Decision Tree (Tree-Based Model)
4. Support Vector Machine (SVM) (Support Vector Model)
5. Gradient Boosting Machine (XGBoost) (Ensemble Model)

XGBoost was chosen because it consistently had the highest R2, RSME, and MAE values. Further, it was hyperparameter tuned using a Bayasian optimization, which was chosen because it resulted in the most improvement of the accuracy of the model in comparison to grid search and random search. 

### Dataset used

The dataset used is called Coffee_Freshness_Dataset_FA2024.xlsx and is provided in this repo. Before any machine learning was done, the dataset was cleaned and normalized. This allowed for the machine learning process to be more accurate. Also, various columns in the dataset were dropped because they either weren't collected, didn't have physical meaning, or were represented more clearly by another test that was done that is in the dataset. 

All preprocessing and machine learning choices made using this dataset can be found in the .ipynb file attached in this repo. 

# Public App

https://huggingface.co/spaces/mayafetzer/CoffeeApp

# Ethics Analysis

Deon's Ethics Checklist: https://huggingface.co/spaces/mayafetzer/CoffeeDeonsChecklist

Ethics DataCAD: https://huggingface.co/spaces/mayafetzer/CoffeeEthicsDataCAD

## Authors
Maya Fetzer and Dr. Kat Wakabayashi

Bucknell University Department of Chemical Engineering

## Acknowledgements 
#### This research was only possible due to the help of the following people, companies, and organizations:

Bucknell University Department of Engineering

Bucknell Robert R. Rooke Professorship 

Monica Hoover - Bucknell University Department of Environmental Engineering

Diane Hall - Bucknell University Department of Chemical Engineering

Dr. Jude Okolie - Bucknell University Departmment of Chemical Engineering

Ryan Koes - Bucknell University Department of Computer Science and Engineering

Sean O'Connor  - Bucknell University Department of Computer Science and Engineering

Brewista

Acaia

### Code acknowledgement:
The code present in this repository was written using the help of GPTs, including OpenAI ChatGPT-4o and Google Gemini. 

## Files in this repository

Coffee_Freshness_Dataset_FA2024.xlsx - the dataset used to train the ML model 

coffee_ethics_checklist.md - the Deon's Ethics Checklist for this ML model 

CHEG472_Machine_Learning_Project.ibynb - Google Colab file that shows the steps to developing the ML model

app.py - gradio app to launch public app in Hugging Face

best_model_bayes.pkl - ML model

scaler.pkl - scaler model 

requirements.txt - requirements for Hugging Face app 

## Prerequisites

### Python
Ensure you have Python 3.10 or later installed.

### Libraries
Install the following libraries using pip:

```
pip install gradio
pip install pandas
pip install numpy
pip install sklearn
pip install openpyxl
pip install pickle5
```

### Explanation

- **Streamlit**: Provides a simple way to create interactive web applications with Python.
- **Matplotlib**: Used for creating visualizations like plots and charts.
- **Pandas**: Offers data structures and analysis tools for working with tabular data.
- **NumPy**: Provides efficient numerical operations and arrays.
- **Sklearn**: Machine learning library.
- **Gradio:** A user-friendly library for building and sharing interactive web interfaces for machine learning models and data science projects.
- **Openpyxl:** A library for reading and writing Excel files in the XLSX format, making it easy to work with spreadsheets directly from Python.
- **Pickle5:** An enhanced version of Python's pickle module for object serialization and
