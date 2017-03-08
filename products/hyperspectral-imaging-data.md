# Hyperspectral imaging data

## Summary

Hyperspectral imaging data is collected using the Headwall VNIR and SWIR sensors.

### Raw data access

Hyperspectral data is available via Clowder and Globus:

* **Clowder**:

  * [SWIR Collection](https://terraref.ncsa.illinois.edu/clowder/collection/58713c934f0cc129fb5b8894)
  * [VNIR Collection](https://terraref.ncsa.illinois.edu/clowder/collection/587021414f0c0dbad1a6dd3d)

* **Globus**:

  * `/ua-mac/raw_data/SWIR`
  * `/ua-mac/raw_data/VNIR`

* **Sensor information**:

  * [Headwall SWIR](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a79e4f0cad7d81319f5f) 
  * [Headwall VNIR](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7bb4f0cad7d8131a0b7) 


For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Computational pipeline

**[Hyperspectral extractor](https://github.com/terraref/extractors-hyperspectral)**

* **Description**: Processes HDF files into netCDF
* **Output**: `/sites/ua_mac/Level_1/hyperspectral`

### See also

* [Sensor calibration](/sensor-calibration.md)

* [Hyperspectral data pipeline](/hyperspectral-data.md)

* [Geospatial information](/user/geospatial-information.md)


