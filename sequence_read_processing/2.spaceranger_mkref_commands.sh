#!/bin/bash

##ran with spanranger version 1.2.0 and cufflinks versison 2.2.1
module load cufflinks/2.2.1
module load spaceranger/1.2.0

#used Brugia malayi genomic sequence and annotation files from WormBase: WBPS14 and for Wolbachia were acquired as RefSeq: NC_006833.1

#convert gff3 files to gtf file
gffread brugia_malayi.PRJNA10729.WBPS14.annotations.gff3 -T -o brugia_malayi.PRJNA10729.WBPS14.annotations.gtf

#Took only the lines where the second column did not contain "history" and put into a new gtf file
awk '$2 !~ "history" { print $0 }' brugia_malayi.PRJNA10729.WBPS14.annotations.gtf  > brugia_malayi.PRJNA10729.WBPS14.annotations.history.filtered.gtf

#convert CDS to exon in column 3 of gtf annotation file
awk '{sub("CDS","exon",$3)}{print $0}' FS='\t' OFS='\t' GCF_000008385.1_ASM838v1_genomic.gtf > GCF_000008385.1_ASM838v1_genomic_exon_col3.gtf

#makde combined Brugia malayi and Wolbachia (wBm) reference
spaceranger mkref \
--genome=bmalayi \
--fasta=brugia_malayi.PRJNA10729.WBPS14.genomic.fa \
--genes=brugia_malayi.PRJNA10729.WBPS14.annotations.history.filtered.gtf \
--genome=wBm \
--fasta=GCF_000008385.1_ASM838v1_genomic.fna \
--genes=GCF_000008385.1_ASM838v1_genomic_exon_col3.gtf \
--nthreads=8 \
--memgb=50 \

#outputs directory containing the combined Brugia malayi - Wolbachia reference
