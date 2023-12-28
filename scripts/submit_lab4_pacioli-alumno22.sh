#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --job-name=file-cut
#SBATCH --output=slurm-%J.out
#SBATCH --chdir=/home/alumno22/lab4
#SBATCH --cpus-per-task=4



srun -n 1 ./file-cut.sh
