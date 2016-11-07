#Data Formatting

##Maricopa Agricultural Center, Arizona


Hyperspecral
https://github.com/terraref/reference-data/issues/14
https://github.com/terraref/reference-data/issues/27




metadata 

https://github.com/terraref/reference-data/issues/2  

https://github.com/terraref/reference-data/issues/25

https://github.com/terraref/reference-data/issues/32


weather station

https://github.com/terraref/reference-data/issues/48



-------------------
##Automated controlled-environment phenotyping, Missouri 
text

metadata

https://github.com/terraref/computing-pipeline/issues/36



-------------------
##Kansas State University 
text

-------------------
##HudsonAlpha - Genomics 


#### **Raw reads + quality scores**
Raw reads + quality scores are stored in [FASTQ format](http://maq.sourceforge.net/fastq.shtml). FASTQ files can be manipulated for QC with [FASTX-Toolkit](http://hannonlab.cshl.edu/fastx_toolkit/)



#### **Reference genome assembly**
Reference genome assembly (for alignment of reads or BLAST) is in [FASTA format](https://en.wikipedia.org/wiki/FASTA_format). FASTA files generally need indexing and formatting that can be done by aligners, BLAST, or other applications that provide built-in commands for this purpose.


#### **Sequence alignment**
Sequence alignments are in BAM format – in addition to the nucleotide sequence, the BAM format contains fields to describe mapping and read quality. BAM files are binary files but can be visualized with [IGV](http://www.broadinstitute.org/igv/). If needed, BAM can be converted in SAM (text file) with [SAMtools. ](http://samtools.sourceforge.net/)BAM is the preferred format for sra database (sequence read archive).


#### SNP and genotype variants
SNP and genotype variants are in [VCF format](http://www.1000genomes.org/wiki/Analysis/Variant%20Call%20Format/vcf-variant-call-format-version-40). VCF contains all information about read mapping and SNP and genotype calling quality. VCF files are typically manipulated with[vcftools](https://vcftools.github.io/index.html). VCF format is also the format required by dbSNP, the largest public repository all SNPs.


####Genomic coordinates
Genomic coordinates are given in a BED format – gives the start and end positions of a feature in the genome (for single nucleotides, start = end). [BED files](http://www.ensembl.org/info/website/upload/bed.html) can be manipulated with bedtools


####Genome annotations
Genome annotations are in [*GFF format*](http://useast.ensembl.org/info/website/upload/gff.html) GFF format contains genes and other genomic features. [Allows “track” info for visualization](http://useast.ensembl.org/info/website/upload/gff.html).


####Visualizing and annotating Genomes
[*Gbrowse*](http://gmod.org/wiki/GBrowse) is a comprehensive database + interactive web application for manipulating and displaying annotations on genomes. [Jbrowse](http://jbrowse.org/) is Javascript-based replacement for Gbrows that has a more responsive interface. Jbrows is a component of the [Generic Model Organism Database (GMOD)](http://gmod.org/wiki/Main_Page) project. It's compatible with the same data formats as Gbrowse, so not much has to change.

 -------------------

##General formats for traits, phenotypes, and agronomic managements
https://github.com/terraref/reference-data/issues/18



-


