# Hyperspectral Data Pipeline Overview
The TERRA hyperspectral data pipeline processes imagery from hyperspectral camera, and ancillary metadata. The pipeline converts the "raw" ENVI-format imagery into netCDF4/HDF5 format with (currently) lossless compression that reduces their size by ~20%. The pipeline also adds suitable ancillary metadata to make the netCDF image files truly self-describing. At the end of the pipeline, the files are typically [ready for xxx]/[uploaded to yyy]/[zzz].

***

## Installation
**Software dependencies**  

The pipeline currently depends on three pre-requisites:
* [netCDF Operators (NCO)](http://nco.sf.net).
* [GDAL](http://gdal.fxm).
* [Python netCDF4](http://fxm).

## Interface
Clowder consists of Datasets, Collections and Spaces.
* **Datasets** consist of one or more files with associated metadata.
* **Collections** consist of one or more datasets.
* **Spaces** consist of collections and datasets. Spaces allow for particular roles to be assigned to particular users.

You can request an account for the [development instance of Clowder](http://141.142.209.122/clowder/) where this is being tested by clicking **Sign up** in the upper-right corner. 

***

**Pipeline source code**  

**Setup**  
