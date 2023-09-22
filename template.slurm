#!/bin/bash
#SBATCH --partition=<PARTITION>
#SBATCH --qos=<QOS>  # Optional, check with your sysadmin if implemented
#SBATCH --account=<ACCOUNT>
#SBATCH --mail-type=END,FAIL  # | NONE | BEGIN | END | FAIL | REQUEUE | ALL |
#SBATCH --mail-user=<EMAIL>

#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --cpus-per-task=4
#SBATCH --mem=375300MB  

# Printing job info
job=$(basename *.slurm .slurm)
cd $SLURM_SUBMIT_DIR

echo ">> Slurm job $SLURM_JOB_ID - $SLURM_JOB_NAME"                       > $SLURM_SUBMIT_DIR/$job.out
echo ">> Submitted from $SLURM_SUBMIT_HOST:$SLURM_SUBMIT_DIR on $(date)" >> $SLURM_SUBMIT_DIR/$job.out
echo ">> HOME directory: $HOME"                                          >> $SLURM_SUBMIT_DIR/$job.out
echo ">> TMPDIR directory: $TMPDIR"                                      >> $SLURM_SUBMIT_DIR/$job.out
echo ">> SCRATCH directory: $SCRATCH"                                    >> $SLURM_SUBMIT_DIR/$job.out
echo ">> WORK directory: $WORK"                                          >> $SLURM_SUBMIT_DIR/$job.out
echo ">> -------------------"                          >> $SLURM_SUBMIT_DIR/$job.out
echo ">> NODELIST          : $SLURM_JOB_NODELIST"      >> $SLURM_SUBMIT_DIR/$job.out
echo ">> CPUS_ON_NODE      : $SLURM_CPUS_ON_NODE"      >> $SLURM_SUBMIT_DIR/$job.out
echo ">> CPUS_PER_TASK     : $SLURM_CPUS_PER_TASK"     >> $SLURM_SUBMIT_DIR/$job.out
echo ">> JOB_CPUS_PER_NODE : $SLURM_JOB_CPUS_PER_NODE" >> $SLURM_SUBMIT_DIR/$job.out
echo ">> MEM_PER_NODE      : $SLURM_MEM_PER_NODE"      >> $SLURM_SUBMIT_DIR/$job.out
echo ">> NTASKS            : $SLURM_NTASKS"            >> $SLURM_SUBMIT_DIR/$job.out
echo ">> NTASKS_PER_NODE   : $SLURM_NTASKS_PER_NODE"   >> $SLURM_SUBMIT_DIR/$job.out
echo ">> NPROCS            : $SLURM_NPROCS"            >> $SLURM_SUBMIT_DIR/$job.out
echo ">> TASKS_PER_NODE    : $SLURM_TASKS_PER_NODE"    >> $SLURM_SUBMIT_DIR/$job.out
echo ">> -------------------"                          >> $SLURM_SUBMIT_DIR/$job.out
echo "" >> $SLURM_SUBMIT_DIR/$job.out

# Load modules, modify as needed
#module load <MODULE>

# Copying files to scratch directory

### NEEDS TO BE COMPLETED

# START JOB (actual code goes here)

<PROGRAM> <INPUT> >> $SLURM_SUBMIT_DIR/$job.out 2> $SLURM_SUBMIT_DIR/$job.err

# END JOB (cleaning up)

### NEEDS TO BE COMPLETED

echo "" >> $SLURM_SUBMIT_DIR/$job.out
echo ">> -------------------"       >> $SLURM_SUBMIT_DIR/$job.out
echo ">> Job terminated on $(date)" >> $SLURM_SUBMIT_DIR/$job.out
