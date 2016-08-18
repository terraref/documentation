# Lemnatec Field Scanner

## Raw Data 

Raw data from the Lemnatec Field phenotyping platform is now available.  See accessing Data for more Information https://terraref.gitbooks.io/terraref-documentation/content/data_access.html

A list of the Lemnatec Field Scanner Sensors is available [here](https://terraref.gitbooks.io/terraref-documentation/content/sensors.html)


## Metadata

Six different kinds of meta data are currently available:

*  user_given_data
  * an arbitrary number of key value pairs, provided by the user within the measurement.
  * The key value pairs here are fully flexible. They can even be changed between any to sensor measurements.
*  gantry_fixed_data
  * all information about the gantry system that will not change during a measurement run. Once we have figured out the final set of key value pairs the entries here are fixed.
*  gantry_variable_data
 * all the current settings of the gantry hardware during a measurement like current location of all axis and state of the lights. Once we have figured out the final set of key value pairs the entries here are fixed.
*  sensor_fixed_data
  * fixed dataset of the specific sensor. The key value pairs will be different from sensor to sensor but will be fixed for the same sensor.
* sensor_variable_data
  * all current settings of the specific sensor. The key value pairs will be different from sensor to sensor but will be fixed for the same sensor.
*   measurement_additional_data
  *  all additional information that is available for a specific sensor measurement like start and end time of the measurement.

example:

```json
{
  "lemnatec_measurement_metadata": {
    "user_given_data": {
      "treamtment": "water stress",
      "plant id": "plantName",
      "experiment": "name"
    },
    "gantry_fixed_data": {
      "dimension_x [m]": "200",
      "dimension_y [m]": "20",
      "dimension_z [m]": "6"
    },
    "gantry_variable_data": {
      "location x [m]": "20",
      "location y [m]": "10",
      "location z [m]": "3",
      "vel x [m/s]": "0.1",
      "vel y [m/s]": "0.1",
      "vel z [m/s]": "0.0",
      "light1 is on": "true",
      "light2 is on": "true",
      "light3 is on": "true",
      "light4 is on": "false"
    },
    "sensor_fixed_data": {
      "sensor type": "stereo camera",
      "cameraA model": "allied vision GT3300",
      "cameraB model": "allied vision GT3300",
      "cameraA_serial_number": "1234567",
      "cameraB_serial_number": "2345678",
      "location_on_gantry": "side at higher y values",
      "image_width": "3296",
      "image_height": "2472",
      "rgb_bayer_pattern": "BayerGR8",
      "another_data_field": "..."
    },
    "sensor_variable_data": {
      "gain": "2.4",
      "exporsure [ms]": "12",
      "red balance ratio": "34",
      "blue balance ratio": "45"
    },
    "measurement_additional_data": {
      "measurement_starts_at": "2015.12.16 11:11:22:801",
      "measurement_ends_at": "2015.12.16 11:11:56:808"
    }
  }
}
```

