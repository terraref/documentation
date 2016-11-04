# Hyperspectral imaging data

## Summary

Hyperspectral imaging data is collected using the Headwall VNIR and SWIR sensors.

### Raw data access

Hyperspectral data is available via Clowder and Globus:

* Clowder:  Link to collection

  * [SWIR Collection](https://terraref.ncsa.illinois.edu/clowder/collection/5728c2b3e4b03269d707a126)
  * [VNIR Collection](https://terraref.ncsa.illinois.edu/clowder/collection/57223ccfe4b082fbf2a8f5dc)

* Globus:

  * \/ua-mac\/raw\_data\/SWIR
  * \/ua-mac\/raw\_data\/VNIR

* Sensor information:

  * [Headwall SWIR](https://terraref.ncsa.illinois.edu/clowder/datasets/5817870c4f0ce77b6655aecd) 
  * [Headwall VNIR](https://terraref.ncsa.illinois.edu/clowder/datasets/581787264f0ce77b6655b125) 


For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Computational pipeline

[Hyperspectral extractor](https://github.com/terraref/extractors-hyperspectral)

* **Description**: Processes HDF files into netCDF
* **Output**: \/sites\/ua\_mac\/Level\_1\/???

### See also

* [Sensor calibration](/sensor-calibration.md)

* [Hyperspectral data pipeline](/hyperspectral-data.md)

