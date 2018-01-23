# Infrared heat imaging data

## Summary

Infrared heat imaging data is collected collected using the FLIR SC615 thermal sensor. These data are provided as geotiff image raster files as well as plot level means.

* Algorithms are in the [flir2tif directory of the Multispectral extractor](https://github.com/terraref/extractors-multispectral/tree/master/flir2tif) repository; see the readme for details. 
* Sensor information: [FLIR Thermal Camera collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7184f0cad7d8131994a)

## Level 1 Data Access

### Filesystem (Globus and Workbench) 

* `ua-mac/Level_1/ir_geotiff`

### Clowder

To be created https://github.com/terraref/computing-pipeline/issues/391

## Level 3 Data

Plot level summaries are named ['surface_temperature'](http://mmisw.org/ont/cf/parameter/surface_temperature) in the trait database. In the future this name will be used for the Level 1 data as well. This name from the Climate Forecast (CF) conventions, and is used instead of 'canopy_temperature' for two reasons: First, because we do not (currently) filter soil in this pipeline. Second, because the CF definition of surface_temperature distinguishes the surface from the medium: "The surface temperature is the temperature at the interface, not the bulk temperature of the medium above or below."   http://cfconventions.org/Data/cf-standard-names/48/build/cf-standard-name-table.html

## Raw data access

Thermal imaging data is available via Clowder and Globus:

`/ua-mac/raw_data/flirIrCamera`

For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

## Known Issues

* Data are unavailable for Season 4 (summer 2017 sorghum) and season 5 (winter 2017-2018 wheat).
  * Work to recover these data is ongoing; see [terraref/reference-data#190](https://github.com/terraref/reference-data/issues/190)
  * Problem description [terraref/reference-data#182](https://github.com/terraref/reference-data/issues/182)

## See also

* [Geospatial information](/user/geospatial-information.md)
