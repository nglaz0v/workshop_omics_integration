# Omics integration and systems biology - 2024
https://nbisweden.github.io/workshop_omics_integration/schedule.html

[Instructions for course OMICSINT_H24](https://nbisweden.github.io/workshop_omics_integration/session_intro/Instructions%20for%20course%20OMICSINT_H24.pdf)

## Introduction and contextualization
- [course intro](https://nbisweden.github.io/workshop_omics_integration/session_intro/course_intro.pdf)

## Day 1
### Machine Learning view of Omics integration
- [Machine Learning Omics Integration](https://nbisweden.github.io/workshop_omics_integration/session_ml/MachineLearningOmicsIntegration_Oskolkov.pdf)

### Feature Selection and Supervised Omics integration
- [Supervised Omics Integration](https://nbisweden.github.io/workshop_omics_integration/session_ml/SupervisedOMICsIntegration/lab/SupervisedOmicsIntegration_Oskolkov.pdf)
- [Feature Selection lab Notebook](https://nbisweden.github.io/workshop_omics_integration/session_ml/FeatureSelectionIntegrOMICs/lab/OmicsIntegration_FeatureSelection.html)
- [Supervised Integration lab Notebook](https://nbisweden.github.io/workshop_omics_integration/session_ml/SupervisedOMICsIntegration/lab/supervised_omics_integr_CLL.html)

### Unsupervised Omics integration
- [Unsupervised Omics Integration](https://nbisweden.github.io/workshop_omics_integration/session_ml/UnsupervisedOMICsIntegration/lab/Unsupervised_OmicsIntegration_Oskolkov.pdf)
- [Unsupervised Integration lab Notebook](https://nbisweden.github.io/workshop_omics_integration/session_ml/UnsupervisedOMICsIntegration/Multi-OMICs%20Factor%20Analysis%20(MOFA)%20and%20Unsupervised%20Data%20Learning.html)

## Day 2
### Single Cell Omics integration
- [Single Cell Integration](https://nbisweden.github.io/workshop_omics_integration/session_ml/SingleCell/lab/Single_Cell_Integration_Oskolkov.pdf)
- [Single cell omics integration lab Notebook](https://nbisweden.github.io/workshop_omics_integration/session_ml/SingleCell/lab/OMICS%20Integration%20and%20Systems%20Biology%20Course_%20Single%20Cell%20Omics%20Integration.html)
- [UMAP](https://nbisweden.github.io/workshop_omics_integration/session_ml/UMAP_DataIntegration/lab/UMAP_DataIntegration_Oskolkov.pdf)
- [UMAP lab Notebook](https://nbisweden.github.io/workshop_omics_integration/session_ml/UMAP_DataIntegration/UMAP_DataIntegration.html)

### Deep Learning for Omics integration
- [Deep Learning Omics Integration](https://nbisweden.github.io/workshop_omics_integration/session_ml/DeepLearningDataIntegration/lab/DeepLearningOmicsIntegration_Oskolkov.pdf)
- [Deep Learning for data integration lab html](https://nbisweden.github.io/workshop_omics_integration/session_ml/DeepLearningDataIntegration/lab/DeepLearningDataIntegration.html)

## Day 3
### Introduction to biological network analysis
- [Introduction](https://nbisweden.github.io/workshop_omics_integration/session_topology/lab/lectures/1Introduction.pdf)
- [Network inference](https://nbisweden.github.io/workshop_omics_integration/session_topology/lab/lectures/2Network_inference.pdf)
- [Community analysis](https://nbisweden.github.io/workshop_omics_integration/session_topology/lab/lectures/3Community_analysis.pdf)
- [Topology lab Notebook part 1](https://nbisweden.github.io/workshop_omics_integration/session_topology/lab/topology_lab_part1.html)
- [Topology lab Notebook part 2](https://nbisweden.github.io/workshop_omics_integration/session_topology/lab/topology_lab_part2.html)
- [Topology lab Notebook part 3](https://nbisweden.github.io/workshop_omics_integration/session_topology/lab/topology_lab_part3.html)

### Machine learning on Graphs
- [Graph neural networks (html)](https://nbisweden.github.io/workshop_omics_integration/session_graphnn/GNN_main.html)
- [Graph neural networks (notebook file)](https://nbisweden.github.io/workshop_omics_integration/session_graphnn/GNN_main.ipynb)
- [Graph neural networks lab (html)](https://nbisweden.github.io/workshop_omics_integration/session_graphnn/GNN_lab.html)
- [Graph neural networks lab (notebook file)](https://nbisweden.github.io/workshop_omics_integration/session_graphnn/GNN_lab.ipynb)
- [Data engineering tutorial](https://nbisweden.github.io/workshop_omics_integration/session_graphnn/environment.html)

## Day 4
### Genome-scale metabolic models for integration
- [Introduction – Constraint-based modeling concepts](https://nbisweden.github.io/workshop_omics_integration/session_gems/GEMs_concept.pdf)

### Non-negative matrix factorization
- [Non-negative Matrix Factorization](https://nbisweden.github.io/workshop_omics_integration/session_nmf/NMF_main.html)
- [NMF lab Notebook](https://nbisweden.github.io/workshop_omics_integration/session_nmf/NMF_lab.html)

### Similarity network fusion
- [Similarity Network Fusion](https://nbisweden.github.io/workshop_omics_integration/session_nmf/SNF_main.html)
- [SNF lab Notebook](https://nbisweden.github.io/workshop_omics_integration/session_nmf/SNF_lab.html)

## Day 5
### Gene set analysis and reporter features
- [Gene Set Analysis via GEMs](https://nbisweden.github.io/workshop_omics_integration/session_gsa/GEM_GSA.pdf)
- [Gene Set Analysis lab Notebook](https://nbisweden.github.io/workshop_omics_integration/session_gsa/GEM_GSA.html)

[Closing remarks!](https://nbisweden.github.io/workshop_omics_integration/session_intro/closing%20remark.pdf)

---
### How I Evaluate Omics Integration:
1) Convert to common space:
    - Neural Networks
    - SNF
    - UMAP
2) Explicitly model distributions:
    - MOFA
    - Bayesian Networks
3) Extract common variation:
    - PLS
    - CCA
    - Factor Analysis
    
### What Method of Integration to Select?
| | Linear | Non-Linear |
|:---|---|---|
| Supervised | PLS / OPLS / mixOmics, LASSO / Ridge / Elastic Net | Neural Networks, Random Forest, Bayessian Networkds |
| Unsupervised | Factor Analysis / MOFA | Autoencoder, SNF, UMAP, Clustering of Clusters |
For Example:
1) With ~100 samples it is a good idea to do **linear** Omics integration
2) T2D is a phenotype of interest, therefore **supervised** integration
---

[![Build and Push Docker Images for Labs](https://github.com/NBISweden/workshop_omics_integration/actions/workflows/Build%20and%20Push%20Docker%20Images%20for%20Labs.yml/badge.svg)](https://github.com/NBISweden/workshop_omics_integration/actions/workflows/Build%20and%20Push%20Docker%20Images%20for%20Labs.yml)

=========================================
# Omics Integration and Systems Biology Workshop, 2024

Welcome to the **Omics Integration and Systems Biology Workshop** GitHub repository! This repository contains resources, materials, and updates related to the 2024 workshop.

## Course Information

This workshop focuses on the integration of omics data and systems biology approaches. Keep an eye on this repository as it will receive frequent updates. Make sure to also visit our [course homepage on Canvas](https://uppsala.instructure.com/courses/96642) for additional materials and information.

## Table of Contents

- [Practical Information](https://nbisweden.github.io/workshop_omics_integration/practical_info.html)
- [Workshop Schedule](https://nbisweden.github.io/workshop_omics_integration/schedule.html)
- [Reading Materials](https://nbisweden.github.io/workshop_omics_integration/reading_materials.html)
- [Pre-course Preparation](https://nbisweden.github.io/workshop_omics_integration/precourse.html)
- [Invited Speakers](https://nbisweden.github.io/workshop_omics_integration/invited_speakers.html)

## Important Links

- **Course homepage**: [GitHub Pages](https://nbisweden.github.io/workshop_omics_integration/)

- **Course homepage**: [Canvas Course Page](https://uppsala.instructure.com/courses/96642)

## Contact Information
For information about this course please contact through the email `rasool.saghaleyni@nbis.se` or `edu.omics-integration.nbis.se`.

## For contribution

1. First either create an issue or pick one of the currently available issues.
2. Create a branch based on the issue from OMICSINT_H24 brnach.
3. Make your changes on the lab, Dockerfile, [lab_name]_env.yml, [lab_name].ipynb or [lab_name].rmd
4. Make sure that the docker works properly by testing it on your local machine.
5. Make a PR to OMICSINT_H24 brnach and assign it to one of the reviewers.

## Course previous itterations

- [Online 8 February - 10 February 2023][8]
- [Online 18 March - 22 April 2022, CZI Uppdragsutbilding][6] ([github repo][7])  
- [Online 6 - 10 September 2021, ELIXIR Omics Integration][5]
- [Online 22 - 23 July 2021, as part of the ICMB / ECCB][4]
- [Online 19 - 23 April 2021][3]
- [Lund 5 - 9 October 2020][2]
- [Stockholm 9 - 12 Sep 2019][1]

[8]: https://uppsala.instructure.com/courses/75208
[7]: https://github.com/NBISweden/sms6012_CZIomicsint
[6]: https://uppsala.instructure.com/courses/67276
[5]: https://github.com/NBISweden/workshop_omics_integration/releases/tag/course2109
[4]: https://github.com/NBISweden/workshop_omicsint_ISMBECCB/
[3]: https://github.com/NBISweden/workshop_omics_integration/tree/course2104
[2]: https://github.com/NBISweden/workshop_omics_integration/tree/course2010
[1]: https://github.com/NBISweden/workshop_omics_integration/tree/c60abb4579849bb8a0acd756d1aa9e71125265ac
