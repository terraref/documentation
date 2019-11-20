# Genomics

[Whole genome resequencing](experimental-design-genomics.md) is being carried out on ~400 sorghum accessions to understand the landscape of genetic variation in the selected germplasm and enable high-resolution mapping of bioenergy traits with genome wide association studies \(GWAS\). Additionally, ~200 sorghum recombinant inbred lines \(RILs\) will be characterized with ~400,000 genetic markers using genotyping-by-sequencing \([Morris et al., 2013](http://www.g3journal.org/content/early/2013/09/13/g3.113.008417)\) for trait dissection in the RIL population and testcross hybrids of the RIL population.

## Whole-genome resequencing

**Experimental Design:**

* [384 BAP samples](https://gist.github.com/dlebauer/6b7b0e181cc5ae5034b992f725712ba4#file-sorghum-lines-genomics-md) were sequenced to an average depth of ~25x.
  * [List of BAP accessions in BETYdb](https://terraref.org/bety/api/v1/cultivars?ecotype=BAP)
* Shotgun sequencing \(127-bp paired-end\) was done using an Illumina X10 instrument at the HudsonAlpha Institute for Biotechnology.
* Variant calling was done using a [computational pipeline](../protocols/genomic-data.md) at the Danforth Center. 

## Genotyping-by-sequencing

**Experimental Design:**

* [768 RIL samples](https://terraref.org/bety/api/v1/cultivars?ecotype=RIL) were sequenced using a GBS approach.

## Data Availability

### CyVerse Data Commons

* These data are available in the [CyVerse Data Commons](https://datacommons.cyverse.org/browse/iplant/home/shared/terraref/genomics)
* 
### CoGe

CoGe has integrated the tools that make up the Danforth Center’s variant calling pipeline into their easy point and click GUI, allowing users to reproduce a majority of the TERRA SNP analysis.  Below, we detail how to run sequence data through CoGe’s system.

