# Genomics Data

Genome resequencing data is available for 384 accessions of sorghum from the [Bioenergy Association Panel](http://doi.org/10.1534/genetics.115.183947) \(BAP\). The available accessions from year 1 are listed [here](/user/sorghum-lines-genomics.md) and from year 2 [here](/user/sorghum-lines-genomics-year-2.md). The raw and processed data is available using [Globus](/user/using-globus.md).

## Raw data \(Bzip2 FASTQ\): 

```
/genomics/raw_data/bap/resequencing/
```

## Processed data \(Gzipped VCF\):

```
/genomics/derived_data/bap/resequencing/
```

The output data are in variant call format \(VCF\), which contains single-nucleotide polymorphism \(SNP\) and insertion-deletion \(indel\) variation relative to the reference _Sorghum bicolor_ [v3.1 genome](https://phytozome.jgi.doe.gov/pz/portal.html#!info?alias=Org_Sbicolor).
