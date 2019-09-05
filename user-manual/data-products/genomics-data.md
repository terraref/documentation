# Genomics data

You can access genomics data in one of the following locations:

* Download via [Globus](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/products/user/using-globus.md).
* The [CyVerse Data Store](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/products/user/using-cyverse.md) for download or use within the CyVerse computing environment.
* The [CoGe](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/products/user/using-coge.md) computing environment.

See [Data use policy](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/products/user/data_release_policy.md) before continuing.

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

