#!/bin/bash 
#SBATCH --nodes=1                        # requests 1 compute servers
#SBATCH --ntasks-per-node=12              # runs 4 tasks on each server
#SBATCH --time=24:00:00
#SBATCH --mem=20GB
#SBATCH --reservation=gmh4
#SBATCH --job-name=proton_amid
#SBATCH --output=proton_amid.out

module purge
module load cp2k/openmpi/intel/20201212
mpirun -np 12 cp2k.popt -i proton.inp -o proton_amid.log