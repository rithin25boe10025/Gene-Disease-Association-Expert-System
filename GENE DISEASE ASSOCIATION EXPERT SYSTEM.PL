% --- Gene database ---
gene(tp53).
gene(brca1).
gene(egfr).
gene(apoe).
gene(httexp).

% --- Disease database ---
disease(cancer).
disease(breast_cancer).
disease(alzheimer).
disease(lung_cancer).
disease(huntingtons).

% --- Gene-Disease associations ---
associated_with(tp53, cancer).
associated_with(brca1, breast_cancer).
associated_with(egfr, lung_cancer).
associated_with(apoe, alzheimer).
associated_with(httexp, huntingtons).
associated_with(tp53, breast_cancer).
associated_with(egfr, cancer).

% --- Rule: Find all diseases linked to a gene ---
gene_diseases(Gene, Disease) :-
    associated_with(Gene, Disease).

% --- Rule: Find all genes linked to a disease ---
disease_genes(Disease, Gene) :-
    associated_with(Gene, Disease).

% --- Rule: Are two genes linked to the same disease? ---
common_disease(Gene1, Gene2, Disease) :-
    associated_with(Gene1, Disease),
    associated_with(Gene2, Disease),
    Gene1 \= Gene2.

% --- Rule: List all disease pairs sharing at least one gene ---
diseases_with_common_gene(Disease1, Disease2, Gene) :-
    associated_with(Gene, Disease1),
    associated_with(Gene, Disease2),
    Disease1 \= Disease2.

% --- Rule: Find all genes in the database ---
all_genes(Gene) :- gene(Gene).

% --- Rule: Find all diseases in the database ---
all_diseases(Disease) :- disease(Disease).
