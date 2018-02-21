#!/bin/bash
#
#SBATCH --job-name=doCalibrate
#
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=2000
#SBATCH --partition=long
#
#SBATCH --array=100-100

srun /home/sylarcp/anitaNeutrino/anitaBuildTool/build/components/anitaTreeMaker/./makeCalibratedEventInfo $ANITA_ROOT_DATA $ANITA_ROOT_DATA $SLURM_ARRAY_TASK_ID
