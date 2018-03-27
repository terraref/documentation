# Environmental conditions data

Environment conditions data is collected using the Vaisala CO<sub>2</sub>, Thies Clima weather sensors as well as lightning, irrigation, and weather data collected at the Maricopa site.

Data formats follow the [Climate and Forecast (CF) conventions](http://cfconventions.org/) for variable names and units. Environmental data are stored in the Geostreams database.

## Data sources


* WeatherStation coordinates are 33.074457 N, 111.975163 W
* EnvironmentLogger is on top of the gantry system and is moveable.
* Irrigation is managed at the field level. There are four regions that can be irrigated at different rates. 

## Data access


### Level 1 data

Level 1 meteorological data is aggregated to from 1 Hz raw data to 5 minute averages or sums.


#### netCDF: 5s (12 per minute) observations

On Globus or Workbench you can find these data provided in both hourly and daily files. These files contain data at the original temporal resolution of 1/s. In addition, they contain the high resolution spectral radiometer data. 

`sites/ua-mac/Level_1/envlog_netcdf`

* hourly files: `YYYY-MM-DD_HH-MM-SS_environmentallogger.nc`
* daily files: `envlog_netcdf_L1_ua-mac_YYYY-MM-DD.nc`

#### Geostreams: 5 minute observations


Data can be accessed using the geostreams API or the PEcAn meteorological workflow. These are illustrated in the [sensor data tutorials](https://github.com/terraref/tutorials/blob/master/sensors/01-meteorological-data.Rmd). 


Here is the json representation of a single five-minute observation:

Data can be accessed using the geostreams API or the PEcAn meteorological workflow. 

These are illustrated in the [sensor data tutorials](https://github.com/terraref/tutorials/blob/master/sensors/01-meteorological-data.Rmd). 


Here is the json representation of a single five-minute observation from Geostreams:

```
[
   {
      "geometry":{
         "type":"Point",
         "coordinates":[
            33.0745666667,
            -111.9750833333,
            0
         ]
      },
      "start_time":"2016-08-30T00:06:24-07:00",
      "type":"Feature",
      "end_time":"2016-08-30T00:10:00-07:00",
      "properties":{
         "precipitation_rate":0.0,
         "wind_speed":1.6207870370370374,
         "surface_downwelling_shortwave_flux_in_air":0.0,
         "northward_wind":0.07488770951583902,
         "relative_humidity":26.18560185185185,
         "air_temperature":300.17606481481516,
         "eastward_wind":1.571286062845733,
         "surface_downwelling_photosynthetic_photon_flux_in_air":0.0
      }
   },
```

#### Variable names and units

| CF standard-name                          | units | bety         | isimip       | cruncep | narr  | ameriflux |
|:------------------------------------------|:------|:-------------|:-------------|:--------|:------|:----------|
| **air_temperature**                       | K     | airT         | tasAdjust    | tair    | air   | TA (C)    |
| air_temperature_max                       | K     |              | tasmaxAdjust | NA      | tmax  |           |
| air_temperature_min                       | K     |              | tasminAdjust | NA      | tmin  |           |
| **air_pressure**                          | Pa    | air_pressure |              |         |       | PRESS (KPa) |
| mole_fraction_of_carbon_dioxide_in_air    | mol/mol |            |              |         |       | CO2       |
| moisture_content_of_soil_layer            | kg m-2 |             |              |         |       |           |
| soil_temperature                          | K     | soilT        |              |         |       | TS1 *(NOT DONE)* |
| relative_humidity                         | % | relative_humidity | rhurs       | NA      | rhum  | RH        |
| **specific_humidity**                     | 1 | specific_humidity | NA          | qair    | shum  | CALC(RH)  |
| water_vapor_saturation_deficit            | Pa    | VPD          |              |         |       | VPD *(NOT DONE)*     |
| **surface_downwelling_longwave_flux_in_air** | W m-2 | same      | rldsAdjust   | lwdown  | dlwrf | Rgl       |
| **surface_downwelling_shortwave_flux_in_air**| W m-2 |solar_radiation|rsdsAdjust| swdown  | dswrf | Rg        |
| surface_downwelling_photosynthetic_photon_flux_in_air | mol m-2 s-1 | PAR |     |         |       | PAR *(NOT DONE)*          |
| **precipitation_flux**                    |  kg m-2 s-1 | cccc   | prAdjust     | rain    | acpc  | PREC (mm/s)          |
|                                           | degrees | wind_direction |          |         |       | WD        |
| wind_speed                                | m/s   | Wspd         |              |         |       | WS        |
| **eastward_wind**                         | m/s   | eastward_wind |             |         |       | CALC(WS+WD) |
| **northward_wind**                        | m/s   | northward_wind |            |         |       | CALC(WS+WD) |

### Raw Data

Data is available via Globus or Workbench:


  * `/ua-mac/raw_data/co2sensor`
  * `/ua-mac/raw_data/EnvironmentLogger`
  * `/ua-mac/raw_data/irrigation`
  * `/ua-mac/raw_data/lightning`
  * `/ua-mac/raw_data/weather`


## Sensor information:

  * [Vaisala CO<sub>2</sub> Sensor collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9924f0cad7d8131b648)
  * [Thies Clima Sensor collection ](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9724f0cad7d8131b4d3)


## Computational pipeline

[**Environmental Logger**](https://github.com/terraref/extractors-environmental)

* **Description:** EnvironmentalLogger raw files are converted to netCDF.

## Known Issues

Known issue: the irrigation data stream does not currently handle variable irrigation rates within the field. Specifically, we have not yet accounted for the Summer 2014 drought experiments. See [terraref/reference-data#196](https://github.com/terraref/reference-data/issues/196) for more information.



### Github Issues

* [computing-pipeline#252 Developmet discussions](https://github.com/terraref/computing-pipeline/issues/252)
* [Downwelling Spectral radiometer calculations reference-data #30](https://github.com/terraref/reference-data/issues/30)
