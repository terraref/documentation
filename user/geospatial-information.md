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

The Scanalyzer system itself does not have a reliable GPS unit on the sensor box. Sensor position information is captured relative to the southeast corner of the Scanalyzer system in meters. 

*Lat/Long coordinates*  
Coordinates for the four corners of the Scanalyzer system are as follows:
* **NW**: 33° 04.592' N, -111° 58.505' W
* **NE**: 33° 04.591' N, -111° 58.487' W
* **SW**: 33° 04.474' N, -111° 58.505' W
* **SE**: 33° 04.470' N, -111° 58.485' W

*Scanalyzer coordinates*  
In offset meter measurements from the southeast corner of the Scanalyzer system, the field itself is defined as follows:
* **NW**: (207.3, 22.135, 5.5)
* **SE**: (3.8,	0, 0)  

*Translating Scanalyzer to Lat/Long*  
The extrinsic calibration parameters specify the transformation from the field to the camera coordinates, and it is represented as:  
```[Xc Yc Zc]'= Ro [Xf Yf Zf]'+ to``` 

Since there is no rotation (```Ro```), MEX is only translating vector ```to```. ```to``` is transition vector from the control point (0,0,0) to camera position [Xc Yc Zc]. Considering that the sensor is moving with constant speed in x direction, and metadata information shows the starting time and start position of a scan:  
```to = [+xg+Vx*(t) +yg +zg]'```
* ```(xg ,yg ,zg)``` is the camera position in sensor box
* ```Vx``` is velocity in x direction
* ```t``` represents time difference.
* ```()'``` is transpose operation

*Determining Lat/Long of pixels*  
The intrinsic calibration parameters specify the transformation from the camera coordinate to the pixel coordinates. Coordinate transformation between camera plane and image plane:  
```[Xp Yp f]'= A [ I 0 ] [Xc Yc Zc]'```   
Simple orientation matrix is:  
![](https://cloud.githubusercontent.com/assets/17046539/13890132/e71ffdf0-ed17-11e5-9dad-ccf39e0459bd.png)  
```αx = αy =α``` and its focal length divided by pixel pitch. ```u0``` and ```v0``` denote the principal point (ideally center of image).
* The geometric distortions that exist between the 272 bands are considered to be small.
* No rectification is done.
* No distortion and lens model is considered.
* Mirror angle change is not considered.




**ISSUES: 7, 25** 



