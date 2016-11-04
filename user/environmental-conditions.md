# Environmental conditions data

CO2, PRI and environmental logger sensors, and lightning, weather, and irrigation data at the Maricopa Site

These extractors process data originating from:- GMP 343 CO2 sensor- Skye PRI sensor- Thies Clima environmental sensors- Maricopa lightning\/irrigation\/weather data

## Data access

Data is available via Clowder and Globus:

* Clowder:

  * [co2sensor](https://terraref.ncsa.illinois.edu/clowder/collection/57226fc1e4b082fbf2a94702) collection
  * [priSensor](https://terraref.ncsa.illinois.edu/clowder/collection/5728bb6ae4b03269d7078844) collection
  * [weather](https://terraref.ncsa.illinois.edu/clowder/collection/57e043964f0cb775be5f158c) collection

* Globus:

  * \/ua-mac\/raw\_data\/co2sensor
  * \/ua-mac\/raw\_data\/priSensor

  * \/ua-mac\/raw\_data\/weather

  * \/ua-mac\/raw\_data\/EnvironmentLogger
  * \/ua-mac\/Level\_1\/EnvironmentLogger

* Sensor information:
  * [Vaisala CO2 Sensor collection](https://terraref.ncsa.illinois.edu/clowder/datasets/581787d94f0ce77b6655b819)
  * [Skye PRI Sensor collection](https://terraref.ncsa.illinois.edu/clowder/datasets/581789524f0ce77b6655ccf9)
  * [Theis Clima Sensor collection ](https://terraref.ncsa.illinois.edu/clowder/datasets/58178a744f0ce77b6655d38a)


### Extractor

This extractor processes environmental logger stream data .JSON files into a netCDF

_Input_

* Evaluation is triggered whenever a file is added to a dataset - Checks whether the file is an _environmentlogger.json file \_Output_

* The dataset containing the .JSON file will get a corresponding .nc netCDF file


[https:\/\/github.com\/terraref\/computing-pipeline\/issues\/115](https://github.com/terraref/computing-pipeline/issues/115)

