#!/bin/bash 

R -e 'install.packages("openssl", dep = T, repos="https://archive.linux.duke.edu/cran/", verbose = FALSE)'
R -e 'install.packages("devtools", dep = T, repos="https://archive.linux.duke.edu/cran/", verbose = FALSE)'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dynplot", ref = "devel", force = T)'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dyno")'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dynfeature")'

# Install CRAN packages

while read -r line; 
do 
  stringarray=($line)
  if [ ${stringarray[0]} = "CRAN" ]; then
    cmd="R -e 'install.packages(${stringarray[1]}, dep = T, repos=\"https://archive.linux.duke.edu/cran/\")'"
  else
    cmd="R -e 'BiocManager::install(${stringarray[1]})'"
  fi
  echo ${stringarray[1]} $cmd
  $cmd
done < requirements.txt


# biocmanager
#R -e 'install.packages("BiocManager", dep = T, repos="https://archive.linux.duke.edu/cran/", verbose = FALSE')
# tidyverse
#R -e 'install.packages("tidyverse", dep = T, repos="https://archive.linux.duke.edu/cran/", verbose = FALSE')
# seurat
#R -e 'install.packages("Seurat", dep = T, repos="https://archive.linux.duke.edu/cran/", verbose = FALSE')
#R -e 'install.packages("SeuratObject", dep = T, repos="https://archive.linux.duke.edu/cran/", verbose = FALSE')
# patchwork
#R -e 'install.packages("patchwork", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# vroom
#R -e 'install.packages("vroom", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# ggplot2
#R -e 'install.packages("ggplot2", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# svglite
#R -e 'install.packages("svglite", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
## circlize
#R -e 'install.packages("circlize", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# reactable
#R -e 'install.packages("reactable", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# sctransform
#R -e 'install.packages("sctransform", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# shiny
#R -e 'install.packages("shiny", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
#R -e 'install.packages("shinyWidgets", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
#R -e 'install.packages("shinyFeedback", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
#R -e 'install.packages("shinycssloaders", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# rclipboard
#R -e 'install.packages("rclipboard", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# future
#R -e 'install.packages("future", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# ggthemes
#R -e 'install.packages("ggthemes", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# metap (must install multtest first)
#R -e 'BiocManager::install("multtest"), verbose = FALSE'
#R -e 'install.packages("metap", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# DT
#R -e 'install.packages("DT", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# dplyr
#R -e 'install.packages("dplyr", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
# hdf5r
#R -e 'install.packages("hdf5r", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'

# Install Bioconductor packages
# complex heatmap
#R -e 'install.packages("cluster", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'
#R -e 'BiocManager::install("ComplexHeatmap")'
# tradeseq
#R -e 'install.packages("RcppEigen", dep = T, repos="https://archive.linux.duke.edu/cran/"), verbose = FALSE'

#R -e 'BiocManager::install("tradeSeq"), verbose = FALSE'
# single cell experiment
#R -e 'BiocManager::install("SingleCellExperiment"), verbose = FALSE'
# slingshot
#R -e 'BiocManager::install("slingshot"), verbose = FALSE'
# biomart
#R -e 'BiocManager::install("biomaRt"), verbose = FALSE'
# topgo
#R -e 'BiocManager::install("topGO"), verbose = FALSE'
# glmGamPoi
#R -e 'BiocManager::install("glmGamPoi"), verbose = FALSE'
