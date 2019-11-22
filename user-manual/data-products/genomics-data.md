# Genomics data

You can access genomics data in one of the following locations:

* Download via [Globus](../how-to-access-data.md#globus-browse-and-transfer-files).
* The [CyVerse Data Store](../how-to-access-data.md#cyverse) for download or use within the CyVerse computing environment.
* The [CoGe](../how-to-access-data.md#coge) computing environment.

Please review our [data use policy](../data-use-policy.md).

The data is structured on both the TERRA-REF strorage \(accessible via Globus and Workbench\) and CyVerse Data Store infrastructures as follows:

```text
|-terraref
|  |-genomics
|  |  |-raw_data
|  |  |  |-bap
|  |  |  |  |-resequencing
|  |  |  |-ril
|  |  |  |  |-gbs
|  |  |-derived_data
|  |  |  |-bap
|  |  |  |  |-resequencing
|  |  |  |  |  |-danforth_center
|  |  |  |-ril
|  |  |  |  |-gbs
|  |  |  |  |  |-kansas_state
```

## Whole-genome resequencing

### Raw data

Raw data are in bzip2 FASTQ format, one per read pair \(\*\_R1.fastq.bz2 and \*\_R2.fastq.bz2\). 384 samples are available. For a list of the lines sequenced, see the [sample table](https://gist.github.com/dlebauer/6b7b0e181cc5ae5034b992f725712ba4#file-sorghum-lines-genomics-md).

### Derived data

Data derived from analysis of the raw resequencing data at the Danforth Center \(version1\) are available as gzipped, genotyped variant call format \(gVCF\) files and the final combined hapmap file.

## Genotyping-by-sequencing \(GBS\)

### Raw data

Raw data are in gzip FASTQ format. 768 samples are available. For a list of lines sequenced, see the [sample table](https://gist.github.com/dlebauer/6b7b0e181cc5ae5034b992f725712ba4#file-sorghum_mac_1-md).

### Derived data

Combined genotype calls are available in VCF format.

## KSU Genomics Pipeline / GBS/RIL analysis

### Raw Data

* genomics/raw\_data/ril/gbs
  *  H5JYFBCXY\_1\_fastq.txt
  *  H5JYFBCXY\_2\_fastq.txt
  * Key\_ril\_terra

### Derived Data

* genomics/derived\_data/ril/gbs/kansas\_state/version1/imp\_TERRA\_RIL\_SNP.vcf

