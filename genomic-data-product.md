### **Genome annotations**



Genome annotations are in [GFF format](http://useast.ensembl.org/info/website/upload/gff.html) GFF format contains genes and other genomic features. Allows “track” info for visualization [http:\/\/useast.ensembl.org\/info\/website\/upload\/gff.html](http://useast.ensembl.org/info/website/upload/gff.html)



### **Visualizing and annotating Genomes**



[Gbrowse](http://gmod.org/wiki/GBrowse) is a comprehensive database + interactive web application for manipulating and displaying annotations on genomes.



# Genomics pipeline

Outlined below are the steps taken to create a raw vcf file from paired end raw FASTQ files. This was done for each sequenced accession so a HTCondor DAG Workflow was written to streamline the processing of those ~200 accessions. While some cpu and memory parameters have been included within the example steps below those parameters varied from sample to sample and the workflow has been honed to accomodate that variation. This pipeline is subject to modification based on software updates and changes to software best practices.



### **Software versions:**

* [Trimmomatic v 0.35](http://www.usadellab.org/cms/?page=trimmomatic)

* [bwa v 0.7.12-r1039](http://bio-bwa.sourceforge.net)

* [samtools v 1.3.1](http://samtools.sourceforge.net)

* [picard-tools-2.0.1](https://broadinstitute.github.io/picard)

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

`bwa mem –M –R “@RG\tIDSAMPLEA_RG1\tPL:illumina\tPU:FLOWCELL_BARCODE.LANE.SAMPLE_BARCODE_RG_UNIT\tLB:libraryprep-lib1\tSM:SAMPLEA” Sbicolor_313_v3.0.fa SampleA_R1.PE.fastq.gz SampleA_R2.PE.fastq.gz > SAMPLEA.bwa.sam`



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


## KSU Genomics Pipeline / GBS/RIL analysis 
