# PhenoTractor Sensor Protocols 

    Authors: Matthew Maimaitiyiming and Wasit Wulamu
    Center for Sustainability, Saint Louis University
                       January 8, 2017


## Abstract

<!-- needs summary-->
Content modified from [Andrade-Sanchez et al 2014](http://www.publish.csiro.au/fp/FP13126). 

## Materials

* Tractor
* Sensors
 * Sonar Transducer
 * GreenSeeker Multispectral Radiometer
 * Infrared Thermal Sensor

![Picture of Phenotractor Sensors](/assets/phenotractor_sensors.JPG)

![Diagram of sensor attachments](/assets/phenotractor_sensor_diagram.JPG)

![Diagram of Sensor Offset](/assets/phenotractor_sensor_offset.JPG)

## Methods

### Tractor 

The Tractor-based plant phenotyping system (Phenotractor) was built on a LeeAgra 3434 DL open rider sprayer. 
The vehicle has a clearance of 1.93 m. A boom attached to the front end
of the tractor frame holds the sensors, data loggers, and other instrumentation components including
enclosure boxes and cables. <!-- are boxes cooled w/ ac?-->
The boom can be moved up and down with sensors remaining on a horizonal plane. 
An isolated secondary power source supplies 12-V direct current to the electronic components used for phenotyping. 

![Phenotractor system configuration](https://github.com/Mamatemenrs/test-repo/blob/master/tractor%20setting.jpg)

## Sensors

The phenotractor was equipped with three types of sensors for measuring plant height, temperature and canopy spectral reflectance.  A RTK GPS was installed on top of the tractor, see the figure below.

### Plant Height with Sonar

The distance from canopy to sensor position was measured with a sonar proximity sensor ($S_\rm{output}$, in mm).  Canopy height ($CH$) was determined by combining sonar and GPS elevation data (expressed as meter above sea level).  An elevation survey was conducted to determine a baseline reference elevation ($E_\rm{ref}$) for the gantry field.  CH was computed according to the following equation:

$$CH = E_rm{s} – E_\rm{ref} - S_\rm{output}$$

where  $E_rm{s}$ is sensor elevation, which was calculated by subtracting the vertical offset between the GPS antenna and sonar sensor from GPS antenna elevation.

### Thermal Sensor

An [Apogee SI-121](https://www.apogeeinstruments.com/narrow-field-of-view-infrared-radiometer-sensor-si-121/) Infrared radiometer (IRT) sensors were used measure canopy temperature and temperature values were recoded as degree Celsius (°C).   

### Multispectral Radiometer

Canopy spectral reflectance was measured with GreenSeeker sensors and the reflectance data were used to calculate NDVI (Normalized Difference Vegetation Index).  GreenSeeker sensors record reflected light energy in near infrared (780 ± 15 nm) and red (660 ± 10 nm ) portion electromagnetic spectrum from top of the canopy by using a self-illuminated light source. NDVI was calculated using following equation:

$$NDVI = (\frac{\rho_\rm{NIR}-\rho_\rm{red}}{\rho_\rm{NIR}+\rho_\rm{red}}$$
                                         
Where $\rho_\rm{NIR}$ and $\rho_\rm{red}$ and ρ_red represent fraction of reflected energy in near infrared and red spectral regions, respectively.

### Georeferencing

Georefencing was carried out using a specially developed Quantum GIS (GGIS, www.qgis.org ) plug-in by Andrade-Sanchez et al. (2014) during post processing. Latitude and longitude coordinates were converted to UTM coordinate system.  Offset from the sensors to the GPS position on the tractor heading were computed and corrected.  Next, the tractor data, which uses UTM Zone 12 (MAC coordinates), was transformed to EPSG:4326 (WGS84) USDA coordinates by performing  a linear shifting as follows:   

* Latitude: $U_y = M_y – 0.000015258894$
* Longitude: $U_x = M_x + 0.000020308287$ 
                                        
where $U_y$ and $U_x$ are latitude and longitude in USDA coordinate system, and $M_y$ and $M_x$ are latitude and longitude in MAC coordinate system (see [section on geospatial coordinate systems](user/geospatial-information.md)).
Finally, georeferenced tractor data was overlaid on the gantry field polygon and mean value for each plot/genotype was calculated using the data points that fall inside the plot polygon within ArcGIS Version 10.2 (ESRI. Redlands, CA).


## References

Andrade-Sanchez, Pedro, Michael A. Gore, John T. Heun, Kelly R. Thorp, A. Elizabete Carmo-Silva, Andrew N. French, Michael E. Salvucci, and Jeffrey W. White. "Development and evaluation of a field-based high-throughput phenotyping platform." Functional Plant Biology 41, no. 1 (2014): 68-79. [doi:10.1071/FP13126](http://dx.doi.org/10.1071/FP13126)
