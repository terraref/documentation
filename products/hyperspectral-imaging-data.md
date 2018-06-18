# Hyperspectral imaging data

## Summary

Hyperspectral imaging data is collected using the Headwall VNIR and SWIR sensors. In the  Nov 2017 Beta Release only VNIR data is provided because we do not have the measurements of downwelling spectral radiation required by the pipeline. 

Please see the [README hyperspectral pipeline README](https://github.com/terraref/extractors-hyperspectral/tree/v1.0) for more information about how the data are generated and known issues.

## Hyperspectral Algorithm and pipeline

See **[Hyperspectral extractor](https://github.com/terraref/extractors-hyperspectral)**

## Data Access

### Level 1 data access

Hyperspectral data is available via Clowder, [Globus #Terraref endpoint](https://www.globus.org/), the [TERRA REF Workbench](https://workbench.terraref.org), and our [THREDDS server](https://terraref.ncsa.illinois.edu/thredds):

* **Clowder**:

  * [VNIR Hyperspectral NetCDFs](https://terraref.ncsa.illinois.edu/clowder/collection/5a0cc7e64f0ca87e15ba3163)
  * SWIR Collection: _Level 1 data not available_


* **Globus and Workbench**:

  * VNIR: `/sites/ua-mac/Level_1/vnir_netcdf`
  * SWIR: _Level 1 data not available_

* **Sensor information**:

  * [Headwall SWIR](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a79e4f0cad7d81319f5f) 
  * [Headwall VNIR](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7bb4f0cad7d8131a0b7) 


For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

### Level 2 data access

Level 2 data are spectral indices computed at the same resolution as Level 1. These can be found in the same Level 1 directories as their parents, but the files are appended *_ind.nc. 


To get a list of hyperspectral indices currently generated:

```{r}
traits::
```

### Level 3 data access

### Raw Data

Raw data is available in the filesystem, accessible via Workbench and Globus in the following directories:

* VNIR: `/sites/ua-mac/raw_data/VNIR`
* SWIR: `/sites/ua-mac/raw_data/SWIR`

These files are uncalibrated; see the hyperspectral pipeline repository for information on how these can be processed. 


### See also

* [Sensor calibration](/sensor-calibration.md)

* [Hyperspectral data pipeline](/hyperspectral-data.md)

* [Geospatial information](/user/geospatial-information.md)


