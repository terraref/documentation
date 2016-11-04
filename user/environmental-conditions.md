# Environmental conditions data

Environment conditions data is collected using the Vaisala CO2, Skye PRI, and Thies Clima weather sensors as well as lightning, irrigation, and weather data collected at the Maricopa site.

## Raw data access

Data is available via Clowder and Globus:

* **Clowder**:
  * [co2sensor](https://terraref.ncsa.illinois.edu/clowder/collection/57226fc1e4b082fbf2a94702) collection
  * [priSensor](https://terraref.ncsa.illinois.edu/clowder/collection/5728bb6ae4b03269d7078844) collection
  * [weather](https://terraref.ncsa.illinois.edu/clowder/collection/57e043964f0cb775be5f158c) collection

* **Globus**:
  * `/ua-mac/raw_data/co2sensor`
  * `/ua-mac/raw_data/priSensor`
  * `/ua-mac/raw_data/weather`
  * `/ua-mac/raw_data/EnvironmentLogger`

* **Sensor information**:
  * [Vaisala CO2 Sensor collection](https://terraref.ncsa.illinois.edu/clowder/datasets/581787d94f0ce77b6655b819)
  * [Skye PRI Sensor collection](https://terraref.ncsa.illinois.edu/clowder/datasets/581789524f0ce77b6655ccf9)
  * [Theis Clima Sensor collection ](https://terraref.ncsa.illinois.edu/clowder/datasets/58178a744f0ce77b6655d38a)


### Computational pipeline

**[Environmental Logger](https://github.com/terraref/extractors-environmental)**** extractors. **

* **Description:** EnvironmentalLogger raw files are converted to netCDF.
* **Output**: `/ua-mac/Level_1/EnvironmentLogger`


