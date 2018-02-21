#!/bin/bash
#
#SBATCH --job-name=doSimulated
#
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=2000
#
#SBATCH --array=1-10

srun /home/sylarcp/anitaNeutrino/anitaBuildTool/build/bin/./doSimulated $SLURM_ARRAY_TASK_ID 501
