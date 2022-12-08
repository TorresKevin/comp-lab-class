#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=12              # runs 12 tasks on each server
#SBATCH --time=12:00:00
#SBATCH --mem=20GB
#SBATCH --reservation=gmh4
#SBATCH --job-name=water_amid
#SBATCH --output=water_amid.out

module purge
module load cp2k/openmpi/intel/20201212
mpirun -np 12 cp2k.popt -i water.inp -o water_amid.log