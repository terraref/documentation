# Multispectral imaging data

### Summary

Multispectral data is collected using the Skye NDVI and PRI sensors. The normalized difference vegetation index \(NDVI\) is a simple graphical indicator that can be used to analyze remote sensing measurements.

### Raw data access

Data is available via Clowder and Globus:

* **Clowder**:

  * [ndviSensor collection](https://terraref.ncsa.illinois.edu/clowder/collection/5880f0444f0c94eefbb159a6)
  * priSensor collection

* **Globus**:

  * `/sites/ua-mac/raw_data/ndviSensor`
  * `/sites/ua-mac/raw_data/priSensor`

* **Sensor information**:

  * [Skye PRI collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9174f0cad7d8131b09a) 
  * [Skye NDVI collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a8f64f0cad7d8131af54)


For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Computational pipeline

[**Multispectral extractor**](https://github.com/terraref/extractors-multispectral)

* **Description:** NDVI binary files are converted to png thumbnail + geoTIFF\/netCDF
* **Output**: `/sites/ua-mac/Level_1/priSensor`

### See also

* [Geospatial information](/user/geospatial-information.md)

