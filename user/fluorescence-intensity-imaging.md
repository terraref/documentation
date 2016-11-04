# Fluorescence intensity imaging

### Summary

Fluorescence intensity data is collected using the PSII camera.

### Raw data access

Fluorescence intensity data is available via Clowder and Globus:

* Clowder: _ _[ps2Top collection](https://terraref.ncsa.illinois.edu/clowder/collection/572a7c2be4b03269d70a82f7)
* Globus path:  \/sites\/ua-mac\/raw\_data\/ps2top
* Sensor information: [LemnaTec PSII](https://terraref.ncsa.illinois.edu/clowder/datasets/581789834f0ce77b6655cee4)

For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Computational pipeline

Raw image output is converted to a raster format \(netCDF\/GeoTIFF\) using the `multispectral extractor`


Description: PLY data is converted to LAS using the 3D point cloud extractor

Output: /sites/ua_mac/Level_1/scanner3DTop

* 
* 
* 
* Fluorescence imaging data is converted to \(netCDF\/GeoTIFF\) format using the [PSII extractor](https://github.com/terraref/extractors-multispectral)

