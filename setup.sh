#!/bin/bash 

R -e 'install.packages("openssl", dep = T)'
R -e 'install.packages("devtools", dep = T)'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dynplot", ref = "devel", force = T)'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dyno")'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dynfeature")'

# Install CRAN packages
# biocmanager
R -e 'install.packages("BiocManager", dep = T)'

# tidyverse
R -e 'install.packages("tidyverse", dep = T)'

# seurat
R -e 'install.packages("Seurat", dep = T)'
R -e 'install.packages("SeuratObject", dep = T)'
# patchwork
R -e 'install.packages("patchwork", dep = T)'
# vroom
R -e 'install.packages("vroom", dep = T)'
# ggplot2
R -e 'install.packages("ggplot2", dep = T)'
# svglite
R -e 'install.packages("svglite", dep = T)'
# circlize
R -e 'install.packages("circlize", dep = T)'
# reactable
R -e 'install.packages("reactable", dep = T)'
# sctransform
R -e 'install.packages("sctransform", dep = T)'
# shiny
R -e 'install.packages("shiny", dep = T)'
R -e 'install.packages("shinyWidgets", dep = T)'
R -e 'install.packages("shinyFeedback", dep = T)'
R -e 'install.packages("shinycssloaders", dep = T)'
# rclipboard
R -e 'install.packages("rclipboard", dep = T)'
# future
R -e 'install.packages("future", dep = T)'
# ggthemes
R -e 'install.packages("ggthemes", dep = T)'
# metap (must install multtest first)
R -e 'BiocManager::install("multtest")'
R -e 'install.packages("metap", dep = T)'
# DT
R -e 'install.packages("DT", dep = T)'
# dplyr
R -e 'install.packages("dplyr", dep = T)'
# hdf5r
R -e 'install.packages("hdf5r", dep = T)'

# Install Bioconductor packages
# complex heatmap
R -e 'install.packages("cluster", dep = T)'
R -e 'BiocManager::install("ComplexHeatmap")'
# tradeseq
R -e 'BiocManager::install("tradeSeq")'
# single cell experiment
R -e 'BiocManager::install("SingleCellExperiment")'
# slingshot
R -e 'BiocManager::install("slingshot")'
# biomart
R -e 'BiocManager::install("biomaRt")'
# topgo
R -e 'BiocManager::install("topGO")'
# glmGamPoi
R -e 'BiocManager::install("glmGamPoi")'
