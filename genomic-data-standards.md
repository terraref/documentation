# Genomic Data Standards

\[craig-willis: I've pasted this mainly from the original genomics\_pipeline.md on master.  I'm not sure why that file was deleted or whether it's appropriate to repurpose the content here\]

Sources:

* https:\/\/github.com\/terraref\/reference-data\/issues\/19

* https:\/\/github.com\/terraref\/documentation\/blob\/master\/genomics\_pipeline.md


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

Genomic coordinates are given in a BED format – gives the start and end positions of a feature in the genome \(for single nucleotides, start = end\). [http:\/\/www.ensembl.org\/info\/website\/upload\/bed.html](http://www.ensembl.org/info/website/upload/bed.html)BED files can be manipulated with bedtools

### **Genome annotations**

Genome annotations are in [GFF format](http://useast.ensembl.org/info/website/upload/gff.html) GFF format contains genes and other genomic features. Allows “track” info for visualization [http:\/\/useast.ensembl.org\/info\/website\/upload\/gff.html](http://useast.ensembl.org/info/website/upload/gff.html)

### **Visualizing and annotating Genomes**

[Gbrowse](http://gmod.org/wiki/GBrowse) is a comprehensive database + interactive web application for manipulating and displaying annotations on genomes.

#**Genomics pipeline**
Outlined below are the steps taken to create a raw vcf file from paired end raw FASTQ files.  This was done for each sequenced accession so a HTCondor DAG Workflow was been written to streamline the processing of those ~200 accessions.  While some cpu and memory parameters have been included within some of the example steps below those parameters varied from sample to sample and the workflow has been honed to accomodate that variation.  This pipeline is subject to modification based on updates to software and changes to software best practices.

### **Software versions:**
* [Trimmomatic v 0.35](http://www.usadellab.org/cms/?page=trimmomatic)
* [bwa v 0.7.12-r1039](http://bio-bwa.sourceforge.net)
* [samtools v 1.3.1](http://samtools.sourceforge.net)
* [picard-tools-2.0.1[(https://broadinstitute.github.io/picard)
* [GATK v3.5-0-g36282e4](https://software.broadinstitute.org/gatk)

### **Preparing reference genome**

Download Sorghum bicolor v3.1 from [Phytozome](https://phytozome.jgi.doe.gov/pz/portal.html#!info?alias=Org_Sbicolor)

**Generate:**
####**BWA index:**
`bwa index –a bwtsw Sbicolor_313_v3.0.fa`

####**fasta file index:**
`samtools faidx Sbicolor_313_v3.0.fa`

####**sequence dictionary:**
`java –jar picard.jar CreateSequenceDictionary R=Sbicolor_313_v3.0.fa O=Sbicolor_313_v3.0.dict`

### **Quality trimming and filtering of paired end reads**
`java –jar Trimmomatic-0.35/trimmomatic-0.35.jar PE -phred33 -trimlog trimlogPE.txt SampleA_R1.fastq.gz SampleA_R2.fastq.gz SampleA_R1.PE.fastq.gz SampleA_R1.SE.fastq.gz SampleA_R2.PE.fastq.gz SampleA_R2.SE.fastq.gz ILLUMINACLIP:adapters.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:20 TRAILING:20 MINLEN:60 2> trim.out`

### **Aligning reads to the reference**
`bwa mem –M –R “@RG\tIDSAMPLEA_RG1\tPL:illumine\tPU: FLOWCELL_BARCODE.LANE.SAMPLE_BARCODE_RG_UNIT\tLB:libraryprep-lib1\tSM:SAMPLEA” Sbicolor_313_v3.0.fa SampleA_R1.PE.fastq.gz SampleA_R2.PE.fastq.gz > SAMPLEA.bwa.sam`

### **Convert and Sort bam**
`Samtools view –bS SAMPLEA.bwa.sam | samtools sort - SAMPLEA.bwa.sorted`

### **Mark Duplicates**
`java –Xmx8g –jar picard.jar MarkDuplicates MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=1000 REMOVE_DUPLICATES=true INPUT=SAMPLEA.bwa.sorted.bam OUTPUT=SAMPLEA.dedup.bam METRICS_FILES=SAMPLEA.dedup.metrics` 

### **Index bam files**
`samtools index SAMPLEA.dedup.bam`

### **Find intervals to analyze**
`java –Xmx8g –jar GenomeAnalysisTK.jar –T RealignerTargetCreator –R Sbicolor_313_v3.0.fa –I SAMPLEA.dedup.bam –o SAMPLEA.realignment.intervals`

### **Realign**
`java –Xmx8g –jar GenomeAnalysisTK.jar –T IndelRealigner –R Sbicolor_313_v3.0.fa –I SAMPLEA.dedup.bam –targetIntervals SAMPLEA.realignment.intervals –o SAMPLEA.dedup.realigned.bam`

### **Variant Calling with GATK HaplotypeCaller**
`java –Xmx8g –jar GenomeAnalysisTK.jar –T HaplotypeCaller –R Sbicolor_313_v3.0.fa –I SAMPLEA.dedup.realigned.bam --emitRefConfidence GVCF --pcr_indel_model NONE -o SAMPLEA.output.raw.snps.indels.g.vcf`






