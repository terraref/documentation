# Data Sources

## Lemnatec Field Scanner

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

#### Maricopa Agricultural Center \(MAC\), Arizona

The Maricopa field site is located at the the University of Arizona Maricopa Agricultural Center and USDA Arid Land Research Station in Maricopa, Arizona. At this site, we have deployed the following phenotyping platforms.

## UAV Data



* weekly flights with RGB and multispectral cameras

## Manually Collected Field Data

Data were collected manually using standard field methods. These measurements are used to calibrate and validate phenotypes derived from sensor-collected data.

## Controlled-environment phenotyping

#### Donald Danforth Plant Science Center, Missouri

The [Bellwether Foundation Phenotyping Facility](https://www.danforthcenter.org/scientists-research/core-technologies/phenotyping) is a climate controlled 70 m2 growth house with a conveyor belt system for moving plants to and from fluorescence, color, and near infrared imaging cabinets. This automated, high-throughput platform allows repeated non-destructive time-series image capture and multi-parametric analysis of 1,140 plants in a single experiment.

The Scanalyzer 3D platform at the [Bellwether Foundation Phenotyping Facility at the Donald Danforth Plant Science Center ](https://www.danforthcenter.org/scientists-research/core-technologies/phenotyping)consists of multiple digital imaging chambers connected to the Conviron growth house by a conveyor belt system, resulting in a continuous imaging loop. Plants are imaged from the top and/or multiple sides, followed by digital construction of images for analysis.

* RGB imaging allows visualization and quantification of plant color and structural morphology, such as leaf area, stem diameter and plant height.
* NIR imaging enables visualization of water distribution in plants in the near infrared spectrum of 900–1700 nm.
* Fluorescent imaging uses red light excitation to visualize chlorophyll fluorescence between 680 – 900 nm. The system is equipped with a dark adaptation tunnel preceding the fluorescent imaging chamber, allowing the analysis of photosystem II efficiency.

The LemnaTec software suite is used to program and control the Scanalyzer platform, analyze the digital images and mine resulting data. Data and images are saved and stored on a secure server for further review or reanalysis.

## Genomics

Genomic data includes whole-genome resequencing data from the HudsonAlpha Institute for Biotechnology, Alabama for 384 samples for accessions from the sorghum Bioenergy Association Panel \(BAP\) and genotyping-by-sequencing \(GBS\) data from Kansas State University for 768 samples from a population of sorghum recombinant inbred lines \(RIL\).

