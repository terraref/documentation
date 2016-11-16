# Genomic Data Standards

Related discussions:

* https://github.com/terraref/reference-data/issues/19
* https://github.com/terraref/documentation/blob/master/genomics_pipeline.md


## Overview

Genomic data have reached a high level of standardization in the scientific community. Today, all high-impact journals typically ask the author to deposit their genomic data in either or both of these databases before publication.

Below are the most widely accepted formats that are relevant to the data and analyses generated in TERRA-REF.

### **Raw reads + quality scores**

Raw reads + quality scores are stored in [FASTQ format](http://maq.sourceforge.net/fastq.shtml). FASTQ files can be manipulated for QC with [FASTX-Toolkit](http://hannonlab.cshl.edu/fastx_toolkit/)

### **Reference genome assembly**

Reference genome assembly \(for alignment of reads or BLAST\) is in [FASTA format](https://en.wikipedia.org/wiki/FASTA_format). FASTA files generally need indexing and formatting that can be done by aligners, BLAST, or other applications that provide built-in commands for this purpose.

### **Sequence alignment**

Sequence alignments are in BAM format – in addition to the nucleotide sequence, the BAM format contains fields to describe mapping and read quality. BAM files are binary files but can be visualized with [IGV](http://www.broadinstitute.org/igv/). If needed, BAM can be converted in SAM \(text file\) with [SAMtools](http://samtools.sourceforge.net/)

BAM is the preferred format for sra database \(sequence read archive\).

### **SNP and genotype variants**

SNP and genotype variants are in [VCF format](http://www.1000genomes.org/wiki/Analysis/Variant%20Call%20Format/vcf-variant-call-format-version-40). VCF contains all information about read mapping and SNP and genotype calling quality. VCF files are typically manipulated with [vcftools](https://vcftools.github.io/index.html)

VCF format is also the format required by dbSNP, the largest public repository all SNPs.

### **Genomic coordinates**

Genomic coordinates are given in a BED format – gives the start and end positions of a feature in the genome \(for single nucleotides, start = end\). [BED files](http://www.ensembl.org/info/website/upload/bed.html) can be edited with [bedtools](http://bedtools.readthedocs.io/en/latest/).

## See Also

[Genomics Data Pipeline](/products/genomics-data.md)





