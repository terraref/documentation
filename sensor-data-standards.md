# Sensor Data Standards

### Current Practice

In the TERRA-REF release, sensor metadata is generally stored and exchanged using formats defined by LemnaTec. Sensor metadata is stored in `metadata.json` files for each dataset. This information is ingested into Clowder and available via the "Metadata" tab [metadata.jsonld API endpoint](https://terraref.ncsa.illinois.edu/clowder/assets/docs/api/index.html#!/datasets/getMetadataJsonLD).

Manufacturer information about devices and sensors are available via Clowder in the[ Devices and Sensors Information](https://github.com/terraref/sensor-metadata/) collection. This collection includes datasets representing each sensor or calibration target containing specifications\/datasheets, calibration certificates, and associated reference data.

**Fixed metadata**

Authoritative fixed sensor metadata is available for each of the sensor datasets. This has been extended to include factory calibrated spectral response and relative spectral response information. For more information, please see the [sensor-metadata](https://github.com/terraref/sensor-metadata/) repository on Github.

**Runtime metadata**

Runtime metadata for each sensor run is stored in the `metadata.json` files in each sensor output directory.

**Reference data**

Additional reference data is available for some sensors:

* Factory calibration data for the LabSphere and SphereOptics calibration targets.

* Relative spectral response \(RSR\) information for sensors

* Calibration data for the environmental logger

* Dark\/white reference data for the SWIR and VNIR sensors.


### Standardization Efforts

The TERRA-REF team is currently investigating available standards for the representation of sensor information.  Preliminary work has been done using OGC SensorML vocabularies in a custom JSON-LD context. For more information, please see the [sensor-metadata](https://github.com/terraref/sensor-metadata/) repository on Github.

