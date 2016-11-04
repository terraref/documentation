# Stereo imaging data

### Summary

Stereo imaging data is collected using the Prosilica RGB cameras.

### Raw data access

Data is available via Clowder and Globus:

* **Clowder**:  [stereoTop collection](https://terraref.ncsa.illinois.edu/clowder/collection/5728bb56e4b03269d70787b4)
* **Globus**: `/ua-mac/raw_data/stereoTop`
* **Sensor information**: [Prosilica RGB collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5817873d4f0ce77b6655b269) 

For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Computation pipeline

[**Demosaic extractor**](https://github.com/terraref/extractors-stereo-rgb)

* **Description**: Binary stereo images are converted to demosaicked JPG and TIFF images.
* **Output**: `/ua-mac/Level_1/demosaic/`

**Full-field mosaic extractor**
* **Description: **

* **Output**

