# Gene-Disease-Association-Expert-System

## Overview

This project is a Prolog-based knowledge system for mapping gene-disease associations in biological research. It demonstrates the use of expert systems to explore genetic connections to diseases and provides rules for querying relationships between genes and diseases.

---

## Features

- Stores facts about genes and diseases
- Links genes to their associated diseases
- Finds genes related to a given disease
- Finds diseases related to a given gene
- Identifies common diseases and genes between multiple entities
- Supports advanced biological research queries

---

## How to Use (with SWISH Prolog Online)

1. **Access SWISH Prolog**
   - Open [https://swish.swi-prolog.org](https://swish.swi-prolog.org) in your browser.

2. **Add the Project Code**
   - Copy all Prolog code from `gene_disease_expert.pl` into the SWISH code cell.
   - Or upload your `.pl` file using the folder icon.

3. **Run Your Queries**
   - Use the queries below in the query box and click "Run!" to explore gene-disease relationships.

---

## Sample Queries

% 1. List all genes
QUERY:?-(Gene).

% 2. List all diseases
QUERY:?-all_diseases(Disease).

% 3. Which diseases are associated with a gene?
QUERY:?-gene_diseases(tp53, Disease).

% 4. Which genes are associated with a disease?
QUERY:?-disease_genes(cancer, Gene).

% 5. Are two genes linked to the same disease?
QUERY:?-common_disease(brca1, tp53, Disease).

% 6. Are two diseases linked to the same gene?
QUERY:?-diseases_with_common_gene(cancer, breast_cancer, Gene).

% 7. List all gene-disease associations
QUERY:?-associated_with(Gene, Disease).

% 8. Find all diseases with multiple gene associations
QUERY:?-disease_genes(Disease, Gene), gene(Gene2), associated_with(Gene2, Disease), Gene = Gene2.

% 9. Find all genes associated with multiple diseases
QUERY:?-associated_with(Gene, Disease1), associated_with(Gene, Disease2), Disease1 = Disease2.

% 10. Check if a gene is not associated with a disease
QUERY:?-gene(Gene), disease(Disease), + associated_with(Gene, Disease). 


---

4. **View Results**
- SWISH will display results for each query. Click "Next" for multiple answers.

---

## Author

Name: RITHIN BALA.B,
REG. NO.: 25BOE10025
Course: FUNDAMENTALS IN AIML

---




