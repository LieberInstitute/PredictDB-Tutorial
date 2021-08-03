source("gtex_v7_nested_cv_elnet.R")
"%&%" <- function(a,b) paste(a,b, sep='')

argv <- commandArgs(trailingOnly = TRUE)
chrom <- argv[1]

#tiss <- argv[1]
#chrom <- argv[2]

# set paths here
snp_annot_file <- "/dcl01/lieber/ajaffe/lab/goesHyde_mdd_rnaseq/predixcan_pipeline/processed-data/02_prep_inputs/snp_annot/snp_annot.chr" %&% chrom %&% ".txt"
gene_annot_file <- "/dcl01/lieber/ajaffe/lab/goesHyde_mdd_rnaseq/predixcan_pipeline/processed-data/02_prep_inputs/gencode.v25.annotationGRCh38_PARSED.gtf"
genotype_file <- "/dcl01/lieber/ajaffe/lab/goesHyde_mdd_rnaseq/predixcan_pipeline/processed-data/02_prep_inputs/split_geno/split_snp_geno.chr" %&% chrom %&% ".txt"
expression_file <- "/dcl01/lieber/ajaffe/lab/goesHyde_mdd_rnaseq/predixcan_pipeline/processed-data/02_prep_inputs"
covariates_file <- "/dcl01/lieber/ajaffe/lab/goesHyde_mdd_rnaseq/predixcan_pipeline/processed-data/01_get_inv_quantile_norm/goesHyde_mdd_rnaseq_Amygdala.combined_covariates.txt"
prefix <- "goesHyde_mdd_Model_training"

main(snp_annot_file, gene_annot_file, genotype_file, expression_file, covariates_file, as.numeric(chrom), prefix, null_testing=FALSE)


