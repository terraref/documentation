#Environmental Data Product Creation
CO2, PRI and environmental logger sensors, and lightning, weather, and irrigation data 

These extractors process data originating from:
- GMP 343 CO2 sensor
- Skye PRI sensor
- Thies Clima environmental sensors
- Maricopa lightning/irrigation/weather data


### Environmental Logger extractor
This extractor processes environmental logger stream data .JSON files into a netCDF 

_Input_

  - Evaluation is triggered whenever a file is added to a dataset
  - Checks whether the file is an _environmentlogger.json file
  
_Output_

  - The dataset containing the .JSON file will get a corresponding .nc netCDF file

