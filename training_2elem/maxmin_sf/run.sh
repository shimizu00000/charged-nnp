#!/bin/sh
#PBS -l select=1
#PBS -l walltime=00:30:00
#PBS -q DP_002
##PBS -q P_016
#PBS -N maxmin
cd ${PBS_O_WORKDIR}
#export OMP_NUM_TRHEADS=36

aprun ./a.out >> testjob.dat

#aprun -n 36 -N 36 -j 1 ./a.out >> testjob.dat
#aprun -n 36 -N 36 -j 1 /work/app/VASP5/current/bin/vasp_std >> testjob.dat
#aprun -n 72 -j 1 /work/app/VASP5/current/bin/vasp_std >> testjob.dat
#aprun -n 108 -j 1 /work/app/VASP5/current/bin/vasp_std >> testjob.dat

#18cores/cpu
#<Que List>
#Queue	max_node	max_memory	max_time	max_jobs
#DP_002	2		1,380		2		unlimited
#P_016	16		11,040		72		unlimited
#P_032	32		22,110		72		4
#P_064	64		44,230		72		2

#potential is located /work/app/VASP_potential
