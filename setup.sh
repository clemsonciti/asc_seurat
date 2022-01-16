#!/bin/bash 

R -e 'install.packages("openssl", dep = T, repos="https://archive.linux.duke.edu/cran/")'
R -e 'install.packages("devtools", dep = T, repos="https://archive.linux.duke.edu/cran/")'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dynplot", ref = "devel", force = T)'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dyno")'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dynfeature")'

# Install CRAN packages
# biocmanager
R -e 'install.packages("BiocManager", dep = T, repos="https://archive.linux.duke.edu/cran/")'

# tidyverse
R -e 'install.packages("tidyverse", dep = T, repos="https://archive.linux.duke.edu/cran/")'

# seurat
R -e 'install.packages("Seurat", dep = T, repos="https://archive.linux.duke.edu/cran/")'
R -e 'install.packages("SeuratObject", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# patchwork
R -e 'install.packages("patchwork", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# vroom
R -e 'install.packages("vroom", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# ggplot2
R -e 'install.packages("ggplot2", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# svglite
R -e 'install.packages("svglite", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# circlize
R -e 'install.packages("circlize", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# reactable
R -e 'install.packages("reactable", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# sctransform
R -e 'install.packages("sctransform", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# shiny
R -e 'install.packages("shiny", dep = T, repos="https://archive.linux.duke.edu/cran/")'
R -e 'install.packages("shinyWidgets", dep = T, repos="https://archive.linux.duke.edu/cran/")'
R -e 'install.packages("shinyFeedback", dep = T, repos="https://archive.linux.duke.edu/cran/")'
R -e 'install.packages("shinycssloaders", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# rclipboard
R -e 'install.packages("rclipboard", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# future
R -e 'install.packages("future", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# ggthemes
R -e 'install.packages("ggthemes", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# metap (must install multtest first)
R -e 'BiocManager::install("multtest")'
R -e 'install.packages("metap", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# DT
R -e 'install.packages("DT", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# dplyr
R -e 'install.packages("dplyr", dep = T, repos="https://archive.linux.duke.edu/cran/")'
# hdf5r
R -e 'install.packages("hdf5r", dep = T, repos="https://archive.linux.duke.edu/cran/")'

# Install Bioconductor packages
# complex heatmap
R -e 'install.packages("cluster", dep = T, repos="https://archive.linux.duke.edu/cran/")'
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
