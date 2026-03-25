# Python Assignment

### Due: 1 May 2026

## Summary

### Document code and complete missing components

Your colleague, Dr. X, has provided a partially written Python script to analyze shared data files.

You will:
- Translate cytochrome-b sequences to amino acids for 12 penguin species  
- Calculate GC content and amino acid molecular weight  
- Add these values to a DataFrame containing average adult body mass  
- Create at least one plot showing a relationship between:
  - body mass and GC content **or**
  - body mass and molecular weight  

Some parts of the script are functional but poorly documented. You will improve documentation and complete missing sections based on provided pseudocode and comments.

### Your final product

You will create a **single Jupyter notebook** that documents and executes the entire workflow.

---

## Repository & Submission (IMPORTANT)

You will complete this assignment in a **new GitHub repository** and submit that repository.

- Create a **new, empty repository** named:  
  `LastName_EEOB5460_Spring2026`
- Upload all required files and your completed notebook to this repository  
- Ensure the repository is **self-contained**:
  - someone should be able to clone it and run your notebook without issues  
- Submit the **URL of your GitHub repository** to Canvas by the deadline  

---

## Details

- Download required files from the course repository:  
  https://github.com/EEOB-BioData/BCB5460_Spring2026/tree/main/assignments/Python

  Required files:
  - `sequence_translate.py` (this is this instructions and start to the assignment)
  - `penguins_mass.csv`
  - `penguins_cytb.fasta`

- Install the BioPython library before running the script  

- In your Jupyter notebook:
  - Annotate and execute the provided code  
  - Complete missing sections based on pseudocode  
  - Clearly document all steps and functions  
  - Cite any external resources used  

- Commit and push your work to GitHub  

---

## Deliverables

Your repository must include:

- A Jupyter notebook that:
  - runs from top to bottom without errors  
  - includes clear markdown explanations  
  - documents all functions and steps  

- Completed code for all tasks (1–11)  

- At least one plot visualizing:
  - body mass vs GC content **or**
  - body mass vs molecular weight  

- A final DataFrame including:
  - species  
  - body mass  
  - GC content  
  - molecular weight  

- Required data files  

- No unrelated course materials  

---

## Getting Started Tips

- Use BioPython’s `SeqIO` to read FASTA files  
- Use `.translate()` for amino acid sequences  
- Consider writing helper functions for:
  - GC content  
  - molecular weight  

---

## Grading Criteria

- Code correctness (35%)  
- Documentation and clarity (30%)  
- Data analysis and visualization (20%)  
- Reproducibility (10%)  
- Following directions (5%)  
