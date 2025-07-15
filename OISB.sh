#!/bin/bash -x

REPO=$HOME/git/workshop_omics_integration

# for f in $HOME/Документы/MO/*.pdf; do open "${f}"; done

# open $REPO/session_intro/Instructions\ for\ course\ OMICSINT_H24.pdf
# open $REPO/session_intro/course_intro.pdf
# open $REPO/session_intro/closing\ remark.pdf

# Machine Learning view of Omics integration
open $REPO/session_ml/MachineLearningOmicsIntegration_Oskolkov.pdf

# Feature Selection and Supervised Omics integration
open $REPO/session_ml/SupervisedOMICsIntegration/lab/SupervisedOmicsIntegration_Oskolkov.pdf
firefox $REPO/session_ml/FeatureSelectionIntegrOMICs/lab/OmicsIntegration_FeatureSelection.html
rstudio $REPO/session_ml/FeatureSelectionIntegrOMICs/lab/OmicsIntegration_FeatureSelection.Rmd
firefox $REPO/session_ml/SupervisedOMICsIntegration/lab/supervised_omics_integr_CLL.html
rstudio $REPO/session_ml/SupervisedOMICsIntegration/lab/supervised_omics_integr_CLL.Rmd

# Unsupervised Omics integration
open $REPO/session_ml/UnsupervisedOMICsIntegration/lab/Unsupervised_OmicsIntegration_Oskolkov.pdf
firefox $REPO/session_ml/UnsupervisedOMICsIntegration/Multi-OMICs\ Factor\ Analysis\ \(MOFA\)\ and\ Unsupervised\ Data\ Learning.html
rstudio $REPO/session_ml/UnsupervisedOMICsIntegration/lab/UnsupervisedOMICsIntegration.Rmd

# Multi-Omics Factor Analysis (MOFA)
open $REPO/session_mofa/lab/presentation.pdf
firefox $REPO/session_mofa/MOFA2_CLL.html
rstudio $REPO/session_mofa/lab/MOFA2_CLL.Rmd

# Single cell omics integration
open $REPO/session_ml/SingleCell/lab/Single_Cell_Integration_Oskolkov.pdf
firefox $REPO/session_ml/SingleCell/lab/OMICS\ Integration\ and\ Systems\ Biology\ Course_\ Single\ Cell\ Omics\ Integration.html
rstudio $REPO/session_ml/SingleCell/lab/SingleCell_OmicsIntegration.Rmd
open $REPO/session_ml/UMAP_DataIntegration/lab/UMAP_DataIntegration_Oskolkov.pdf
firefox $REPO/session_ml/UMAP_DataIntegration/UMAP_DataIntegration.html
jupyter-notebook $REPO/session_ml/UMAP_DataIntegration/UMAP_DataIntegration.ipynb  # lab/UMAP_DataIntegration.ipynb

# Deep Learning for Omics integration
open $REPO/session_ml/DeepLearningDataIntegration/lab/DeepLearningOmicsIntegration_Oskolkov.pdf
firefox $REPO/session_ml/DeepLearningDataIntegration/lab/DeepLearningDataIntegration.html
jupyter-notebook $REPO/session_ml/DeepLearningDataIntegration/lab/DeepLearningDataIntegration.ipynb
python $REPO/session_ml/DeepLearningDataIntegration/lab/scripts/CITEseq.py
python $REPO/session_ml/DeepLearningDataIntegration/lab/scripts/scNMTseq.py
python $REPO/session_ml/DeepLearningDataIntegration/lab/scripts/dim_reduct_CITEseq.py
python $REPO/session_ml/DeepLearningDataIntegration/lab/scripts/dim_reduct_scNMTseq.py
python $REPO/session_ml/DeepLearningDataIntegration/lab/scripts/tSNE_on_Autoencoder_CITEseq.py
python $REPO/session_ml/DeepLearningDataIntegration/lab/scripts/tSNE_on_Autoencoder_scNMTseq.py

# Introduction to biological network analysis
open $REPO/session_topology/lab/lectures/1Introduction.pdf
open $REPO/session_topology/lab/lectures/2Network_inference.pdf
open $REPO/session_topology/lab/lectures/3Community_analysis.pdf
open $REPO/session_topology/lab/lectures/lecture_short.pdf
open $REPO/session_topology/lab/lectures/Application_net_analysis.pdf
firefox $REPO/session_topology/lab/topology_lab_part1.html
firefox $REPO/session_topology/lab/topology_lab_part2.html
firefox $REPO/session_topology/lab/topology_lab_part3.html
jupyter-notebook $REPO/session_topology/lab.ipynb
jupyter-notebook $REPO/session_topology/lab/topology_lab_part1.ipynb
jupyter-notebook $REPO/session_topology/lab/topology_lab_part2.ipynb
jupyter-notebook $REPO/session_topology/lab/topology_lab_part3.ipynb

# Machine learning on Graphs
firefox $REPO/session_graphnn/GNN_main.html
jupyter-notebook $REPO/session_graphnn/GNN_main.ipynb
firefox $REPO/session_graphnn/GNN_lab.html
jupyter-notebook $REPO/session_graphnn/GNN_lab.ipynb
firefox $REPO/session_graphnn/environment.html

# Genome-scale metabolic models for integration
open $REPO/session_gems/GEMs_concept.pdf
open $REPO/session_gems/MetabModel_JLR_distrib.pdf
jupyter-notebook $REPO/session_gems/lab/01-Getting-started.ipynb
jupyter-notebook $REPO/session_gems/lab/02-Genome-scale-metabolic-models.ipynb
jupyter-notebook $REPO/session_gems/lab/03-Pathway-visualization.ipynb
jupyter-notebook $REPO/session_gems/lab/04-Analyzing-metabolic-models.ipynb
jupyter-notebook $REPO/session_gems/lab/05-Manipulating-models.ipynb
jupyter-notebook $REPO/session_gems/lab/06-Gene-essentiality.ipynb
jupyter-notebook $REPO/session_gems/lab/07-Theoretical-maximum-yields.ipynb
jupyter-notebook $REPO/session_gems/lab/08-Predict-gene-knockout-strategies.ipynb
jupyter-notebook $REPO/session_gems/lab/09-Predict-gene-expression-modulation-targets.ipynb
jupyter-notebook $REPO/session_gems/lab/10-dynamic-fba.ipynb

# Non-negative matrix factorization
firefox $REPO/session_nmf/NMF_main.html
firefox $REPO/session_nmf/NMF_lab.html
jupyter-notebook $REPO/session_nmf/NMF_main.ipynb
jupyter-notebook $REPO/session_nmf/lab/NMF_lab.ipynb

# Similarity network fusion
firefox $REPO/session_nmf/SNF_main.html
firefox $REPO/session_nmf/SNF_lab.html
jupyter-notebook $REPO/session_nmf/SNF_main.ipynb
jupyter-notebook $REPO/session_nmf/lab/SNF_lab.ipynb

# Gene set analysis and reporter features
open $REPO/session_gsa/GEM_GSA.pdf
firefox $REPO/session_gsa/GEM_GSA.html
rstudio $REPO/session_gsa/GEM_GSA.Rmd  # lab/GEM_GSA.Rmd
rstudio $REPO/session_gsa/Gene_Set_analyses_Lecture.Rmd  # GSA_presentation_files/Gene-Set-analyses-Lecture.Rmd
jupyter-notebook $REPO/session_gsa/GEM_GSC_extraction.ipynb
