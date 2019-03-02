#!/bin/bash -l

#SBATCH --job-name=test
#SBATCH --qos=debug
#SBATCH --nodes=1
#SBATCH --constraint=haswell
#SBATCH --time=00:30:00


tclsh ./LW_SC.tcl
 
