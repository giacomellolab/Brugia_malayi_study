#!/bin/bash

##ran with spanranger version 1.2.0 
module load spaceranger/1.2.0

##ran with TSO and polyA trimmed fastq files
##run with transcriptome reference made with spaceranger mkref of Brugia malayi and Wolbachia (wBm) combined reference
##images and alignment files are found in the Mendeley dataset Reserved DOI: 10.17632/8f62vydg3z.1 under "spaceranger-inputs"

spaceranger count --id=V10F24-041_201204_A1 \
                   --transcriptome=/bmalayi_and_wBm \
                   --fastqs=/V10F24_041/trimmed_fastq/A1 \
                   --sample=V10F24-041_A \
                   --image=V10F24_041_A1_small.jpg \
                   --slide=V10F24-041 \
                   --area=A1 \
                   --loupe-alignment=/V10F24-041-A1.json \
                   --localcores=6 \
                   --localmem=33;

spaceranger count --id=V10F24-041_201204_B1 \
                  --transcriptome=/bmalayi_and_wBm \
                  --fastqs=/V10F24_041/trimmed_fastq/B1 \
                  --sample=V10F24-041_B \
                  --image=V10F24_041_B1_small.jpg \
                  --slide=V10F24-041 \
                  --area=B1 \
                  --loupe-alignment=V10F24-041-B1.json \
                  --localcores=6 \
                  --localmem=33;

spaceranger count --id=V10F24-041_201204_D1 \
                   --transcriptome=/bmalayi_and_wBm \
                   --fastqs=/V10F24_041/trimmed_fastq/D1 \
                   --sample=V10F24-041_D \
                   --image=V10F24_041_D1_small.jpg \
                   --slide=V10F24-041 \
                   --area=D1 \
                   --loupe-alignment=V10F24-041-D1.json \
                   --localcores=6 \
                   --localmem=33
