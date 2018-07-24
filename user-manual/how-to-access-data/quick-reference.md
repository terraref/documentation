# Quick Lookup of Available Data via Clowder

Generally speaking, if you are searching for a specific collection you can use the Clowder title lookup API endpoint in your browser to retrieve a matching list quickly. Collection titles are of the format "Product - Date" with date including YYYY, YYYY-MM or YYYY-MM-DD. 

The root format of these searches is:
    ```https://terraref.ncsa.illinois.edu/clowder/api/collections?title=COLLECTION_NAME```

The response object will include an id which you can then enter in the normal URL to view the collection:
    ```https://terraref.ncsa.illinois.edu/clowder/collection/ID```

**Selected Products**
- RGB GeoTIFFs
- Thermal IR GeoTIFFs
- Laser Scanner 3D LAS
- Digital Surface Model GeoTIFFs
- Full Field Stitched Mosaics

**Example Lookups**
Note in these examples, the space in the URLs is encoded as %20 as per ASCII standard encoding.

Find Laser Scanner 3D LAS datasets from July 4, 2017:
    ```https://terraref.ncsa.illinois.edu/clowder/api/collections?title=Laser%20Scanner%203D%20LAS%20-%202018-07-04```
    
Find RGB GeoTIFFs datasets from June 2018:
    ```https://terraref.ncsa.illinois.edu/clowder/api/collections?title=RGB%20GeoTIFFs%20-%202018-06```

## Full Field Mosaics Quick Reference

- 2016 (reprocessing planned for Fall 2018)
    - [February 2016](https://terraref.ncsa.illinois.edu/clowder/collection/59fa05224f0cfb5041131d41)
    - [March 2016](https://terraref.ncsa.illinois.edu/clowder/collection/59fcb1e54f0c3383c73f16cc)
    - [April 2016](https://terraref.ncsa.illinois.edu/clowder/collection/5a044c864f0c624704f92cb1)
    - [May 2016](https://terraref.ncsa.illinois.edu/clowder/collection/59fb325d4f0c3383c720adfa)
    - [June 2016](https://terraref.ncsa.illinois.edu/clowder/collection/59cea8b94f0c888ad68ae523)
    - [July 2016](https://terraref.ncsa.illinois.edu/clowder/collection/59f987b84f0cfb50410c3a16)
    - [August 2016](https://terraref.ncsa.illinois.edu/clowder/collection/59d24d774f0c888ad6bf9a54)
    - [September 2016](https://terraref.ncsa.illinois.edu/clowder/collection/59fa8c174f0c3383c71af5a9)
    - [October 2016](https://terraref.ncsa.illinois.edu/clowder/collection/59fa59864f0c3383c718eb7c)
    - [November 2016](https://terraref.ncsa.illinois.edu/clowder/collection/5a0241084f0c624704b73f2d)
    - [December 2016](https://terraref.ncsa.illinois.edu/clowder/collection/5a8b23174f0cc60a114cbf2f)

- 2017 (reprocessing planned for Fall 2018)
    - [January 2017](https://terraref.ncsa.illinois.edu/clowder/collection/59fa33764f0c3383c71780f1)
    - [February 2017](https://terraref.ncsa.illinois.edu/clowder/collection/59fa557e4f0c3383c718c457)
    - [March 2017](https://terraref.ncsa.illinois.edu/clowder/collection/5a05e6484f0c62470532acdf)
    - [April 2017](https://terraref.ncsa.illinois.edu/clowder/collection/5a5fb5ca4f0cf27ae7d559aa)
    - [May 2017](https://terraref.ncsa.illinois.edu/clowder/collection/59ba90ec4f0c0b27bc3cf7d9)
    - [June 2017](https://terraref.ncsa.illinois.edu/clowder/collection/59b0e2134f0ca12ea0ce6785)
    - [July 2017](https://terraref.ncsa.illinois.edu/clowder/collection/59b0c56f4f0ca12ea0ce160c)
    - [August 2017](https://terraref.ncsa.illinois.edu/clowder/collection/59b681aa4f0c0b27bc24843d)
    - [September 2017](https://terraref.ncsa.illinois.edu/clowder/collection/59ccc4404f0c7bb2ab243be0)
    - [October 2017]()
    - [November 2017]()
    - [December 2017](https://terraref.ncsa.illinois.edu/clowder/collection/5ac4de57cb0e10dafa688aa5)
    
- 2018 (subject to ongoing development/revision)
    - [January 2018](https://terraref.ncsa.illinois.edu/clowder/collection/5accfa654f0cda7711ea849a)
    - [February 2018](https://terraref.ncsa.illinois.edu/clowder/collection/5ad1b15f4f0cda771246bcb6)
    - [March 2018](https://terraref.ncsa.illinois.edu/clowder/collection/5ae0f31d4f0c467c163e463f)
    - [April 2018](https://terraref.ncsa.illinois.edu/clowder/collection/5ae14f4e4f0c467c16459369)
    - [May 2018](https://terraref.ncsa.illinois.edu/clowder/collection/5af07c624f0c026b4594fde4)
    - Note that field mosaics after mid-June 2018 will need to be reprocessed with repeat scans of the same name being considered. The current products conflate distinct multiple scans into one mosiac. ([GitHub issue](https://github.com/terraref/computing-pipeline/issues/483))
    - [June 2018](https://terraref.ncsa.illinois.edu/clowder/collection/5b13c1b14f0c64f9297d5aaa)
    - [July 2018](https://terraref.ncsa.illinois.edu/clowder/collection/5b46cf5a4f0ca37248ea3aec)
    
     
## Geostreams for Sensor Data by Plot

In addition to finding datasets by time and sensor, it is possible to search the Geostreams API for datasets according to the experimental plot they overlap as discussed in [this GitHub issue](https://github.com/terraref/computing-pipeline/issues/476).

1. use /api/geostreams/sensors?sensor_name=PLOTNAME to determine internal ID of desired plot

    e.g. for MAC Field Scanner Season 1 Field Plot 286:
    ```https://terraref.ncsa.illinois.edu/clowder/api/geostreams/sensors?sensor_name=MAC%20Field%20Scanner%20Season%201%20Field%20Plot%20286```
    (here, ID = 3484)
    
2. use /api/geostreams/sensors/ID/streams to get the list of streams (e.g. each sensor)

    ```https://terraref.ncsa.illinois.edu/clowder/api/geostreams/sensors/3484/streams```
    (returns a list of 5 sensors including raw stereo RGB and FLIR, RGB GeoTIFFs, FLIR GeoTIFFs, and Canopy Cover)

3. use /api/geostreams/datapoints?stream_id to get list of datasets for that plot & sensor

    e.g. Canopy Cover above has stream_id = 15132:
    ```https://terraref.ncsa.illinois.edu/clowder/api/geostreams/datapoints?stream_id=15132```

4. can also do /api/geostreams/datapoints?stream_id=ID&since=2017-06-01&until=2017-06-30 to restrict by date

    ```https://terraref.ncsa.illinois.edu/clowder/api/geostreams/datapoints?stream_id=15132&since=2016-04-25&until=2016-04-28```
    (returns only canopy cover between 4/25 and 4/28 in 2016)
    
5. the 'source' property for each datapoint links to the file or dataset corresponding to the datapoint.
