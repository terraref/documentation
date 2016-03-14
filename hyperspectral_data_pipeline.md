# Hyperspectral Data Pipeline Overview
The TERRA hyperspectral data pipeline processes imagery from hyperspectral camera, and ancillary metadata. The pipeline converts the "raw" ENVI-format imagery into netCDF4/HDF5 format with (currently) lossless compression that reduces their size by ~20%. The pipeline also adds suitable ancillary metadata to make the netCDF image files truly self-describing. At the end of the pipeline, the files are typically [ready for xxx]/[uploaded to yyy]/[zzz].

***

## Installation
**Software dependencies**  

The pipeline currently depends on three pre-requisites:
* [netCDF Operators (NCO)](http://nco.sf.net).
* [GDAL](http://gdal.fxm).
* [Python netCDF4](http://fxm).

***

**Pipeline source code**

Once the pre-requisite libraries above have been installed, the pipeline itself may be installed by checking-out the TERRAREF computing-pipeline repository. The relevant scripts for hyperspectral imagery are:

* Main script [terraref.sh](https://github.com/terraref/computing-pipeline/tree/master/scripts/terraref.sh)
* NCO/ncap2 script to convert 2D->3D [terraref.nco](https://github.com/terraref/computing-pipeline/tree/master/scripts/terraref.nco)
* JSON metadata->netCDF4 script [JsonDealer.py](https://github.com/terraref/computing-pipeline/tree/master/scripts/JsonDealer.py)

**Setup**  

The pipeline currently assumes specific locations and filename conventions. These will be relaxed or modified as the pipeline environment becomes clearer. For now, the following setup will suffice

mkdir ~/terraref
cd ~/terraref
git clone git@github.com:terraref/computing-pipeline.git
git clone git@github.com:terraref/documentation.git

**Running the Pipeline**

terraref.sh -i ${DATA}/terraref/whiteReference -O ${DATA}/terraref
terraref.sh -I /projects/arpae/terraref/raw_data/lemnatec_field -O /projects/arpae/terraref/outputs/lemnatec_field
