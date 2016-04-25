# Environmental Data

## Meteorology

Meteorological data will use [Climate Forecasting 'standard names' and 'canonical units'](http://cfconventions.org/Data/cf-standard-names/29/build/cf-standard-name-table.html) conventions. CF is widely used in climate, meteorology, and earth sciences.

Here are some examples (note that we can change from canonical units to match the appropriate scale, e.g. "C" instead of "K"; time can use any base time and time step (e.g. `hours since 2015-01-01 00:00:00 UTC`, etc.  But the time zone has to be UTC, where 12:00:00 is approx (+/- 15 min). solar noon at Greenwich.

| CF standard-name                          | units | 
|:------------------------------------------|:------|
| time | days since 1700-01-01 00:00:00 UTC|
| air_temperature                       | K     | 
| air_pressure                         | Pa    | 
| mole_fraction_of_carbon_dioxide_in_air    | mol/mol |
| moisture_content_of_soil_layer            | kg m-2 |        
| soil_temperature                          | K     | 
| relative_humidity                         | % | 
| specific_humidity                     | 1 | 
| water_vapor_saturation_deficit            | Pa    |  
| surface_downwelling_longwave_flux_in_air | W m-2 |  
| surface_downwelling_shortwave_flux_in_air| W m-2 |
| surface_downwelling_photosynthetic_photon_flux_in_air | mol m-2 s-1 |
| precipitation_flux                    |  kg m-2 s-1 |          
| irrigation_flux                        | kg m-2 s-1   |
| wind_speed                                | m/s   | 
| eastward_wind                         | m/s   |
| northward_wind                        | m/s   |

* standard_name is CF-convention standard names (except irrigation)
* units can be converted by udunits, so these can vary (e.g. the time denominator may change with time frequency of inputs)


