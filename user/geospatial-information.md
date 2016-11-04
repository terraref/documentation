# Geospatial information

Several different sensors include geospatial information in the dataset metadata describing the location of the sensor at the time of capture.

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

**Coordinate reference systems**  
ISSUES 180

Three coordinate systems exist in these data:
* Field coordinate frame (Xf , Yf , Zf)
* Camera coordinate (Xc , Yc , Zc)
* Image coordinate (Xp , Yp)

*Lat/Long*  
Coordinates for the four corners of the Scanalyzer system are as follows:
* **NW**: 33° 04.592' N, -111° 58.505' W
* **NE**: 33° 04.591' N, -111° 58.487' W
* **SW**: 33° 04.474' N, -111° 58.505' W
* **SE**: 33° 04.470' N, -111° 58.485' W

*Scanalyzer coordinate system*  
Sensor position information is captured relative to the southeast corner of the Scanalyzer system in meters. The field itself beg
* **NW**: (207.3, 22.135, 5.5)
* **SE**: (3.8,	0, 0)  

**Captured field descriptions**

*location of sensor in camera box (X, Y, Z)*

* 

**ISSUES: 7, 25** 


the position of the 0,0,0 -> 
we have one fixed coordinate system of the gantry, that can not be changed. But of course there should be a well defined transformation of this coordinate system to either a customer coordinate system (in which the seeding locations are defined) with a fixed point on the field or GPS coordinates. 
Furthermore once this transformation is available we are planning to include GPS coordinates in all meta data.

additional time information -> 
For the hyperspec cameras you have to calculate the time on your own, based on the gantry scan speed or frame period.
In the final setup there will be two modes for hyperspec cameas:

free running, then you have to derive the point in time from the start timestamp and the frame period
position trigger (still under construction), each 1mm of scan movement a hardware trigger leads to a hyperspec measurement, then you have to use the speed
For PS2 Sensor->



