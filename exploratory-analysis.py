B1. Code
import csv
import pandas as pd

# Specify the CSV file path
csv_file_path = r'C:\Users\kolgi\d207\medical_clean.csv'

# Open the CSV file in read mode
with open(csv_file_path, 'r') as file:
    
    # Create a CSV reader object that returns dictionaries
    csv_reader = csv.DictReader(file)

# Specify the CSV file path
csv_file_path = r'C:\Users\kolgi\d207\medical_clean.csv'

# Read the CSV file into a pandas DataFrame
df = pd.read_csv(csv_file_path)

# Display the head of the DataFrame (first few rows)
print("Head of the DataFrame:")
print(df.head())

# Display a summary of the DataFrame
print("\nSummary of the DataFrame:")
print(df.info())

# Display the structure of the DataFrame
print("\nStructure of the DataFrame:")
print(df.dtypes)

import numpy as np
from scipy.stats import chi2_contingency

# List of medical condition columns
medical_condition_columns = ['HighBlood', 'Stroke', 'Diabetes', 'Overweight', 
                             'Arthritis', 'Hyperlipidemia', 'BackPain', 
                             'Anxiety', 'Allergic_rhinitis', 
                             'Reflux_esophagitis', 'Asthma']

# Perform chi-square tests for each medical condition and gender
for condition in medical_condition_columns:
    # Create a contingency table for the medical condition and gender
    contingency_table = pd.crosstab(df[condition], df['Gender'])
    
    # Perform the chi-square test
    chi2, p, dof, expected = chi2_contingency(contingency_table)
    
    # Print the results
    print(f"Chi-square test for {condition} and Gender:")
    print("Contingency Table:")
    print(contingency_table)
    print("Chi-square statistic:", chi2)
    print("P-value:", p)
    print("Expected frequencies:", expected)
   
    alpha = 0.05
    if p < alpha:
        print("There is a significant association between the variables.")
    else:
        print("There is NO significant association between the variables.")
    print("\n" + "="*40 + "\n")
