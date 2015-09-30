

## Agronomic data

### ICASA 

http://research.agmip.org/display/it/Data+Interoperability

This is an API for agronomic exptal data
http://research.agmip.org/display/dev/The+AgMIP+Crop+Experiment+Database+API

based on json data objects with
lists of variables

ICASA is adopted / developed by USDA - AgMIP - others 

AgMIP, using ICASA standards
see https://github.com/terraref/reference-data/issues/6


#### ICASA References:

* White et al https://uofi.box.com/white2012ida
* Porter et al 2014 https://uofi.box.com/porter2014htc
* Janssen et al https://uofi.box.com/jansen2012gds
* Examples and documentation https://uofi.box.com/terraref-icasa 


### BETYdb 

(Biofuel Ecophysiological Traits and Yields database https://betydb.org)

will be used to store trait vectors, meta-data, provenance, this is not a 'data product', but essentially a meta-data server that can store extracted traits, as well as geospatial and genomic identifiers for use with external files and databases.

#### BETYdb API

API documentation: https://www.authorea.com/users/5574/articles/7062/_show_article

BETYdb traits: available as web-page, csv, json, xml. This can be extended to allow spatial, temporal, and taxonomic / genomic queries.

Will add a new field or new table to uniquely identify each line / accession / etc.. This would be similar to / an extension of the cultivars table What uniquely identifies a 'line' (see 'uniqueness' section of BETYdb documentation[1]? linked to any breeding and/or genomics database to track and visualize lineage, sequencing, and analytical output. 


## Other Agronomic and Ecological data sources

### Data.gov

Ag data published on data.gov: http://www.data.gov/food/

_summary, applications_

### GODAN

Global Open Data for Agriculture and Nutrition  http://www.godan.info/

a network of Ag interested in Open Data (see statement of purpose
Our team could be a GODAN partner

_summary, applications_

### DataOne

List, description, and format specifications for meta-data conventions / standards supported by DataOne. 
https://releases.dataone.org/online/api-documentation-v1.2.0/design/WhatIsData.html

## Genomics

... mostly to be determined...

### Gramene

http://www.gramene.org/
curated, open-source, integrated data resource for comparative functional genomics in crops and model plant species


### KBASE

* Hosted at UI / Institute for Genomic Biology, currently has a subset of features from main Kbase instance at Argonne. New tools can be added based on need.
* If any projects want to connect to KBase, please contact David LeBauer with information about specific modules / features you need enabled.

## APIs

### Clowder

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



## Sensor Data

* Image / Sensor data (https://github.com/terraref/reference-data/issues/2)
  * NEON data products http://data.neoninc.org/documents
  * ATBDs (Algorithm Theoretical Basis Document) provide protocols for creating data products
  * ISO 19115, adopted (?) by NEON, ICOS, NASA, PEcAn and others; solid effort to adopt common conventions. http://www.iso.org/iso/home/store/catalogue_ics/catalogue_detail_ics.htm?csnumber=53798

* Meteorological data (also see https://github.com/terraref/reference-data/issues/3):
  * Climate Forecasting Conventions
  * ICASA has specifications for daily met summaries

### MsTMIP data formats

* Standardized Met driver data
* Terrestrial Ecosystem Model output http://mstmipsynthesis.pbworks.com/w/page/25673213/FrontPage


### Date-Time: 

* YYYY-MM-DD hh:mm:ssZ: 

based on ISO 8601 . Optional offset for local time; precision determined by data (e.g. could be YYYY-MM-DD and decimals specified by a period.

## Other

### Generic Standards

(is this relevant?)

NIEM National Information Exchange Model. “NIEM makes it possible for organizations to share critical data; as a result, people are empowered to make informed decisions that improve efficiency and help organizations advance their missions.”  
comment: perhaps too generic for our specific needs, but a useful reference point



# Example data 

with references can be found in https://uofi.box.com/terraref-sample-data
<iframe src="https://app.box.com/embed_widget/s/kuscr34y5halh4jome84z1z8txgh285y?view=list&sort=date&direction=ASC&theme=gray" width="330" height="400" frameborder="0"allowfullscreen webkitallowfullscreen msallowfullscreen></iframe>

## References

* [1] BETYdb constraints documentation, see section "uniqueness constraints"  https://www.authorea.com/users/5574/articles/6719/_show_article
* [2] BETYdb data access section on API https://www.authorea.com/users/5574/articles/7062/_show_article