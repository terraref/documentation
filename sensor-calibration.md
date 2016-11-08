# Sensor Calibration

This section describes sensor calibration processes and how to access additional information about specific sensor calibration protocols, calibration targets, and associated reference data.

Questions to answer in this section:

* What are the calibration protocols?

* What are the calibration targets?

* Where is the calibration data?

* How is the calibration data used?


## Calibration protocols

Calibration protocols have been defined by LemnaTec in cooperation with vendors and the TERRA-REF Sensor Steering Committee.

Draft calibration protocols are currently in [Google Drive ](https://docs.google.com/document/d/132_dkGAIQJ3cG7bQkPIkX7-RgXyWLDoQWJFDj5c-5uU/edit)and have been incorporated into the [LemnaTec Scanalyzer Field documentation](https://terraref.ncsa.illinois.edu/clowder/datasets/58178ee54f0ce77b66561602).

A detailed calibration process is also provided for the [Hyperspectral sensors](https://docs.google.com/document/d/1w_zHHlrPVKsy1mnW9wrVzAU2edVqZH8i1IZa5BZxVpo/edit#heading=h.jjfbhbos05cc), with further information below.

## Calibration targets

The following calibration targets are available:

* [LabSphere Spectralon Diffuse Color Targets](https://terraref.ncsa.illinois.edu/clowder/datasets/5817c7c84f0c63f2a8ca5e6c)

* [SphereOptics Zenith Polymer diffuse reflectance standards](https://terraref.ncsa.illinois.edu/clowder/datasets/5818bb544f0c63f2a8d20963)

* Aluminum 3D test object 

### Environmental sensor calibration

Source  https:\/\/github.com\/terraref\/reference-data\/issues\/26

The output of the spectrometer is raw counts. Need to use the calibration files to convert to units of  µW m-2 s-1. Need to take the bandwidth of the chip into account \(0.4nm\) if you want to convert to µmol m-2 s-1.

Calibration data is available from \/gantry\_data\/LemnaTec\/EnvironmentLogger\/CalibrationData or in Github [Calibrations.zip](https://github.com/terraref/reference-data/files/250620/Calibrations.zip)

### Hyperspectral calibration

Sources:

* [Convert hyperspectral exposure image to reflectance](https://github.com/terraref/computing-pipeline/issues/88)

* [Hyperspectral calibration protocols](https://docs.google.com/document/d/1w_zHHlrPVKsy1mnW9wrVzAU2edVqZH8i1IZa5BZxVpo)


For the SWIR and VNIR sensors, factory calibration is repeated each year using the calibration lamp provided by Headwall. 
To convert the hyperspectral exposure image to reflectance requires the wavelength-dependent, factory calibrated reflectance of the spectralon at all VNIR and SWIR wavelengths and a good image of a spectralon panel from each camera.

* Periodic measurements of white spectralon reflectance panel

* Scans will be run with 20ms exposure from now on to match panel calibration


**Dark reference measurement:**

* VNIR

  * Dark measurement for VNIR camera is taken at exposure times 20, 25, 30, 35, 40, 45, 50, 55ms.

  * Data is in the same hypercube format with 180-200 lines, 955 bands, and 1600 pixel samples.

  * Data is available in \/gantry\_data\/VNIR-DarkRef\/ or via [Google Drive.](https://drive.google.com/file/d/0B9h5V5JdLLXmSkdpTmd6QmN3dTQ/view?usp=sharing)
  * Measurement was done using Headwall software, so there is no LemnaTec json file. 
  * The name of the folder is the exposure time.   "current setting exposure" is showing the exposure time in ms.
  * Custom workflow to process the calibration files.

* SWIR;

  * Dark counts handled internally, so no calibration files are necessary.


**White reference measurement:**

* VNIR

  * White measurement for VNIR camera is taken at exposure times 20, 25, 30, 25, 40, 25, 50, 55 ms.
  * The name of the folder is the exposure time. Data are 1600 sample, 955 bands and 268-298 lines. White reference is located in the lines between 60 to 100 and in the samples between 600 to 1000.
  * Data is available via [Google Drive.](https://drive.google.com/file/d/0ByXIACImwxA7akhfLTdTS01vTTA/view?usp=sharing)
    The white reference scans was done at around 1pm \( one hour after solar noon\). I don’t see the saturation with 20ms and 25ms exposure time. 
  * For the calibration, this needs to be subtracted from the dark current in the same sample, band and exposure time.
  * In the following file, I stored an extra file named "CorrectedWhite\_raw". This file includes only a single white pixel\( one line, one sample\) in 955 bands for each exposure time. Data is stored in the similar format but it doesnot include any extra files like frameIndex, image, header ,..
    https:\/\/drive.google.com\/file\/d\/0ByXIACImwxA7dVNHa3pTYkFjdWc\/view?usp=sharing
    Let me know if you have issue with opening the files. 


### Stereo 3D height scanner

Source https:\/\/github.com\/terraref\/computing-pipeline\/issues\/98

* calibration is done, but no description of the calibration process.

* LemnaTec applied a calibration matrix to the 3D Scanners


### UAV calibration

Source: https:\/\/github.com\/terraref\/computing-pipeline\/issues\/185

* There are calibrated reference panels and blackbody images taken with UAV sensors before and\/or after the each flight mission.

* There are also 4 white,grey and black panels laid on the ground during the flight. Knowing the proprieties of these targets would helps us radiometrically correct the UAV images.

* What are the reflectance properties of calibrated reference panels for multispectral camera?

* What are the thermal properties of reference target for thermal camera?
* What are the reflectance properties of the reference panels laid on the ground during the flight?
* Is there any other ground truth data collected during the flight for aerial data processing, such as surface reflectance, temperature and other environmental data? These type of data would be helpful for further atmospheric correction.

* There are two sets of reference reflectance panels: one that PDS uses, it is small, PDS will need to provide the specs; the second set consists of 4 8m x 8m canvas tarps, nominally 4%, 8%, 48% and 64% reflectance across vnir bands.

* We have data from an ASD spectrometer on many but not all flight days that can be used to give the most accurate actual reflectances for each. Kelly Thorp can provide the numbers. The tarps are old and the dark targets are more reflective than nominal and light targets darker than nominal. 
* The thermal target is a passive black body, I dont know the surface emissivity, it is around 0.97. There are thermistors in the back of the metal plate to provide physical temperature of the body. The black body is stored in a wood box, insulated, to dampen thermal variations. Id guess it is accurate to 2C.
* There is a met station on farm for air temperature, humidity, wind speed, wind direction, solar radiation. we have a sun photometer that can be used for atmospheric water vapor content but currently dont deploy it routinely.

### Halogen spectrum

[https:\/\/github.com\/terraref\/reference-data\/issues\/52](https://github.com/terraref/reference-data/issues/52)

* Please provide a per-wavelength analysis of the light produced by the halogen lights in the sensor box. Columns would be wavelength and flux.

* We have no measured spectrum for the build-in halogen lamps Showtec 240V\/75W. This information is also not available from the supplier.

* We have a similar type measured Philips Twistline Halogen 230V 50W 18072. attached the spectrum.

  [MeasurementPhilipsHalogenSpot.xlsx](https://github.com/terraref/reference-data/files/498197/MeasurementPhilipsHalogenSpot.xlsx)


### Spectral response data

Provide RSR curve data for hyper \/ multispectral imaging [https:\/\/github.com\/terraref\/reference-data\/issues\/53](https://github.com/terraref/reference-data/issues/53)

### Calibration data

* [Device and Sensor information](https://terraref.ncsa.illinois.edu/clowder/datasets/5818bb544f0c63f2a8d20963) in Clowder

## References

* \(Closed\) Document sensor calibration protocols [https:\/\/github.com\/terraref\/reference-data\/issues\/34](https://github.com/terraref/reference-data/issues/34)

* \(Closed\) Define calibration protocols for each sensor [https:\/\/github.com\/terraref\/reference-data\/issues\/38](https://github.com/terraref/reference-data/issues/38)

* [Maricopa 2016 Experimental Plan Summary ](https://docs.google.com/spreadsheets/d/1Nfabx_n1rNlO6NW3olD8MAibJ3KHnOMmMwOYYw4wwGc/edit#gid=1886254108)\(sensors tab\)

* [Draft protocols](https://docs.google.com/document/d/132_dkGAIQJ3cG7bQkPIkX7-RgXyWLDoQWJFDj5c-5uU/edit)

