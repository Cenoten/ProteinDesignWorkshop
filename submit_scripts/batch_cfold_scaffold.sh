#!/bin/bash

#SBATCH --job-name=smth
#SBATCH --partition=ampere_gpu
#SBATCH --time=04:00:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=1
#SBATCH --cpus-per-gpu=8

module load ColabFold/1.5.2-foss-2022a-CUDA-11.7.0

colabfold_batch ../scaffold.fa ../cfold_scaffold --num-recycle 3 --templates --msa-mode 'single_sequence' --custom-template-path ../custom_template --model-type 'auto'
