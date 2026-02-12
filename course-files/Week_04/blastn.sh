#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --time=3:00:00
#SBATCH --partition=instruction  # class node(s)
#SBATCH --account=s2026.bcb.5460.01   #account to use
#SBATCH --mail-user=<NETID>@iastate.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --job-name=blast-zea
#SBATCH --error=blastx-zea.%J.err
#SBATCH --output=blastx-zea.%J.out


module load blast-plus

blastn \
   -subject /ptmp/mhufford-lab/Zea_maysb73v4.AGPv4.dna.toplevel.fa \
   -query /ptmp/mhufford-lab/Zea_maysb73v4.AGPv4.cdna.all.fa \
   -outfmt 6 \
   -num_threads 8 \
   -out zm_blastx_zea.out
