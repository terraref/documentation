# Extractor Workflow

As source data files are being added to DataSets, the extractor will receive messages about these events. For now one DataSet will contain at most one day of continuous data records.

To make it easier to aggregate data records when needed later, the extractor waits until one DataSet is full before processing it.

The extractor verifies one DataSet is full by checking if the DataSet contains 24 `.dat` files.

Then the extractor verifies the DataSet not processed already by checking if an extractor-specific metadata entry is present on the DataSet.

The extractor processes the DataSet by:

- Looping over all `.dat` files while:
    - Parsing every file into a list of converted data record JSON objects,
    - Marking each data record with the data source info, sensor ID and stream ID (which are not available in the files being parsed),
    - Uploading all the data records to GeoStream.
- Finally marking the DataSet as processed with a metadata entry.

## Data Record Conversion

The source data files (`.dat` files) contain text content that looks like this:

```
"TOA5","WeatherStation","CR1000","39656","CR1000.Std.29","CPU:F13WeatherStation.CR1","39725","SecData"
"TIMESTAMP","RECORD","BattV","PTemp_C","AirTC","RH","Pyro","PAR_ref","WindDir","WS_ms","Rain_mm_Tot"
"TS","RN","Volts","Deg C","Deg C","%","W/m^2","umol/s/m^2","degrees","meters/second","mm"
"","","Smp","Smp","Smp","Smp","Smp","Smp","Smp","Smp","Tot"
"2016-08-30 00:06:24",7276223,12.61,27.37,26.74,27.48,0,0,65,2.45,0
"2016-08-30 00:06:25",7276224,12.61,27.37,26.71,27.42,0,0,65,2.83,0
"2016-08-30 00:06:26",7276225,12.6,27.37,26.71,27.42,0,0,74,2.36,0
...
```

(`...` means repeating lines of data records like the three lines above.)

The full detail about the file format could be found here: https://www.manualslib.com/manual/538296/Campbell-Cr9000.html?page=43

In short, the first four lines of the file explains what schema the file is using, what data columns are available in this file, what units are used for each data column and what sampling methods are using for determing the value in each column.

The specific data columns we are handling in these `.dat` files are:

- Timestamp - date and time the measurement was made.
- Record - the record number/measurement number since the current program was started.
- BattV - battery voltage of the station.
- PTemp_C - panel temperature of the data logger. Internal temperature, in degrees Celcius.
- AirTC - Outside air temperature, Celcius. Vaisala HMP60 humidity and temperature probe.
- RH - relative humidity, percent. Inside the same probe with temperature sensor (HMP60).
- Pyro - LI-COR pyranometer, model LI-200. Output in watts/m^-2. 
- PAR_ref - LI-COR quantum sensor, model LI-190. Output in micro mols per second-meter^2.
- WindDir - Gill Instruments WindSonic 2-Axis anemometer. Wind direction (degrees relative to true north).
- WS_ms - same instrument as above, wind speed in meters per second.
- Rain_mm_Tot - Texas Electronics rain bucket, model TE525. Output is counts, 1 millimeter of rain per count.

Custom calibration coefficients are applied at the time of the measurement to convert raw signals into the physical units in the logged record. They were derived during factory calibration and are listed on the sensors' data sheet.

In order to follow CF conventions, these convertions are performed:

- `AirTC` values are converted from Celcius to Kelvin and stored as `air_temperature`,
- `RH` values are stored as `relative_humidity`,
- `Pyro` values are stored as `surface_downwelling_shortwave_flux_in_air`,
- `PAR_ref` values are stored as `surface_downwelling_photosynthetic_photon_flux_in_air`,
- `WS_ms` values are stored as `wind_speed`,
- `WindDir` values are used to break down `WS_ms` values into `eastward_wind` and `northward_wind`,
- `Rain_mm_Tot` values are stored as `precipitation_rate`.
