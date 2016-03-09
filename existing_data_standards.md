# Existing Data Standards



## Agronomic data (trait vectors)

### ICASA 
http://research.agmip.org/display/it/Data+Interoperability
ag expt data API http://research.agmip.org/display/dev/The+AgMIP+Crop+Experiment+Database+API
json data objects
variables list

ICASA seems the most widely adopted for agronomic management, but also useful to consider these:

### BETYdb Biofuel Ecophysiological Traits and Yields database https://betydb.org
(will be used to store meta-data, provenance, not a standard 'data product')
API documentation: https://www.authorea.com/users/5574/articles/7062/_show_article

BETYdb traits: available as web-page, csv, json, xml. This can be extended to allow spatial, temporal, and taxonomic / genomic queries.

Will add a new field or new table to uniquely identify each line / accession / etc.. This would be similar to / an extension of the cultivars table What uniquely identifies a 'line' (see 'uniqueness' section of BETYdb documentation[1]? linked to any breeding and/or genomics database to track and visualize lineage, sequencing, and analytical output. 

Data.gov Ag data published on data.gov: http://www.data.gov/food/

AgMIP, using ICASA standards
see https://github.com/terraref/reference-data/issues/6

GODAN Global Open Data for Agriculture and Nutrition 
http://www.godan.info/
a network of Ag interested in Open Data (see statement of purpose
Our team could be a GODAN partner

DataOne 
List, description, and format specifications for meta-data conventions / standards supported by DataOne. 
https://releases.dataone.org/online/api-documentation-v1.2.0/design/WhatIsData.html

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


### OADA Open Ag Data Alliance
academic-industry collaboration to define a common API for ag data
 http://openag.io/


### ICASA

### Plant Breeders API

Brapi API used by FieldBook http://docs.brapi.apiary.io/#introduction/structure-of-the-response-object:
ex: https://jsapi.apiary.io/apis/brapi.apib

* The BMS group has implemented a few features to make it compatible with Field Book in its current state sans API.
* BMS and GOBII are both pushing for the API and both plan on implementing it when it's complete. The GOBII director (Ed Buckler on TERRA MEPP team, with Mike Gore who designed genomics pipeline) said that their group was committed to implementing the API in at least one of his talks at PAG earlier this month.
* BMS Breeding Management System Standalone Server 
* genomes2fields is migrating to BMS





## Sensor Data


### Image / Sensor data 

* https://github.com/terraref/reference-data/issues/2
* https://github.com/terraref/reference-data/issues/14

### NEON data products http://data.neoninc.org/documents

ATBDs (Algorithm Theoretical Basis Document) provide protocols for creating data products, e.g. 
ISO 19115, which is how NEON, ICOS, NASA, PEcAn and others are trying to rally around as a single standard. http://www.iso.org/iso/home/store/catalogue_ics/catalogue_detail_ics.htm?csnumber=53798

### Planet Labs

Planet Labs provides high frequency, medium resolution RGB satellite images.

* [API Docs](https://www.planet.com/docs/?utm_source=intercom&utm_medium=email&utm_campaign=onboard-new-explorer&utm_content=Welcome-2015-10-a#apis)
* [API Code Samples (use cases)](https://www.planet.com/docs/v0/tutorials/)

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
