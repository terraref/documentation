# Multispectral Radiometer Data

## Summary

Multispectral data is collected using the Skye NDVI and PRI sensors. These are point radiometers, integrating a reflectance signal over the field of view. Note that we also generate NDVI and PRI measurements from the hyperspectral and UAV datasets. For plot level summaries, these will be differentiated by the 'methods' field.

Currently, only raw data are available. The pipeline for processing these data has been developed but still needs to be tested and updated. See [terraref/computing-pipeline#150](https://github.com/terraref/computing-pipeline/issues/150).


## Sensor information:

  * [Skye PRI collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9174f0cad7d8131b09a) 
  * [Skye NDVI collection](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a8f64f0cad7d8131af54)


For details about using this data via Clowder or Globus, please see [Data Access](/how-to-access-data.md) section.

## Computational pipeline

[**Multispectral extractor**](https://github.com/terraref/extractors-multispectral). 

## Data Access

### Level 1 data

NA Will be added to Geostreams for the Nov 2018 release.

### Level 2 data

NA

### Level 3 data

Plot level summaries will be inserted into BETYdb.

### Raw data

Data is available via [Globus](https://www.globus.org/) and the [TERRA REF Workbench](https://workbench.terraref.org):


* **Globus and Workbench**:

  * `/sites/ua-mac/raw_data/ndviSensor`
  * `/sites/ua-mac/raw_data/priSensor`


#### NDVI format

``` xml
<LemnaTecData>
    <Entry name="NDVI" value="0.803190499146552" unit="-" />
    <Entry name="Channel1TOP633" value="233.078997755" unit="umol/m^2/s" />
    <Entry name="Channel4TOP800" value="221.7064438158" unit="umol/m^2/s" />
    <Entry name="Channel1DOWN633" value="3.6708662746" unit="umol/SR/m^2/s" />
    <Entry name="Channel4DOWN800" value="31.9918451094" unit="umol/SR/m^2/s" />
</LemnaTecData>
```
#### PRI format

``` xml
<LemnaTecData>
    <Entry name="NDVI" value="0.047458169870772" unit="-" />
    <Entry name="Channel1TOP531" value="68.817235498" unit="umol/m^2/s" />
    <Entry name="Channel4TOP569" value="65.0497152665" unit="umol/m^2/s" />
    <Entry name="Channel1DOWN531" value="1.1867427872" unit="umol/SR /m^2/s" />
    <Entry name="Channel4DOWN569" value="1.2335518543" unit="umol/SR /m^2/s" />
</LemnaTecData>
```


### See also

* [Geospatial information](/user/geospatial-information.md)
