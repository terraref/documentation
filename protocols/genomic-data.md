# Genomic Data

Genomic data includes whole-genome resequencing data from the [HudsonAlpha Institute for Biotechnology](https://hudsonalpha.org/), Alabama for 384 samples for accessions from the sorghum Bioenergy Association Panel \(BAP\) and genotyping-by-sequencing \(GBS\) data from Kansas State University for 768 samples from a population of sorghum recombinant inbred lines \(RIL\).

## Danforth Center genomics pipeline

Outlined below are the steps taken to create a raw vcf file from paired end raw FASTQ files. This was done for each sequenced accession so a HTCondor DAG Workflow was written to streamline the processing of those ~200 accessions. While some cpu and memory parameters have been included within the example steps below those parameters varied from sample to sample and the workflow has been honed to accomodate that variation. This pipeline is subject to modification based on software updates and changes to software best practices.

### Software versions:

* [BBDuk2 version 36.67](https://jgi.doe.gov/data-and-tools/bbtools/bb-tools-user-guide/bbduk-guide/)
* [bwa v 0.7.12-r1039](http://bio-bwa.sourceforge.net)
* [samtools v 1.3.1](http://samtools.sourceforge.net)
* [picard-tools-2.0.1](https://broadinstitute.github.io/picard)
* [GATK v3.5-0-g36282e4](https://software.broadinstitute.org/gatk)
* [VCFtools \(0.1.14\)](https://vcftools.github.io)
* [Tassel Version: 5.2.27](https://bitbucket.org/tasseladmin/tassel-5-source/wiki/Home)

### Preparing reference genome

Download Sorghum bicolor v3.1 from [Phytozome](https://phytozome.jgi.doe.gov/pz/portal.html#!info?alias=Org_Sbicolor)

**Generate:**

#### BWA index:

```bash
bwa index –a bwtsw Sbicolor_313_v3.0.fa
```

#### fasta file index:

```bash
samtools faidx Sbicolor_313_v3.0.fa
```

#### Sequence dictionary:

```bash
java –jar picard.jar CreateSequenceDictionary R=Sbicolor_313_v3.0.fa O=Sbicolor_313_v3.0.dict
```

### Quality trimming and filtering of paired end reads

```bash
bbduk2 in=SampleA_R1.fastq in2=SampleA_R2.fastq out=SampleA_R1.PE.fastq.gz \
  out2=SampleA_R2.PE.fastq.gz k=23 mink=11 hdist=1 tpe tbo qtrim=rl trimq=20 \
  minlen=20 rref=adapters_file.fa lref=adapters_file.fa
```

### Aligning reads to the reference

```bash
bwa mem –M \
  –R “@RG\tIDSAMPLEA_RG1\tPL:illumina\tPU:FLOWCELL_BARCODE.LANE.SAMPLE_BARCODE_RG_UNIT\tLB:libraryprep-lib1\tSM:SAMPLEA” \
  Sbicolor_313_v3.0.fa SampleA_R1.PE.fastq.gz SampleA_R2.PE.fastq.gz > SAMPLEA.bwa.sam
```

### Convert and Sort bam

```bash
Samtools view –bS SAMPLEA.bwa.sam | samtools sort - SAMPLEA.bwa.sorted
```

### Mark Duplicates

```bash
java –Xmx8g –jar picard.jar MarkDuplicates MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=1000 \
  REMOVE_DUPLICATES=true INPUT=SAMPLEA.bwa.sorted.bam OUTPUT=SAMPLEA.dedup.bam \
  METRICS_FILES=SAMPLEA.dedup.metrics
```

### Index bam files

```bash
samtools index SAMPLEA.dedup.bam
```

### Find intervals to analyze

```bash
java –Xmx8g –jar GenomeAnalysisTK.jar –T RealignerTargetCreator \
  –R Sbicolor_313_v3.0.fa –I SAMPLEA.dedup.bam –o SAMPLEA.realignment.intervals
```

### Realign

```bash
java –Xmx8g –jar GenomeAnalysisTK.jar –T IndelRealigner –R Sbicolor_313_v3.0.fa \
  –I SAMPLEA.dedup.bam –targetIntervals SAMPLEA.realignment.intervals –o SAMPLEA.dedup.realigned.bam
```

### Variant Calling with GATK HaplotypeCaller

```bash
java –Xmx8g –jar GenomeAnalysisTK.jar –T HaplotypeCaller –R Sbicolor_313_v3.0.fa \
  –I SAMPLEA.dedup.realigned.bam --emitRefConfidence GVCF --pcr_indel_model NONE \
  -o SAMPLEA.output.raw.snps.indels.g.vcf
```

**Above this point is the workflow for the creation of the gVCF files for this project. The following additional steps were used to create the Hapmap file**

### Combining gVCFs with GATK CombineGVCFs

_**NOTE: This project has 363 gvcfs: multiple instances of CombineGVCFs, with unique subsets of gvcf files, were run in parallel to speed up this step below are examples**_

```bash
java –Xmx8g –jar GenomeAnalysisTK.jar –T CombineGVCFs –R Sbicolor_313_v3.0.fa \
  -V SAMPLEA.output.raw.snps.indels.g.vcf --variant SAMPLEB.output.raw.snps.indels.g.vcf\
  -V SAMPLEC.output.raw.snps.indels.g.vcf -o SamplesABC_combined_gvcfs.vcf

java –Xmx8g –jar GenomeAnalysisTK.jar –T CombineGVCFs –R Sbicolor_313_v3.0.fa \
  --variant SAMPLED.output.raw.snps.indels.g.vcf -V SAMPLEE.output.raw.snps.indels.g.vcf \
  -V SAMPLEF.output.raw.snps.indels.g.vcf -o SamplesDEF_combined_gvcfs.vcf
```

### Joint genotyping on gVCF files with GATK GenotypeGVCFs

```bash
java –Xmx8g –jar GenomeAnalysisTK.jar –T GenotypeGVCFs –R Sbicolor_313_v3.0.fa \
  -V SamplesABC_combined_gvcfs.vcf -V SamplesDEF_combined_gvcfs.vcf -o all_combined_Genotyped_lines.vcf
```

### Applying hard SNP filters with GATK VariantFiltration

```bash
java –Xmx8g –jar GenomeAnalysisTK.jar –T VariantFiltration –R Sbicolor_313_v3.0.fa \
  -V all_combined_Genotyped_lines.vcf -o all_combined_Genotyped_lines_filtered.vcf \
  --filterExpression "QD < 2.0" --filterName "QD" --filterExpression "FS > 60.0" \
  --filterName "FS" --filterExpression "MQ < 40.0" --filterName "MQ" --filterExpression "MQRankSum < -12.5" \
  --filterName "MQRankSum" --filterExpression "ReadPosRankSum < -8.0" --filterName "ReadPosRankSum"
```

### Filter and recode VCF with VCFtools

```bash
vcftools --vcf all_combined_Genotyped_lines_filtered.vcf --min-alleles 2 --max-alleles 2 \
  --out all_combined_Genotyped_lines_vcftools.filtered.recode.vcf --max-missing 0.2 --recode
```

### Adapt VCF for use with Tassel5

```bash
tassel-5-standalone/run_pipeline.pl -Xms75G -Xmx265G -SortGenotypeFilePlugin \
  -inputFile all_combined_Genotyped_lines_vcftools.filtered.recode.vcf \
  -outFile all_combined_Genotyped_lines_vcftools.filtered.recode.sorted.vcf -fileType VCF
```

### Convert VCF to Hapmap with Tassel5

```bash
tassel-5-standalone/run_pipeline.pl -Xms75G -Xmx290G -fork1 -vcf \
  all_combined_Genotyped_lines_vcftools.filtered.recode.sorted.vcf -export -exportType Hapmap -runfork1
```

## CoGe genomics pipeline

CoGe has integrated the tools that make up the Danforth Center’s variant calling pipeline into their easy point and click GUI, allowing users to reproduce a majority of the TERRA SNP analysis.  Below, we detail how to run sequence data through CoGe’s system.

* Goto [https://genomevolution.org/coge/](https://genomevolution.org/coge/) or click [create an account](https://genomevolution.org/wiki/index.php/How_to_get_a_CoGe_account) to get started.
* If this is your initial attempt, you will need to create a Genome.

  1. Under Tools, click [Load Genome](https://genomevolution.org/coge/LoadGenome.pl) or use this link.

  \*\*\*\*

* Under Tools, click [Load Experiment](https://genomevolution.org/coge/LoadExperiment.pl) or use this link.
* **Select Data:** to use the TERRA data click Community Data or choose from CoGe’s other data options.
* **Select Options:** This outlines CoGe’s choices for data processing and analysis.  To reproduce pipeline used to create the TERRA SNPs, you can reference the exact tools and parameters used in the Danforth analysis above and enter the appropriate values into their equivalent drop downs or fields.

For the TERRA SNP the following were used: 

**FASTQ Format**

* Read Type: Paired-end 
* Encoding: phred33

**Trimming**

* Trimmer: BBDuk
* BBDuk parameters: k=23, mink=11, hdist=1, check mark both tpe and tbo,  qtrim=rl, trimq=20, minlen=20, set trim adapters to both ends

**Alignment**

* Aligner: BWA-MEM
* BWA-MEM parameters: check mark -M, fill in [Read Groups](https://gatkforums.broadinstitute.org/gatk/discussion/6472/read-groups) ID \(identifier\), PL \(sequence platform\), LB \(library prep\), SM \(sample name\)

**SNP Analysis**

* Check mark Enable which expands this section
* Method: GATK HaplotypeCaller \(single-sample GVCF\) using the default parameters but you can choose to use Realign reads around INDELS

**General Options**

* Checkmark both options to add results to your notebook and receive an email when pipeline has completed. 

**Describe Experiment:** Enter an experiment name \(required\), your data processing version ie 1 for first time, Source if using TERRA Data, it’s TERRA \(required\), and Genome \(required and if you start typing it will find your loaded genome but be sure to verify version and id .\)  


## KSU Genomics Pipeline / GBS/RIL Analysis

### Data Access

On Globus and Workbench



* * |  |  |  |  |
    | :--- | :--- | :--- | :--- |
    |  |  |  |  \* |
    |  |  |  |  \* |

