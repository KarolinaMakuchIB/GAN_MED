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

## Starting server from Visdom module
python3 -m visdom.server
