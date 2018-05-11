# Genomics data

Genomic data includes whole-genome resequencing data from the HudsonAlpha Institute for Biotechnology, Alabama for 384 samples for accessions from the sorghum [Bioenergy Association Panel](http://doi.org/10.1534/genetics.115.183947) \(BAP\) and genotyping-by-sequencing \(GBS\) data from Kansas State University for 768 samples from a population of sorghum recombinant inbred lines \(RIL\).

These data are available to Beta Users and require permission to access. A link to sign up for our beta user program can be found at [http://terraref.org/data](http://terraref.org/data). Once you have signed up for our beta user program you can access genomics data in one of the following locations:

* Download via [Globus](../how-to-access-data/using-globus-sensor-and-genomics-data.md).
* The NDS Analysis Workbench, which provides container-based computing environments including Jupyter, Rstudio, and Python IDE.
* The CyVerse Data Store for download or use within the CyVerse computing environment.
* The [CoGe](../how-to-access-data/using-coge-genomics.md) computing environment.

See [Data use policy](../data-use-policy.md) before continuing.

The data is structured on both the TERRA-REF and CyVerse Data Store infrastructures as follows:

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

Raw data are in bzip2 FASTQ format, one per read pair \(\*\_R1.fastq.bz2 and \*\_R2.fastq.bz2\). 384 samples are available. For a list of the lines sequenced, see the [sample table](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/products/user/sorghum-lines-genomics.md).

### Derived data

Data derived from analysis of the raw resequencing data at the Danforth Center \(version1\) are available as gzipped, genotyped variant call format \(gVCF\) files and the final combined hapmap file.

## Genotyping-by-sequencing \(GBS\)

### Raw data

Raw data are in gzip FASTQ format. 768 samples are available. For a list of lines sequenced, see the [sample table](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/products/user/genotyping-by-sequencing.md).

### Derived data

Combined genotype calls are available in VCF format.

