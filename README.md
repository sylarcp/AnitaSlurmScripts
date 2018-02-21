# AnitaSlurmScripts
The Slurm scripts that are useful to run ANITA4 analysis with hundreds threads in parallel. 
Developed by Peng Cao.

// first create 3 folders
```
mkdir a4ll wais simulated
```
The bash scripts will put the summary files in folder a4all, wais, simulated.
```
sbatch doAll.sh // reconstruct some percentage of all anita4 events except wais events. 
sbatch doWais.sh// reconstruct only wais events
sbatch doSimulation.sh// reconstruct only mc events
bash clean.sh// clean the folder and slurm output texts.
```


format explaination:
```
//array task range from 1 to 367, next line will send 367 processes to 367 cores in parallel.
#SBATCH --array=1-367 
// true slurm command that sending work to cluster.
srun /home/sylarcp/anitaNeutrino/anitaBuildTool/build/bin/./doAll $SLURM_ARRAY_TASK_ID 30002 
```
