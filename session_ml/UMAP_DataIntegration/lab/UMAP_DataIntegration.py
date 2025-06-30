#!/usr/bin/env python
# coding: utf-8
# %% [markdown]
# ### UMAP for Data Integration
#
# Here we will overlap graphs from single cell RNAseq and Proteomics data sets from the CITE-seq technology, and produce a consensus / integrative OMICs UMAP plot. The idea is to convert the two data types into graphs, i.e. non-parametric space where they forget their technological differences, and overlap the graphs. The resulting graph will be used for constructing the UMAP embeddings.

# %%
from IPython.display import Image
Image('assests/UMAP_DataIntegration.png', width=2000)

# %% [markdown]
# We will start with reading and log-transforming the OMICs data.

# %%
import os
import numpy as np
import pandas as pd
from tensorflow.keras.models import Model
import matplotlib.pyplot as plt
from sklearn.manifold import TSNE
from tensorflow.keras.utils import plot_model
from tensorflow.keras.layers import Input, Dense
from tensorflow.keras.layers import concatenate

import warnings
warnings.filterwarnings("ignore")

scRNAseq = pd.read_csv('data/scRNAseq.txt', sep='\t')
scProteomics = pd.read_csv('data/scProteomics.txt', sep='\t')

X_scRNAseq = scRNAseq.values[:, 0:(scRNAseq.shape[1]-1)]
Y_scRNAseq = scRNAseq.values[:, scRNAseq.shape[1]-1]
X_scProteomics = scProteomics.values[:, 0:(scProteomics.shape[1]-1)]
Y_scProteomics = scProteomics.values[:, scProteomics.shape[1]-1]

X_scRNAseq = np.log(X_scRNAseq + 1)
X_scProteomics = np.log(X_scProteomics + 1)


# %%
X_scRNAseq.shape


# %%
X_scProteomics.shape

# %% [markdown]
# Let us display the UMAP embeddings of individual OMICs data sets. We will start with the scRNAseq dataset. As an optimal number of nearest neighbors we will choose sqrt(N) = sqrt(8617) = 93.

# %%
from umap import UMAP
from sklearn.decomposition import PCA

X_reduced = PCA(n_components = 20).fit_transform(X_scRNAseq)
model = UMAP(n_components = 2, min_dist = 1, n_neighbors = 93, init = X_reduced[:, 0:2], n_epochs = 1000, 
             verbose = 2)
umap = model.fit_transform(X_reduced)

plt.figure(figsize = (20,15))
plt.scatter(umap[:, 0], umap[:, 1], c = Y_scRNAseq, cmap = 'tab20', s = 20)
plt.title('UMAP: scRNAseq', fontsize = 25); 
plt.xlabel("UMAP1", fontsize = 22); plt.ylabel("UMAP2", fontsize = 22)
plt.show()

# %% [markdown]
# Now let us display UMAP embeddings for the scProteomics dataset of the CITE-seq sequencing technology.

# %%
X_reduced = PCA(n_components = 10).fit_transform(X_scProteomics)
model = UMAP(n_components = 2, min_dist = 0.8, n_neighbors = 93, init = X_reduced[:, 0:2], n_epochs = 1000, 
             verbose = 2)
umap = model.fit_transform(X_reduced)

plt.figure(figsize = (20,15))
plt.scatter(umap[:, 0], umap[:, 1], c = Y_scProteomics, cmap = 'tab20', s = 20)
plt.title('UMAP: scProteomics', fontsize = 25); 
plt.xlabel("UMAP1", fontsize = 22); plt.ylabel("UMAP2", fontsize = 22)
plt.show()

# %% [markdown]
# Now we will construct the intersection of the two graphs / simplicial sets, and visualize the resulting embeddings.

# %%
import umap

X_reduced_scRNAseq = PCA(n_components = 20).fit_transform(X_scRNAseq)
X_reduced_scProteomics = PCA(n_components = 10).fit_transform(X_scProteomics)

fit1 = umap.UMAP(n_components = 2, min_dist = 1, n_neighbors = 93, n_epochs = 1000, 
                 init = X_reduced_scRNAseq[:, 0:2], verbose = 2).fit(X_reduced_scRNAseq)
fit2 = umap.UMAP(n_components = 2, min_dist = 0.8, n_neighbors = 93, n_epochs = 1000, 
                 init = X_reduced_scProteomics[:, 0:2], verbose = 2).fit(X_reduced_scProteomics)
intersection = umap.umap_. general_simplicial_set_intersection(fit1.graph_, fit2.graph_, weight = 0.45)
intersection = umap.umap_.reset_local_connectivity(intersection)
embedding = umap.umap_.simplicial_set_embedding(fit1._raw_data, intersection, fit1.n_components, 
                                                fit1.learning_rate, fit1._a, fit1._b, 
                                                fit1.repulsion_strength, fit1.negative_sample_rate, 
                                                1000, 'random', np.random, fit1.metric, 
                                                fit1._metric_kwds, False, densmap_kwds=False, output_dens=False)


# %%
plt.figure(figsize = (20,15))
plt.scatter(embedding[0][:, 0], embedding[0][:, 1], c = Y_scRNAseq, cmap = 'tab20', s = 20)
plt.title('UMAP: scRNAseq + scProteomics', fontsize = 25); 
plt.xlabel("UMAP1", fontsize = 22); plt.ylabel("UMAP2", fontsize = 22)
plt.show()

