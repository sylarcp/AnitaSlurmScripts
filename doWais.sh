#!/bin/bash
#
#SBATCH --job-name=doWais
#
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=2000
#
#SBATCH --array=120-160

srun /home/sylarcp/anitaNeutrino/anitaBuildTool/build/bin/./doWais $SLURM_ARRAY_TASK_ID 30001
