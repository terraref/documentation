# Multispectral imaging data

### Summary

Multispectral data is collected using the Skye NDVI and PRI sensors. The normalized difference vegetation index \(NDVI\) is a simple graphical indicator that can be used to analyze remote sensing measurements.

### Raw data access

Data is available via Clowder and Globus:

* Clowder:
  * [ndviSensor collection](https://terraref.ncsa.illinois.edu/clowder/collection/5728bb50e4b03269d7078786)
  * [priSensor collection](https://terraref.ncsa.illinois.edu/clowder/collection/5728bb6ae4b03269d7078844)

* Globus:
  * `/sites/ua-mac/raw_data/ndviSensor`
  * `/sites/ua-mac/raw_data/priSensor`

* Sensor information:
  * [Skye PRI collection](https://terraref.ncsa.illinois.edu/clowder/datasets/581789524f0ce77b6655ccf9) 
  * [Skye NDVI collection](https://terraref.ncsa.illinois.edu/clowder/datasets/581787524f0ce77b6655b2c7)


For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Computation pipeline

[**Multispectral extractor**](https://github.com/terraref/extractors-multispectral)

* **Description:** NDVI binary files are converted to png thumbnail + geoTIFF\/netCDF

* **Output**: ?

