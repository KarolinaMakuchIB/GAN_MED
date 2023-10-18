#!/bin/bash 

## Name of the order
#SBATCH -J progGANZOO

## Number of allocated nodes
#SBATCH -N 1

## Number of tasks per node
#SBATCH --ntasks-per-node=10

## The amount of memory per computing core
#SBATCH --mem-per-cpu=8GB

## Maximum time per task (HH:MM:SS)
#SBATCH --time=048:00:00 

## Name of the grant for settling resource consumption
#SBATCH -A NAME_OF_THE_GRANT

## Specyfikacja partycji
#SBATCH -p NAME
#SBATCH --gres=gpu

## File of the output
##SBATCH --output="output_pred1.out"

## File with standard error output
##SBATCH --error="error_pred1.err"


## Transition to the directory from which sbatch was called
cd $SLURM_SUBMIT_DIR

## Loading modules
module load monai/1.0.1

## Starting data loading, trainig process, generating images, calculating Inception Score

python datasets.py celeba_cropped MedNIST/New_hand -o outer
python train.py PGAN -c config_celeba_cropped.json --restart -n celeba_cropped
python eval.py visualization -n celeba_cropped -m PGAN
python eval.py visualization -n celeba_cropped -m PGAN --save_dataset out_image --size_dataset 2500
python eval.py inception -c config_celeba_cropped.json -n celeba_cropped -m PGAN
