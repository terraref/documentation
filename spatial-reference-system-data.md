#Spatial Reference System Data Product
## Conversion requirements and input for conversion among gantry coordinate system, USDA GPS, and MAC GPS
Raw data comes with gantry coord (images, sites table) or MAC coord (UTM zone 12; tractor planting data and tractor sensor data). We need to convert them (directly or indirectly through functions) to USDA coord (UTM Zone 12 or EPSG:4326).

Gantry coord (x,y) is in meters and refer (0,0) to the bottom right of the gantry. MAC GPS is on all tractors; it has good precision but a static calibration error (2.5m discrepency); USDA GPS has similar precision and is accurate. Therefore, the geo coord we will concert to will all use USDA as reference.

* UAV: georegistered to USDA
* Tractor: uses MAC

### Availability of reference data
Pylon coordinates in both MAC and USDA GPS; SE SW CW CE NW NE coord in MAC

### Gantry --> MAC (G2M)
Given a gantry(x, y), the MAC(x, y) in UTM zone 12 is calculated using the [linear transformation formula](https://docs.google.com/spreadsheets/d/15OxGNJCMsQC4xUCvMiv8i-ERBx1hAKp_LiDIW31tIVA/edit?usp=sharing):

`ay = 3659974.971 ; by = 1.0002 ; cy = 0.0078 ;`

`ax = 409012.2032 ; bx = 0.009 ; cx = - 0.9986 ;`

`Mx = ax + bx * Gx + cx * Gy`

`My = ay + by * Gx + cy * Gy`

Note: Assume `Gx = -Gx'`, where `Gx'` is the raw X coord (Gantry uses right --> left X axis).

### MAC --> USDA (M2U)
We do a [linear shifting](https://docs.google.com/spreadsheets/d/1pTgmpf9kltYW1SHo_K51cynVTYs6-JdS6rt4usfwV10/edit?usp=sharing) to convert MAC coord in (lat, lon) to USDA (lat, lon):

Latitude: `Uy = My - 0.000015258894`

Longitude: `Ux = Mx + 0.000020308287`

The coefficients are calculated by averaging the difference of the four points in the linked excel sheet row 4-7. 

TODO: confirm this formula with Andy.

### Gantry --> USDA (G2U)
`G2U = G2M + M2U`

### MAC --> Gantry (M2G)
This is done by inversing G2M. This formula can be used to convert tractor data to gantry coord.

`Gx = ( (My/cy - ay/cy) - (Mx/cx - ax/cx) ) / (by/cy - bx/cx)`

`Gy = ( (My/by - ay/by) - (Mx/bx - ax/bx) ) / (cy/by - cx/bx)`

Note: Assume left --> right X axis for `Gx`; need to do `Gx' = -Gx` to create X on Gantry's right --> left X axis.

### sites table processing
- Input: gantry coord (x,y) for plot corner points
- Output: postgis sql statements (.sql) with a geom column in USDA coord (G2U), plot id, gantry_x, gantry_y, ...

## Gantry projection
### Requirements
### Projection definition

# References
https://github.com/terraref/reference-data/issues/51
