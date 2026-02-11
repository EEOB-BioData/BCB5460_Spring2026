#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --time=3:00:00
#SBATCH --partition=instruction  # class node(s)
#SBATCH --account=class-faculty   #account to use
#SBATCH --mail-user=mhufford@iastate.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --job-name=blast-zea
#SBATCH --error=blastx-zea.%J.err
#SBATCH --output=blastx-zea.%J.out


module load blast-plus

blastx \
   -db /ptmp/mhufford-lab/Zea_mays.B73_RefGen_v4.pep.all.fa \
   -query ptmp/mhufford-lab/Zea_maysb73v4.AGPv4.cdna.all.fa \
   -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend qlen sstart send slen evalue frames sgi staxid" \
   -num_threads 8 \
   -out zm_blastx_zea.out
