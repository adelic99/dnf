#!/bin/bash

#SBATCH --mail-user=<horvat@pyl.unibe.ch>
#SBATCH --mail-type=fail,end
#SBATCH --job-name="dnf_sphere_eval"
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=4 #4
#SBATCH --mem=32G  #32

#SBATCH --partition=gpu
#SBATCH --qos=job_gpu

#SBATCH --gres=gpu:gtx1080ti:1  

cd /storage/homefs/ch19g182/Python/Denoising-Normalizing-Flow-master/experiments

nvcc --version
nvidia-smi

python evaluate.py  -c configs/evaluate_dnf_sphere.config