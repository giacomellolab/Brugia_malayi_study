# Miniature spatial transcriptomics "miniatureST" on the parasitic worm Brugia malayi provides insight into the mutualistic relationship with its Wolbachia endosymbiont 

Corresponding sequences fastq files can be accessed upon request from here and will be made pubicly available upon publication. The bash scripts used to build a custom spaceranger reference, trim adaptor sequneces from the fastq files, and run the trimmed fastq files through spaceranger count to generate the count matrices were run in the sequential order ("<#>_filename.sh ") and can be found in the folder [sequence_read_processing](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/sequence_read_processing).

The count matrices and high-resolution H&E tissue images will be publicly available in Mendeley dataset under Reserved DOI: [10.17632/8f62vydg3z.1](https://data.mendeley.com/v1/datasets/8f62vydg3z/draft) upon publication. They can currently be accessed upon request.

The R scripts used for downstream analysis of the count matrices can be found in the sequential order ("<#>_filename.Rmd") under the folder [r_scripts](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/r_scripts). Additional .tsv and .csv files needed to run the R scripts can be be found in the folder [data](https://github.com/giacomellolab/Brugia_malayi_study/tree/main/data). [V10F24_041_metadata.xlsx](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/data/V10F24_041_metadata.xlsx) file contains overall study metadata and [V10F24_041_spots_seurat_metadata.xlsx](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/data/V10F24_041_spots_seurat_metadata.xlsx) contains the per spot metadata output from [2_add_metadata.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/2_add_metadata.Rmd). For running [7_3D_model_code.Rmd](https://github.com/giacomellolab/Brugia_malayi_study/blob/main/r_scripts/7_3D_model_code.Rmd), the BM2 sample photoshopped images and the manual alignment screenshots can be found in the Mendeley dataset under Reserved DOI: [10.17632/8f62vydg3z.1](https://data.mendeley.com/v1/datasets/8f62vydg3z/draft) and need to be in the same place as the directory as the code.
