## Developing the Computing Pipeline with Clowder Extractors 

The TERRA REF computing pipeline and data management is managed by Clowder. 
The pipeline consists of 'extractors' that take a file or other piece of information and generate new files or information. In this way, each extractor is a step in the pipeline. 

An extractor 'wraps' an algorithm in code that watches for files that it can convert into new data products and phenotypes. These extractors wait silently alongside the Clowder interface and databases. Extractors can be configured to wait for specific file types and automatically execute operations on those files to process them and extract metadata.

If you want to add an algorithm to the TERRAREF pipeline, or use the Clowder software to manage your own pipeline, extractors provide a way of automating and scaling the algorithms that you have. 
[The NCSA Extractor Development wiki](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Extractors) provides instructions, including:

1. Setting up a pipeline development environment on your own computer.  
2. Using the [web development interface](https://www.youtube.com/embed/dCNYEl3ld0s)) (currently in beta testing)
2. Using the Clowder API
3. Using the pyClowder [pyClowder](https://opensource.ncsa.illinois.edu/bitbucket/projects/CATS/repos/pyclowder/browse) [pyClowder](https://opensource.ncsa.illinois.edu/bitbucket/projects/CATS/repos/pyclowder/browse) to add an analytical or technical component to the pipeline.

## TERRA-REF Extractor Resources

### terrautils 

To make working with the TERRA-REF pipeline as easy as possible, the [terrautils](https://github.com/terraref/terrautils) Python library was written. By importing this library in an extractor script, developers can ensure that code duplication is minimized and standard practices are used for common tasks such as GeoTIFF creation and georeferencing. It also provides modules for managing metadata, downloading and uploading, and BETYdb/geostreams API wrapping.

Modules include:

* [betydb](https://github.com/terraref/terrautils/blob/master/terrautils/betydb.py) BETYdb API wrapper
* [extractors](https://github.com/terraref/terrautils/blob/master/terrautils/extractors.py) General extractor tools e.g. for creating metadata JSON objects and generating folder hierarchies
* [formats](https://github.com/terraref/terrautils/blob/master/terrautils/formats.py) Standard methods for creating output files e.g. images from numpy arrays
* [gdal](https://github.com/terraref/terrautils/blob/master/terrautils/gdal.py) GDAL general image tools
* [geostreams](https://github.com/terraref/terrautils/blob/master/terrautils/geostreams.py) Geostreams API wrapper
* [influx](https://github.com/terraref/terrautils/blob/master/terrautils/influx.py) InfluxDB logging API wrapper
* [lemnatec](https://github.com/terraref/terrautils/blob/master/terrautils/lemnatec.py) LemnaTec-specific data management methods
* [metadata](https://github.com/terraref/terrautils/blob/master/terrautils/metadata.py) Getting and cleaning metadata
* [products](https://github.com/terraref/terrautils/blob/master/terrautils/products.py) Get file lists
* [sensors](https://github.com/terraref/terrautils/blob/master/terrautils/sensors.py) Standard sensor information resources
* [spatial](https://github.com/terraref/terrautils/blob/master/terrautils/spatial.py) Geospatial metadata management

### Science packages

To keep code and algorithms broadly applicable, TERRA-REF is developing a series of science-driven packages to collect methods and algorithms that are generic to an input and output from the pipeline. That is, these packages should not refer to Clowder or extraction pipelines, but instead can be used in applications to manipulate data products. They are organized by sensor.

These packages will also include test suites to verify that any changes are consistent with previous outputs. The test directories can also act as examples on how to instantiate and use the science packages in actual code.

* [stereo_rgb](https://github.com/terraref/stereo_rgb) stereo RGB camera (stereoTop in raw_data, rgb_ prefix elsewhere)
* [flir_ir](https://github.com/terraref/flir_ir) FLIR infrared camera (flirIrCamera in raw_Data, ir_ prefix elsewhere)
* [scanner_3d](https://github.com/terraref/scanner_3d) laser 3D scanner (scanner3DTop in raw_Data, laser3d_ elsewhere)


### Extractor repositories

Extractors can be considered wrapper scripts that call methods in the science packages to do work, but include the necessary components to communicate with TERRA's RabbitMQ message bus to process incoming data as it arrives and upload outputs to Clowder. There should be no science-oriented code in the extractor repos - this code should be implemented in science packages instead so it is easier for future developers to leverage.

Each repository includes extractors in the workflow chain corresponding to the named sensor.

* [extractors-stereo-rgb](https://github.com/terraref/extractors-stereo-rgb)
* [extractors-3dscanner](https://github.com/terraref/extractors-3dscanner)
* [extractors-multispectral](https://github.com/terraref/extractors-multispectral)
* [extractors-metadata](https://github.com/terraref/extractors-metadata)
* [extractors-hyperspectral](https://github.com/terraref/extractors-hyperspectral)
* [extractors-environmental](https://github.com/terraref/extractors-environmental)
* [extractors-lemnatec-indoor](https://github.com/terraref/extractors-lemnatec-indoor)

### Contact:

* Extractor development and deployment: [Max Burnette](http://www.ncsa.illinois.edu/assets/php/directory/contact.php?contact=mburnet2)
* Development environments: [Craig Willis](http://www.ncsa.illinois.edu/assets/php/directory/contact.php?contact=willis8)
* On our [Slack Channel](https://terra-ref.slack.com/)
* On [GitHub](https://github.com/terraref)
