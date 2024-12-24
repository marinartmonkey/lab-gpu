#!/bin/bash
#SBATCH --job-name=reduc_oper
#SBATCH --output=reduc_oper_%j.out
#SBATCH --error=reduc_oper_%j.err
#SBATCH --partition=hpc-bio-pascal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=00:30:00

module load anaconda/2023.03

# Lanzar el script Python con ipython y pasar el valor de 5 * 10^7
ipython reduc-operation-array_par-alumno08.py -- 50000000

