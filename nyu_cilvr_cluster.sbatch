#!/bin/bash

# Generic job script for all experiments on NYU CILVR machines.

#SBATCH --gres=gpu:1
#SBATCH --mem=30000



PATH=$HOME/anaconda3/bin:$PATH
PYTHONPATH=$HOME/jiant/:$PYTHONPATH
source activate jiant


# Log what we're running and where.
source path_config.sh
echo $SLURM_JOBID - `hostname` - $JIANT_OVERRIDES >> ~/jiant_machine_assignments.txt

# Run.
cd ~/jiant/
python main.py --config_file $JIANT_CONF --overrides "project_dir = $JIANT_PROJECT_PREFIX, $JIANT_OVERRIDES"

echo DONE
