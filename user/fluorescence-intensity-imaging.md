# Fluorescence intensity imaging

### Summary

Fluorescence intensity data is collected using the PSII camera.

### Raw data access

Fluorescence intensity data is available via Clowder and Globus:

* **Clowder**: _ _[ps2Top collection](https://terraref.ncsa.illinois.edu/clowder/collection/572a7c2be4b03269d70a82f7)
* **Globus path**:  `/sites/ua-mac/raw_data/ps2top`
* **Sensor information**: [LemnaTec PSII](https://terraref.ncsa.illinois.edu/clowder/datasets/581789834f0ce77b6655cee4)

For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Computational pipeline

**[Multispectral extractor](https://github.com/terraref/extractors-multispectral)**

* **Description**: Raw image output is converted to a raster format \(netCDF\/GeoTIFF\) 
* **Output**: \/sites\/ua\_mac\/Level\_1\/???

### Details

There are 102 bin files. The first \(index 0\) is an image taken right before the LED are switched on \(dark reference\). Frame 1 to 100 are the 100 images taken, with the LEDs on. In binary file 102 \(index 101\) is a list with the timestamps of each frame of the 100 frames.

Right now the LED on timespan is 1s thus the first 50 frames are taken with LEDs on the latter 50 frames with LED off..

### See also

* [Geospatial information](/user/geospatial-information.md)


