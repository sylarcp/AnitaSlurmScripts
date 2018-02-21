#!/bin/bash
#
#SBATCH --job-name=doAll
#
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=2000
#SBATCH --partition=long
#
#SBATCH --array=1-367

srun /home/sylarcp/anitaNeutrino/anitaBuildTool/build/bin/./doAll $SLURM_ARRAY_TASK_ID 30002
