#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=8              # runs 4 tasks on each server
#SBATCH --time=1:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=in_melt
#SBATCH --output=in_melt.out

module purge
source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash
mpirun lmp -in 2dWCA.in