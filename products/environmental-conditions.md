# Environmental conditions data

Environment conditions data is collected using the Vaisala CO<sub>2</sub>, Thies Clima weather sensors as well as lightning, irrigation, and weather data collected at the Maricopa site.

## Data access

Data is available via Clowder and Globus:

* **Clowder**:

  * co2sensor \(Viasala CO<sub>2</sub>\)
  * EnvironmentalLogger \(Thies Clima\)
  * irrigation, lightning and [weather ](https://terraref.ncsa.illinois.edu/clowder/collection/5893a6da4f0c06726b1b03a9)collections \(MAC Weather Station\)

* **Globus**:

  * `/ua-mac/raw_data/co2sensor`
  * `/ua-mac/raw_data/EnvironmentLogger`
  * `/ua-mac/raw_data/irrigation`
  * `/ua-mac/raw_data/lightning`
  * `/ua-mac/raw_data/weather`

* **Sensor information**:

  * [Vaisala CO<sub>2</sub> Sensor collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9924f0cad7d8131b648)
  * [Thies Clima Sensor collection ](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9724f0cad7d8131b4d3)


### Computational pipeline

[**Environmental Logger**](https://github.com/terraref/extractors-environmental)

* **Description:** EnvironmentalLogger raw files are converted to netCDF.
* **Output**: `/ua-mac/Level_1/EnvironmentLogger`

### See also

* [Geospatial information](/user/geospatial-information.md)

