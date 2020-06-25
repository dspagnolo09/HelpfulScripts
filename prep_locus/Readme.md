# prep_locus
As-is, the GWAS output table from hail.methods.linear_regression_rows(...) is not in the format expected by U. Michigan's [LocusZoom](http://locuszoom.org/). This script preps the Hail Table for LocusZoom plotting!

## Usage
awk -f prep_locus.awk your_file.tsv > output_file.tsv
