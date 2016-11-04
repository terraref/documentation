# Environmental conditions data

Environment conditions data is collected using the Vaisala CO2, Thies Clima weather sensors as well as lightning, irrigation, and weather data collected at the Maricopa site.

## Data access

Data is available via Clowder and Globus:

* **Clowder**:

  * [co2sensor](https://terraref.ncsa.illinois.edu/clowder/collection/57226fc1e4b082fbf2a94702) collection \(Viasala CO2\)
  * EnvironmentalLogger \(Theis Clima\)
  * irrigation, lightning and [weather ](https://terraref.ncsa.illinois.edu/clowder/collection/57e043964f0cb775be5f158c)collections \(MAC Weather Station\)

* **Globus**:

  * `/ua-mac/raw_data/co2sensor`
  * `/ua-mac/raw_data/EnvironmentLogger`
  * `/ua-mac/raw_data/irrigation`
  * `/ua-mac/raw_data/lightning`
  * `/ua-mac/raw_data/weather`

* **Sensor information**:

  * [Vaisala CO2 Sensor collection](https://terraref.ncsa.illinois.edu/clowder/datasets/581787d94f0ce77b6655b819)
  * [Theis Clima Sensor collection ](https://terraref.ncsa.illinois.edu/clowder/datasets/58178a744f0ce77b6655d38a)


### Computational pipeline

[**Environmental Logger**](https://github.com/terraref/extractors-environmental)

* **Description:** EnvironmentalLogger raw files are converted to netCDF.
* **Output**: `/ua-mac/Level_1/EnvironmentLogger`

### See also

* [Geospatial information](/user/geospatial-information.md)

