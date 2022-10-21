#!/bin/bash

#run TSO and polyA trimming on all Read2 fastq sequence files

#TSO_and_polyA_trimmer_correct.sh script can be found on github page: https://github.com/ludvigla/VisiumTrim

#ran with cutadapt version 2.3
module load cutadapt/2.3

for R2_fastq_file in /V10F24_041/fastq/*_R2_*.fastq.gz
do bash TSO_polyA_trimming.sh "$R2_fastq_file"
done

#outputs trimmed fastq files
