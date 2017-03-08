# Infrared heat imaging data

### Summary

Infrared heat imaging data is collected collected using the FLIR SC615 thermal sensor.

### Raw data access

Thermal imaging data is available via Clowder and Globus:

* **Clowder**: [flirIrCamera collection](https://terraref.ncsa.illinois.edu/clowder/collection/587171894f0cc129fb754b26)
* **Globus**:  `/ua-mac/raw_data/flirIrCamera`
* **Sensor information**: [FLIR Thermal Camera collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7184f0cad7d8131994a)

For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Computational pipeline

**[Multispectral extractor](https://github.com/terraref/extractors-multispectral)**

* **Description**: Raw sensor output is converted to PNG and GeoTIFF format
* **Output**: `/ua-mac/Level_1/flirIrCamera`

### See also

* [Geospatial information](/user/geospatial-information.md)

