# Data Products

The following table lists available TERRA-REF data products. The table will be updated as new datasets are released. Links are provided to pages with detailed information about each data product including sensor descriptions, algorithm \(extractor\) information, protocols, and data access instructions.

| Data product | Description |
| :--- | :--- |
| [3D point cloud data](point-cloud-data.md) | 3D point cloud data \(LAS\) of the field constructed from the Fraunhofer 3D scanner output \(PLY\). |
| [Fluorescence intensity imaging](fluorescence-intensity-imaging.md) | Fluorescence intensity imaging is collected using the PSII LemnaTec camera. Raw camera output is converted to \(netCDF/GeoTIFF\) |
| [Hyperspectral imaging data](hyperspectral-imaging-data.md) | Hyperspectral imaging data from the SWIR and VNIR Headwall Inspector sensors are converted to netCDF output using the hyperspectral extractor. |
| [Infrared heat imaging data](infrared-heat-imaging-data.md) | Infrared heat imaging data is collected using FLIR sensor. Raw output is converted to GeoTIFF using the FLIR extractor. |
| [Multispectral radiometer data](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/products/multispectral-radiometer-data.md) | Multispectral data is collected using the PRI and NDVI Skye sensors. Raw output is converted to timeseries data using the multispectral extractor. |
| [Stereo imaging data](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/products/stereo-imaging-data.md) | Stereo imaging data is collected using the Prosilica cameras. Full-color images are reconstructed in GeoTIFF format using the de-mosaic extractor. A full-field mosaic is generated using the full-field mosaic extractor. |
| Spectral reflectance data | Spectral reflectance is measured using a Crop Circle active crop canopy sensor |
| [Environmental conditions](environmental-conditions.md) | Environment conditions are collected through the CO2 sensor and Thies Clima. Raw output is converted to netCFG using the environmental-logger extractor. |
| [Meteorological data](meteorological-data.md) | postGIS/netCDF |
| [Phenotype data](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/products/trait-data.md) | Phenotype data is derived from sensor output using the PlantCV extractor and imported into BETYdb. |
| [Genomics data](genomics-data.md) | FASTQ and VCF files available via Globus |
| UAV and Phenotractor | Plot level data available in BETYdb |

## See also

* [What data is available](../what-data-is-available.md)?
* [Sensor calibration](../../scientific-objectives-and-experimental-design/protocols/sensor-calibration.md)
* [Fieldbooks and Protocols](../../scientific-objectives-and-experimental-design/protocols/)
* [Data standards](../../technical-documentation/data-standards/)
* [Geospatial information](geospatial-information.md)

