# Existing Data Standards

## Agronomic data (trait vectors)

#### International Consortium for Agricultural Systems Applications (ICASA)  

[“Integrated Description of Agricultural Field Experiments and Production: The ICASA Version 2.0 Data Standards”](http://www.sciencedirect.com/science/article/pii/S016816991300077X), by Jeffrey W. White and others, published in Computers and Electronics in Agriculture 2013, 


#### Agricultural Model Inter-Comparison and Improvement Project (AgMIP)

[AgMIP Crop Experiment Database data variables](http://research.agmip.org/display/it/Data+Interoperability)


#### BETYdb Biofuel Ecophysiological Traits and Yields database 

[BETYdb](https://betydb.org) is used to store TERRA meta-data, provenance, and traits information

BETYdb traits are available as web-page, csv, json, xml. This can be extended to allow spatial, temporal, and taxonomic / genomic queries.

AgMIP, using ICASA standards
see https://github.com/terraref/reference-data/issues/6


## Genomics

#### Gramane

[Gramene](http://www.gramene.org/) is a curated, open-source, integrated data resource for comparative functional genomics in crops and model plant species

## Application Programming Interface (API)

#### Agricultural Model Inter-Comparison and Improvement Project (AgMIP)

[AgMIP API](http://research.agmip.org/display/dev/The+AgMIP+Crop+Experiment+Database+API)

#### MODAPS NASA MODIS Satellite data 

The [MODAPS NASA MODIS Satellite](https://ladsweb.nascom.nasa.gov/data/api.html) data encompasses a library of functions that provides programmatic data access and processing services to MODIS Level 1 and Atmosphere data products. These routines enable both SOAP and REST based web service calls against the data archives maintained by MODAPS. These routines mirror existing LAADS Web services.

#### BETYdb
[BETYdb](https://www.authorea.com/users/5574/articles/7062/_show_article) can be used to query trait vectors and its functionality will be extended to raster data. 

Sample query with:
* [HTML output](https://www.betydb.org/search?&search=switchgrass+sla)
* [csv output](https://www.betydb.org/search.csv?&search=switchgrass+sla)
* [xml output](https://www.betydb.org/search.xml?&search=switchgrass+sla)
* [Json-compatible output](https://www.betydb.org/search.json?&search=switchgrass+sla)

#### Plant Breeders API

[The Plant Breeder's API](http://docs.brapi.apiary.io/#introduction/structure-of-the-response-object:
ex: https://jsapi.apiary.io/apis/brapi.apib) specifies a standard interface for plant phenotype/genotype databases to serve their data to crop breeding applications.  This is the API used by [FieldBook](https://fieldbook.com/), which allows users to turn spreadsheets into databases.

Updates

* The [Breeding Management System (BMS)](https://www.integratedbreeding.net/breeding-management-system) group has implemented a few features to make it compatible with Field Book in its current state without the use of API.
* BMS and the [Genomic & Open-source Breeding Informatics Initiative (GOBII)](http://cbsugobii05.tc.cornell.edu/wordpress/) are both pushing for the API and plan on implementing it when it's complete. 
* Read news about the [BMS Breeding Management System Standalone Server](https://www.integratedbreeding.net/206/news-events/news?id=150) and [genomes2fields migrating to BMS](https://www.integratedbreeding.net/206/news-events/news?id=142)

## Sensor Data



#### Climate Forecasting Conventions

Dimensions: time, lat, lon, other
specify time first (unlimited) lat, lon or x, y extent to field boundaries.

#### Meteorological data

[Proposed format for meteorological variables exported from Lemnatec platform](https://github.com/terraref/reference-data/issues/3)

#### Multi-scale Synthesis and Terrestrial Model Intercomparison Project (MsTMIP) data formats

* One implementation of CF for ecosystem model driver (met, soil) and output (mass, energy dynamics)
  * Standardized Met driver data
  * [Terrestrial Ecosystem Model output](http://mstmipsynthesis.pbworks.com/w/page/25673213/FrontPage)


### Date-Time: 

YYYY-MM-DD hh:mm:ssZ: 
based on ISO 8601 . Optional offset for local time; precision determined by data (e.g. could be YYYY-MM-DD and decimals specified by a period.

# Example data 

with references can be found in https://uofi.box.com/terraref-sample-data
<iframe src="https://app.box.com/embed_widget/s/kuscr34y5halh4jome84z1z8txgh285y?view=list&sort=date&direction=ASC&theme=gray" width="330" height="400" frameborder="0"allowfullscreen webkitallowfullscreen msallowfullscreen></iframe>

## References

* [1] BETYdb constraints documentation, see section "uniqueness constraints"  https://www.authorea.com/users/5574/articles/6719/_show_article
* [2] BETYdb data access section on API https://www.authorea.com/users/5574/articles/7062/_show_article
