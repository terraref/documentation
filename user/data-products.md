# Data Products

The following table lists available TERRA-REF data products. The table will be updated as new datasets are released.  Links are provided to pages with detailed information about each data product including sensor descriptions, algorithm \(extractor\) information, protocols, and data access instructions.

| Data product | Category | Description |
| --- | --- | --- |
| [3D point cloud data](/products/point-cloud-data.md) | Imaging | 3D point cloud data \(LAS\) of the field constructed from the Fraunhofer 3D scanner output \(PLY\). |
| [Fluorescence intensity imaging](/products/fluorescence-intensity-imaging.md) | Imaging | Fluorescence intensity imaging is collected using the PSII camera. Raw camera output is converted to \(netCDF\/GeoTIFF?\) |
| [Hyperspectral imaging data](/products/hyperspectral-imaging-data.md) | Imaging | Hyperspectral imaging data from the SWIR and VNIR sensors are converted to netCDF output using the hyperspectral extractor. |
| [Infrared heat imaging data](/products/infrared-heat-imaging-data.md) | Imaging | Infrared heat imaging data is collected using FLIR sensor. Raw output is converted to GeoTIFF using the FLIR extractor. |
| [Multispectral imaging data](/products/multispectral-imaging-data.md) | Imaging | Multispectral imaging data is collected using the PRI and NDVI sensors. Raw output is converted to timeseries data using the multispectral extractor. |
| [Stereo imaging data](/products/stereo-imaging-data.md) | Imaging | Stereo imaging data is collected using the Prosilica cameras. Full-color images are reconstructed in GeoTIFF format using the de-mosaic extractor. A full-field mosaic is generated using the full-field mosaic extractor. |
| [Environmental conditions](/products/environmental-conditions.md) | Environmental | Environment conditions are collected through the CO2 sensor and Theis Clima. Raw output is converted to netCFG using the environmental-logger extractor. |
| [Meteorological data](/products/meteorological_data.md) | Environmental | postGIS\/netCDF |
| [Phenotype data](/products/trait-data.md) |  | Phenotype data is derived from sensor output using the PlantCV extractor and imported into BETYdb. |
| [Genomics data](/products/genomics-data.md) | Genomics |  FASTQ and VCF files available via Globus|
| UAV and Phenotractor |  | Plot level data available in BETYdb |

## See also

* [What data is available](/user/what-data-is-available.md)?
* [Sensor calibration](/sensor-calibration.md)
* [Fieldbooks and Protocols](/user/protocols.md)
* [Data standards](/data-standards.md)
* [Geospatial information](/user/geospatial-information.md)

