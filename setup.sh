#!/bin/bash 

# This is a combination of Dockerfile, setup steps from the kirstlab/asc_seurat:dynverse, and init_app.sh

R -e 'install.packages("openssl", dep = T, repos="https://archive.linux.duke.edu/cran/", verbose = FALSE)'
R -e 'install.packages("devtools", dep = T, repos="https://archive.linux.duke.edu/cran/", verbose = FALSE)'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dynplot", ref = "devel", force = T)'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dyno")'
R -e 'Sys.setenv(GITHUB_PAT = "28415a8c2138cf40e035c7c474add12b5885ceae"); devtools::install_github("dynverse/dynfeature")'

# Install CRAN packages

while read -r line; 
do 
  stringarray=($line)
  echo ${stringarray[1]} "************************************************************"
  echo "******************************************************************************"
  echo "******************************************************************************"
  echo "******************************************************************************"

  if [ ${stringarray[0]} = "CRAN" ]; then
    R -e "install.packages('${stringarray[1]}', dep = T, repos='https://archive.linux.duke.edu/cran/')"
  else
    R -e "BiocManager::install('${stringarray[1]}')"
  fi
  
  echo "******************************************************************************"
  echo "******************************************************************************"
  echo "******************************************************************************"
done < requirements.txt

if [ ! -d "data" ]; then
  # Create dir
  mkdir data data/example_PBMC

  # Download data
  wget https://cf.10xgenomics.com/samples/cell/pbmc3k/pbmc3k_filtered_gene_bc_matrices.tar.gz
  tar zxvf pbmc3k_filtered_gene_bc_matrices.tar.gz
  mv filtered_gene_bc_matrices/hg19/* data/example_PBMC
  rm -rf filtered_gene_bc_matrices pbmc3k_filtered_gene_bc_matrices.tar.gz
fi

## RDS_files
if [ ! -d "RDS_files" ]; then
  # Create dir
  mkdir RDS_files
fi
