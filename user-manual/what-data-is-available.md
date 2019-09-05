# What Data is Available

See [Data Products](data-products/) for more information about individual data products and [How to Access Data](how-to-access-data/) for instructions to access the data products.

## Data Types

### Field Phenotyping Data

#### Lemnatec Field Scanner

This section describes the sensors deployed on the Lemnatec Field Scanner in Maricopa, AZ. Device and sensor information, including technical specifications, calibration data, and calibration targets are stored in the [TERRA REF Clowder database](https://terraref.ncsa.illinois.edu/clowder/spaces/594bda394f0cf8bbab271dfb).   

The Maricopa field site is located at the the University of Arizona Maricopa Agricultural Center and USDA Arid Land Research Station in Maricopa, Arizona. At this site, we have deployed the following phenotyping platforms.

The [**Lemnatec Scanalyzer Field System**](http://www.lemnatec.com/products/hardware-solutions/scanalyzer-field/) is the largest field crop analytics robot in the world. This high-throughput phenotyping field-scanning robot has a 30-ton steel gantry that autonomously moves along two 200-meter steel rails while continuously imaging the crops growing below it with a diverse array of cameras and sensors.

| Sensor Name | Model and Spec Sheet | Field of View | Technical Specifications | Notes |
| :--- | :--- | :--- | :--- | :--- |
| **Imaging Sensors** |  |  |  |  |
| Stereo RGB Camera  | GT3300 \([web](http://www.1stvision.com/cameras/AVT/Prosilica-GT3300-B-C.html)\) \([specs](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a8ae4f0cad7d8131ac0e?space=594bda394f0cf8bbab271dfb)\) | 53° |  |  |
| Laser Scanner | Custom Frauhofer 3D \([specs](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7444f0cad7d81319b2b?space=594bda394f0cf8bbab271dfb)\) | 0.5m width | Resolution: 0.3-0.9 mm |  |
| VNIR Hyperspectral Imager | Inspector VNIR \([specs](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7bb4f0cad7d8131a0b7?space=594bda394f0cf8bbab271dfb)\) | 21° | 380-1000 nm @ 2/3 nm resolution |  |
| SWIR Hyperspectral Imager | Inspector SWIR \([specs](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a79e4f0cad7d81319f5f?space=594bda394f0cf8bbab271dfb)\) | 44.5° | 900-2500 nm @ 2/3 nm resolution |  |
| Thermal Infrared | FLIR SC 615 \([web](https://www.flir.com/products/a615/)\) \([specs](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7184f0cad7d8131994a)\) | 25° x 19° | Thermal Sensitivity &lt; 50mK @ 30C |  |
| PSII Fluorescence Response | Lemnatec PS II \([specs](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a84b4f0cad7d8131a73d)\) | 25° x 19° |  | Illumination 635nm x 4000umol/m2/s |
| **Multi-spectral Radiometers** |  |  |  |  |
| Dedicated NDVI  | Skye Multispectral Radiometer \([web](http://www.skyeinstruments.com/news-events/new-spectral-albedometers/)\) \([specs](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a8f64f0cad7d8131af54)\) |  | CH1: 650nm; CH2 800. Bandwidth: 10 nm | 1 down, 1 up |
| Dedicated PRI Sensor |  Skye Radiometer \([web](http://www.skyeinstruments.com/products/light-sensors-systems/light-sensor-range/new-ndvipri-sensor/)\) \([specs](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9174f0cad7d8131b09a)\) |  | CH1: 531nm +/- 3nm | PRI = [Photochemical Reflectance Index](https://en.wikipedia.org/wiki/Photochemical_Reflectance_Index) |
| PAR Sensor | [Quantum SQ-300](http://www.apogeeinstruments.com/quantum/) | 180° | Spectral Range 410 to 655 nm |  |
| VNIR Spectroradioometer  | [Ocean Optics STS-Vis](http://oceanoptics.com/product/sts-vis-microspectrometer/) |  | Range: 337-824 nm @ 1/2 nm |  |
| VNIR+SWIR Spectrometer  | [Spectral Evolution PSR+](https://terraref.ncsa.illinois.edu/clowder/datasets/599deaa64f0c19c55fc0aecd) |  | Range 350-2500nm @3-8 nm | Installed 2018 |
|  |  |  |  |  |
| Active Reflectance | [Crop Circle ACS430P](http://hollandscientific.com/product/crop-circle-acs-430-active-crop-canopy-sensor/) |  | Bands: 670, 730, 780 nm |  |
| **Environmental Sensors** |  |  |  |  |
| Environmental Sensors | Thies ClimaSensorD \([web](http://www.thiesclima.com/ClimaSensorUS_e.html)\) \([specs](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9724f0cad7d8131b4d3)\) |  | Wind, Air T, Humidity, Pressure, Light, Precipitation |  |
| Open Path CO2 Sensor | [GMP 343](http://www.vaisala.com/en/products/carbondioxide/Pages/GMP343.aspx) |  | Range: 0-1000 ppm |  |

#### Controlled-environment phenotyping

The [Bellwether Foundation Phenotyping Facility](https://www.danforthcenter.org/scientists-research/core-technologies/phenotyping) at the Donald Danforth Plant Science Center, Missouri is a climate controlled 70 m2 growth house with a conveyor belt system for moving plants to and from fluorescence, color, and near infrared imaging cabinets. This automated, high-throughput platform allows repeated non-destructive time-series image capture and multi-parametric analysis of 1,140 plants in a single experiment.

### Genomics Data

## Public Release vs Unreleased Data

Real-time sensor data transfer by file number and size can be viewed [here](http://terra-logging.ncsa.illinois.edu:3000/dashboard/db/sensor-file-counts-and-size?from=now-6M&to=now).



asdf

### Trait Data

![Location of sensors on the Lemnatec field scanner. ](../.gitbook/assets/sensor_placement%20%281%29.png)

