# prep_locus.awk -- program to munge Hail GWAS table to LocusZoom format
# fields: locus, alleles, n, sum_x, y_transpose_x, beta, standard_error, 
#         t_stat, p_value

BEGIN { OFS="\t" }
NR==1 { \
  $1="chr" OFS "pos"
  $2="ref" OFS "alt"
  print
}
NR>1 { \
  split($1, locus, ":")
  split($2, alleles, ",")
  $1=locus[1] OFS locus[2]
  $2=substr(alleles[1],2) OFS substr(alleles[2],1,length(alleles[2])-1)
  print
}
