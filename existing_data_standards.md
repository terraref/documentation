# Existing Data Standards

## Agronomic data (trait vectors)

### ICASA 

http://research.agmip.org/display/it/Data+Interoperability
ag expt data API http://research.agmip.org/display/dev/The+AgMIP+Crop+Experiment+Database+API
json data objects
variables list

### BETYdb Biofuel Ecophysiological Traits and Yields database https://betydb.org
(will be used to store meta-data, provenance, not a standard 'data product')
API documentation: https://www.authorea.com/users/5574/articles/7062/_show_article

BETYdb traits: available as web-page, csv, json, xml. This can be extended to allow spatial, temporal, and taxonomic / genomic queries.

AgMIP, using ICASA standards
see https://github.com/terraref/reference-data/issues/6


## Genomics

Gramene  http://www.gramene.org/
curated, open-source, integrated data resource for comparative functional genomics in crops and model plant species

## APIs

### MODAPS NASA MODIS Satellite data 

https://ladsweb.nascom.nasa.gov/data/api.html

This Application Programming Interface (API) encompasses a library of functions that provides programmatic data access and processing services to MODIS Level 1 and Atmosphere data products. These routines enable both SOAP and REST based web service calls against the data archives maintained by MODAPS. These routines mirror existing LAADS Web services.

### BETYdb: see API documentation [2] 

To query trait vectors; can be extended to raster data once available. 

https://www.betydb.org/search?&search=switchgrass+sla
https://www.betydb.org/search.csv?&search=switchgrass+sla
https://www.betydb.org/search.xml?&search=switchgrass+sla
https://www.betydb.org/search.json?&search=switchgrass+sla

### ICASA

### Plant Breeders API

Brapi API used by FieldBook http://docs.brapi.apiary.io/#introduction/structure-of-the-response-object:
ex: https://jsapi.apiary.io/apis/brapi.apib

* The BMS group has implemented a few features to make it compatible with Field Book in its current state sans API.
* BMS and GOBII are both pushing for the API and both plan on implementing it when it's complete. The GOBII director (Ed Buckler on TERRA MEPP team, with Mike Gore who designed genomics pipeline) said that their group was committed to implementing the API in at least one of his talks at PAG earlier this month.
* BMS Breeding Management System Standalone Server 
* genomes2fields is migrating to BMS

## Sensor Data



### Climate Forecasting Conventions

Dimensions: time, lat, lon, other
specify time first (unlimited) lat, lon or x, y extent to field boundaries.

### Meteorological data

https://github.com/terraref/reference-data/issues/3

### MsTMIP data formats

* One implementation of CF for ecosystem model driver (met, soil) and output (mass, energy dynamics)
  * Standardized Met driver data
  * Terrestrial Ecosystem Model output http://mstmipsynthesis.pbworks.com/w/page/25673213/FrontPage


### Date-Time: 

YYYY-MM-DD hh:mm:ssZ: 
based on ISO 8601 . Optional offset for local time; precision determined by data (e.g. could be YYYY-MM-DD and decimals specified by a period.

# Example data 

with references can be found in https://uofi.box.com/terraref-sample-data
<iframe src="https://app.box.com/embed_widget/s/kuscr34y5halh4jome84z1z8txgh285y?view=list&sort=date&direction=ASC&theme=gray" width="330" height="400" frameborder="0"allowfullscreen webkitallowfullscreen msallowfullscreen></iframe>

## References

* [1] BETYdb constraints documentation, see section "uniqueness constraints"  https://www.authorea.com/users/5574/articles/6719/_show_article
* [2] BETYdb data access section on API https://www.authorea.com/users/5574/articles/7062/_show_article
