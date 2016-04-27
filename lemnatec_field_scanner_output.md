# Lemnatec Field Scanner

## Site Description

University of Arizona Maricopa Agricultural Center. 

* Location:
* Link to BETYdb site record:
* Soil
* Climate

## Sensors

Current suite of sensors 

| Description | Camera | Technical Data |
|:-----|:------|:-----|:-----|
| Hyperspectral Imager | Inspector VNIR | 380-1000 nm|
| Hyperspectral Imager | Inspector SWIR | 900-2500 nm|
| Thermal Infrared | FLIR SC 615 | Thermal Sensitivity < 50mK @ 30C|
|   |   | range: -40 to 150 C |
| Dedicated NDVI (1 down, 1 up)  | Skye NDVI Sensors  | CH1: 650 +/- 3nm|
|    |   |  CH2: 800 +/- 3nm |
|    |   | Bandwidth: 10nm +/- 3nm |
|Dedicated PRI Sensor | Skye PRI | CH1: 531nm +/- 3nm |
|   |   | CH2: 570 +/- 3nm |
|   |   | Bandwidth: 10nm  +/- 3nm
|PAR Sensor | Quantum | Spectral Range 410 to 655 nm|
| Color Sensor | STS-Vis | Range: 410-655 nm|
| Top Down Height Scanner| 3D Frauhofer | |  
| Side Looking Laser Scanners (2) | 3D Frauhofer | |
| 8MP RGB Camera Downward Looking | GT3300C | |
| 8MP RGB Camera Side View (2) | GT 3300C | |
| Active Reflectance | Crop Circle ACS430P | 670, 730, 780 nm |
| Fluorescence Measurement | Lemnatec PSII | |
| Environmental Sensors | Thies Clima | Wind, Air T, Humidity
|  |  | Pressure, Light, Precipitation |
| CO2 Sensor | GMP 343 | Range 0-1000ppm |

## Raw Data 



## Metadata

A first implementation of writing out meta data as json has been finished in our software now and is attached to this mail.
 
At the current state of development six different kinds of meta data are available. Hence you find six different object sections:

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

