# Geospatial information

Several different sensors include geospatial information in the dataset metadata describing the location of the sensor at the time of capture.

**Coordinate reference systems**  
The Scanalyzer system itself does not have a reliable GPS unit on the sensor box. Sensor position information is captured relative to the southeast corner of the Scanalyzer system in meters.
![](https://cloud.githubusercontent.com/assets/464871/15622807/5e86cb98-2432-11e6-901d-967d6ac0f70d.png)


*Lat/Long coordinates*  
Coordinates for the four corners of the Scanalyzer system (bound by the rails above) are as follows:
* **NW**: 33° 04.592' N, -111° 58.505' W
* **NE**: 33° 04.591' N, -111° 58.487' W
* **SW**: 33° 04.474' N, -111° 58.505' W
* **SE**: 33° 04.470' N, -111° 58.485' W

*Scanalyzer coordinates*  
Finally, the Scanalyzer coordinate system is right-handed - the origin is in the SE corner, X increases going from south to north, and Y increases from east to the west.

In offset meter measurements from the southeast corner of the Scanalyzer system, the extent of possible motion for the sensor box is defined as:
* **NW**: (207.3, 22.135, 5.5)
* **SE**: (3.8,	0, 0)  

*Translating Scanalyzer to Lat/Long*  
1. Calculate the UTM position of known SE corner point
2. Calculate the UTM position of the target point, using SE point as reference
3. Get GPS position based on UTM

**Sensors with geospatial metadata**
* stereoTop
* flirIr
* co2
* cropCircle
* PRI
* scanner3dTop
* NDVI
* PS2
* SWIR
* VNIR




