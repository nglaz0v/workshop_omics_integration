library(MOFAdata)

# Chronic Lymphocytic Leukaemia (CLL)

# import list with mRNA, Methylation, Drug Response and Mutation data
data("CLL_data")
write.csv(CLL_data$Methylation, "Methylation.csv")
write.csv(CLL_data$mRNA, "mRNA.csv")
write.csv(CLL_data$Drugs, "Drugs.csv")
write.csv(CLL_data$Mutations, "Mutations.csv")

# load sample metadata: Sex and Diagnosis
data("CLL_covariates")
readr::write_tsv(CLL_covariates, "Covariates.tsv")

CLL_metadata <- data.table::fread("ftp://ftp.ebi.ac.uk/pub/databases/mofa/cll_vignette/sample_metadata.txt")
readr::write_tsv(CLL_metadata, "metadata.tsv")
