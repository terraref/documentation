# Hyperspectral Data Pipeline Overview
The TERRA hyperspectral data pipeline processes imagery from hyperspectral camera, and ancillary metadata. The pipeline converts the "raw" ENVI-format imagery into netCDF4/HDF5 format with (currently) lossless compression that reduces their size by ~20%. The pipeline also adds suitable ancillary metadata to make the netCDF image files truly self-describing. At the end of the pipeline, the files are typically [ready for xxx]/[uploaded to yyy]/[zzz].

***

## Installation
**Software dependencies**

The pipeline currently depends on three pre-requisites:* [netCDF Operators (NCO)](http://nco.sf.net).* [Python netCDF4](http://fxm).

***

**Pipeline source code**

Once the pre-requisite libraries above have been installed, the pipeline itself may be installed by checking-out the TERRAREF computing-pipeline repository. The relevant scripts for hyperspectral imagery are:

* Main script [terraref.sh](https://github.com/terraref/computing-pipeline/tree/master/scripts/hyperspectral/terraref.sh)* JSON metadata->netCDF4 script [JsonDealer.py](https://github.com/terraref/computing-pipeline/tree/master/scripts/hyperspectral/JsonDealer.py)

**Setup**

The pipeline works with input from any location (directories, files, or stdin). Supply the raw image filename(s) (e.g., meat_raw), and the pipeline derives the ancillary filename(s) from this (e.g., meat_raw.hdr, meat_metadata.json). When specifying a directory without a specifice filename, the pipeline processes all files with the suffix "_raw".

```shmkdir ~/terrarefcd ~/terrarefgit clone git@github.com:terraref/computing-pipeline.gitgit clone git@github.com:terraref/documentation.git```

**Run the Hyperspectral Pipeline**

```shterraref.sh -i ${DATA}/terraref/foo_raw -O ${DATA}/terrarefterraref.sh -I /projects/arpae/terraref/raw_data/lemnatec_field -O /projects/arpae/terraref/outputs/lemnatec_field```
