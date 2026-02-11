#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --time=3:00:00
#SBATCH --partition=instruction  # class node(s)
#SBATCH --account=s2026.bcb.5460.01   #account to use
#SBATCH --mail-user=mhufford@iastate.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --job-name=blast-zea
#SBATCH --error=blastx-zea.%J.err
#SBATCH --output=blastx-zea.%J.out

cd $SLURM_SUBMIT_DIR


module load blast-plus

blastx \
   -db /ptmp/mhufford-lab/Zea_mays.B73_RefGen_v4.pep.all.fa \
   -query /ptmp/mhufford-lab/Zea_maysb73v4.AGPv4.dna.toplevel.fa \
   -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend qlen sstart send slen evalue frames sgi staxid" \
   -num_threads 8 \
   -out zm_blastx_10k.out

# print job's resource usage
scontrol show job $SLURM_JOB_ID
