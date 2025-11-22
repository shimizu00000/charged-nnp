#!/bin/sh
#PBS -q h-medium
#PBS -l select=8:ncpus=36:mpiprocs=36:ompthreads=1
#PBS -l walltime=04:00:00
#PBS -N t30-20

cd $PBS_O_WORKDIR
. /etc/profile.d/modules.sh
module load intel/16.0.3.210
export I_MPI_COMPATIBILITY=4

mpirun ./a.out >> testjob.dat
