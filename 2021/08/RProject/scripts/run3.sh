#!/bin/bash -l
#PBS -N EXAMPLE3_3
#PBS -l ncpus=1
#PBS -l cputype=6140
#PBS -l mem=8gb
#PBS -l walltime=8:00:00
#PBS -e scripts/run3_error.txt
#PBS -o scripts/run3_output.txt

cd $PBS_O_WORKDIR
module load gdal/3.2.1-foss-2020b
module load r/4.0.3-foss-2020b
R -e "ngrid=100; nsamp=1000; seed=3; source('./main.R');"