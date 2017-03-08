# Stereo imaging data

### Summary

Stereo imaging data is collected using the Prosilica RGB cameras.

### Raw data access

Data is available via Clowder and Globus:

* **Clowder**:  stereoTop collection
* **Globus**: `/ua-mac/raw_data/stereoTop`
* **Sensor information**: [Prosilica RGB collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a8ae4f0cad7d8131ac0e) 

For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Computational pipeline

[**Demosaic extractor**](https://github.com/terraref/extractors-stereo-rgb)

* **Description**: Binary stereo images are converted to demosaicked JPG and TIFF images.
* **Output**: `/ua-mac/Level_1/demosaic/`

**Full-field mosaic extractor**

* **Description: **
* **Output**

