#!/bin/sh
##########################################################################
##########################################################################
#SBATCH --time=0-24:00:00
##SBATCH -p long
#SBATCH --mem=2G
#SBATCH -n 1
#SBATCH --mail-user=ltamon
#SBATCH --mail-type=ALL
#########################################################################
## JOB DETAILS * JOB DETAILS * JOB DETAILS * JOB DETAILS * JOB DETAILS ##
#########################################################################
#module add java/17.0.1
#module add fastqc/0.11.9

#fastq_dir="./../FASTQ"
#files=(${fastq_dir}/*fastq.gz)

for i in *fastq.gz
do
	fastqc $i -o "../fastqc" --noextract
done

