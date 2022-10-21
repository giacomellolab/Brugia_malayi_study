# Miniature spatial transcriptomics for studying parasite-endosymbiont relationships at the micro scale 

## System Requirements

All [sequence_read_processing](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/sequence_read_processing) scripts were run on Uppsala Multidisciplinary Center for Advanced Computational Science (UPPMAX), where detailed system information can be found [here](https://www.uppmax.uu.se/resources/systems/the-rackham-cluster/#:~:text=Each%20compute%20node%20consists%20of,ECC%202400MHz%20DIMM%20DRAM%20memory.). 

[1.TSO_and_polyA_trimmer_sbatch.sh](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/sequence_read_processing/1.TSO_and_polyA_trimmer_sbatch.sh) was run on 4 cores in single-end mode and finished in about 9.2 minutes. [2.spaceranger_mkref_commands.sh](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/sequence_read_processing/2.spaceranger_mkref_commands.sh) was run on 8 nodes with 8 threads and maximum of 50 GB of memory and finished in about 2 minutes. [3.spaceranger_count_commandlines.sh](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/sequence_read_processing/3.spaceranger_count_commandlines.sh), each sample was run on 6 cores with a maximum of 33 GB of memory and finished in about 10-12 minutes.

The [r_scripts](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/r_scripts) were run on MacOS Catalina (v10.15.7) with 16 GB memory. 

[1_package_info.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/1_package_info.Rmd) and [2_make_brugia_wolbachia_gene_lists.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/2_make_brugia_wolbachia_gene_lists.Rmd) take about 20 seconds to run.
[3_add_metadata.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/3_add_metadata.Rmd) and [6_clustering_analysis.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/6_clustering_analysis.Rmd) take about 25 seconds to run.
[4_quality_check_filtering.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/4_quality_check_filtering.Rmd) takes about 4 minutes to run.
[5_normalization.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/5_normalization.Rmd) takes about 35 seconds to run.
[7_co_localization_analysis.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/7_co_localization_analysis.Rmd) takes about 45 seconds to run.

The 3D model analysis [7_3D_model_code.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/7_3D_model_code.Rmd) was run on . The analysis takes about to run.

## Installation

[sequence_read_processing](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/sequence_read_processing) requires cutadapt (v2.3), with installation instructions found [here](https://cutadapt.readthedocs.io/en/stable/installation.html), and a custom bash script [TSO_polyA_trimming.sh](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/sequence_read_processing/1.TSO_and_polyA_trimmer_sbatch.sh) with installation instructions found [here](https://github.com/ludvigla/VisiumTrim). Converting the Brugia malayi annotation file from GFF to GTF required gffread from cufflinks (v2.2.1) with installation instructions found [here](https://github.com/cole-trapnell-lab/cufflinks). Building a combined Brugia malayi-Wolbachia reference and generating the count matrcies required 10X Genomics Space Ranger (v1.2.0) with installation instructions found [here](https://support.10xgenomics.com/spatial-gene-expression/software/pipelines/latest/tutorials/setup-spaceranger#install).

Count matrices analysis in [r_scripts](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/r_scripts) used R (v4.0.3) and STUtility (v1.0), with installation instructions found [here](https://github.com/jbergenstrahle/STUtility), and used Harmony (v0.1.0), with installation instructions found [here](https://github.com/immunogenomics/harmony). All package dependencies and their versions are shown in [1_package_info.html](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/1_package_info.html). Packages install in about 8 minutes.

The 3D model analysis [7_3D_model_code.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/7_3D_model_code.Rmd) used R (v4.2.0) and STUtility (v1.0). All package dependencies and their versions are shown in . Packages install in about .

## Data

Corresponding sequences fastq files can be accessed upon request from here and will be made pubicly available upon publication. The bash scripts used to build a custom spaceranger reference, trim adaptor sequneces from the fastq files, and run the trimmed fastq files through spaceranger count to generate the count matrices were run in the sequential order ("<#>_filename.sh ") and can be found in the folder [sequence_read_processing](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/sequence_read_processing).

The count matrices and high-resolution H&E tissue images will be publicly available in Mendeley dataset under Reserved DOI: [10.17632/8f62vydg3z.1](https://data.mendeley.com/v1/datasets/8f62vydg3z/draft) upon publication. They can currently be accessed upon request.

The R scripts used for downstream analysis of the count matrices can be found in the sequential order ("<#>_filename.Rmd") under the folder [r_scripts](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/r_scripts). Additional .tsv and .csv files needed to run the R scripts can be be found in the folder [data](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/data). [V10F24_041_metadata.xlsx](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/data/V10F24_041_metadata.xlsx) file contains overall study metadata and [V10F24_041_spots_seurat_metadata.xlsx](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/data/V10F24_041_spots_seurat_metadata.xlsx) contains the per spot metadata output from [2_add_metadata.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/2_add_metadata.Rmd). 

For running [7_3D_model_code.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/7_3D_model_code.Rmd), the BM2 sample photoshopped images and the manual alignment screenshots can be found in the Mendeley dataset under Reserved DOI: [10.17632/8f62vydg3z.1](https://data.mendeley.com/v1/datasets/8f62vydg3z/draft) and need to be in the same place as the directory as the code.
