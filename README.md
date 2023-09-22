# slurm_template
Template script for submitting SLURM jobs.

Contains some "pretty printed" information on the Slurm job such as requested resources, environment variable for directories, and time of start/end.

Will eventually include automatic parallel copy to $TMPDIR directory (often used in SLURM clusters for scratch) on all nodes.
