# Meteorological data

Meteorological data will use [Climate Forecasting 'standard names' and 'canonical units'](http://cfconventions.org/Data/cf-standard-names/29/build/cf-standard-name-table.html) conventions. CF is widely used in climate, meteorology, and earth sciences.

Here are some examples \(note that we can change from canonical units to match the appropriate scale, e.g. "C" instead of "K"; time can use any base time and time step \(e.g. `hours since 2015-01-01 00:00:00 UTC`, etc. But the time zone has to be UTC, where 12:00:00 is approx \(+/- 15 min\). solar noon at Greenwich.

| CF standard-name | units |
| :--- | :--- |
| time | days since 1700-01-01 00:00:00 UTC |
| air\_temperature | K |
| air\_pressure | Pa |
| mole\_fraction\_of\_carbon\_dioxide\_in\_air | mol/mol |
| moisture\_content\_of\_soil\_layer | kg m-2 |
| soil\_temperature | K |
| relative\_humidity | % |
| specific\_humidity | 1 |
| water\_vapor\_saturation\_deficit | Pa |
| surface\_downwelling\_longwave\_flux\_in\_air | W m-2 |
| surface\_downwelling\_shortwave\_flux\_in\_air | W m-2 |
| surface\_downwelling\_photosynthetic\_photon\_flux\_in\_air | mol m-2 s-1 |
| precipitation\_flux | kg m-2 s-1 |
| irrigation\_flux | kg m-2 s-1 |
| irrigation\_transport | kg s-1 |
| wind\_speed | m/s |
| eastward\_wind | m/s |
| northward\_wind | m/s |

* standard\_name is CF-convention standard names \(except irrigation\)
* units can be converted by udunits, so these can vary \(e.g. the time denominator may change with time frequency of inputs\)

## Running The Pipeline

**Before the Running**

The pipepline is developed in Python, so a Python Interpreter is a must. Other than the basic Python standard librarys, the following third-party libraries are required:

* netCDF4 for Python
* numpy

Other than official CPython interpreter, Pypy is also welcomed, but please make sure that these third-party modules are correctly installed for the target interpreter. The pipeline can only works in Python 2.X versions \(2.7 recommended\) since numpy does not support Python 3.X versions.

Cloning from the Git:

```bash
git clone https://github.com/terraref/computing-pipeline.git
cd  computing-pipeline/scripts/environmental_logger
git checkout master
```

The extractor for this pipeline is developed and maintained by Max in branch "EnvironmentalLogger-extractor" under the same repository.

**Get the Environmental Logger Pipeline to Work**

To trigger the pipeline, use the following command:

`python ${environmental_logger_source_path}/environmental_logger_json2netcdf.py ${input_JSON_file} ${output_netCDF_file}`

Where:

* `${environmental_logger_source_path}` is where the three environmental\_logger files are located
* `${input_JSON_file}` is where the input JSON files are located
* `${output_netCDF_file}` is where the users want the pipeline to export the product \(netCDF file\)

Please note that the parameter for the output file can be a path to either a directory or a file, and it is not necessarily to be existed. If the output is a path to a folder, the final product will be in this folder as a netCDF file that has the same name as the imported JSON file but with a different filename extension \(`.nc` for standard netCDF file\); if this path does not exist, environmental\_logger pipeline will automatically make one.

## Calculation

The calculation in the Environmental Logger is mainly finished by the module [environmental\_logger\_calculation.py](https://github.com/terraref/computing-pipeline/blob/master/scripts/environmental_logger/environmental_logger_calculation.py) under the support of numpy.

