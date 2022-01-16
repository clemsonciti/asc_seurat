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

