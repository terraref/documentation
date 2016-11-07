# Environmental Data

## Meteorology

Meteorological data will use [Climate Forecasting 'standard names' and 'canonical units'](http://cfconventions.org/Data/cf-standard-names/29/build/cf-standard-name-table.html) conventions. CF is widely used in climate, meteorology, and earth sciences.

Here are some examples (note that we can change from canonical units to match the appropriate scale, e.g. "C" instead of "K"; time can use any base time and time step (e.g. `hours since 2015-01-01 00:00:00 UTC`, etc.  But the time zone has to be UTC, where 12:00:00 is approx (+/- 15 min). solar noon at Greenwich.

| CF standard-name                         | units                              |
| :--------------------------------------- | :--------------------------------- |
| time                                     | days since 1700-01-01 00:00:00 UTC |
| air_temperature                          | K                                  |
| air_pressure                             | Pa                                 |
| mole_fraction_of_carbon_dioxide_in_air   | mol/mol                            |
| moisture_content_of_soil_layer           | kg m-2                             |
| soil_temperature                         | K                                  |
| relative_humidity                        | %                                  |
| specific_humidity                        | 1                                  |
| water_vapor_saturation_deficit           | Pa                                 |
| surface_downwelling_longwave_flux_in_air | W m-2                              |
| surface_downwelling_shortwave_flux_in_air | W m-2                              |
| surface_downwelling_photosynthetic_photon_flux_in_air | mol m-2 s-1                        |
| precipitation_flux                       | kg m-2 s-1                         |
| irrigation_flux                          | kg m-2 s-1                         |
| wind_speed                               | m/s                                |
| eastward_wind                            | m/s                                |
| northward_wind                           | m/s                                |

- standard_name is CF-convention standard names (except irrigation)
- units can be converted by udunits, so these can vary (e.g. the time denominator may change with time frequency of inputs)

## Running The Pipeline

**Before the Running**

The pipepline is developed in Python, so a Python Interpreter is a must. Other than the basic Python standard librarys, the following third-party libraries are required:

- netCDF4 for Python
- numpy

Other than official CPython interpreter, Pypy is also welcomed, but please make sure that these third-party modules are correctly installed for the target interpreter. The pipeline can only works in Python 2.X versions (2.7 recommended) since numpy does not support Python 3.X versions.

Cloning from the Git:

```bash
git clone https://github.com/terraref/computing-pipeline.git
cd  computing-pipeline/scripts/environmental_logger
git checkout master
```

The extractor for this pipeline is developed and maintained by Max in branch "EnvironmentalLogger-extractor" under the same repository.



------



**Get the Environmental Logger Pipeline to Work**

To trigger the pipeline, use the following command:

`python ${environmental_logger_source_path}/environmental_logger_json2netcdf.py ${input_JSON_file} ${output_netCDF_file}`

Where:

- `${environmental_logger_source_path}` is where the three environmental_logger files are located
- `${input_JSON_file}` is where the input JSON files are located
- `${output_netCDF_file}` is where the users want the pipeline to export the product (netCDF file)

Please note that the parameter for the output file can be a path to either a directory or a file, and it is not necessarily to be existed. If the output is a path to a folder, the final product will be in this folder as a netCDF file that has the same name as the imported JSON file but with a different filename extension (`.nc` for standard netCDF file); if this path does not exist, environmental_logger pipeline will automatically make one.



## Calculation

The calculation in the Environmental Logger is mainly finished by the module [environmental_logger_calculation.py](https://github.com/terraref/computing-pipeline/blob/master/scripts/environmental_logger/environmental_logger_calculation.py) under the support of numpy.

