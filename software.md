# Existing Software 

This is a list of software tools and resources that are available for use within the pipeline and by users of our data.

## Data Storage

* Active Data Service: Active storage available for computing on campus cluster (or transfer to other HPC systems)
* ICEHouse: NCSA 10PB Tape Drive
* U of I Box (easy to use, 500GB)
* Roger: CyberGIS R&D server for GIS applications, 7PB storage + variety of nodes, including large memory. roger.ncsa.illinois.edu (CyberGIS; total 7 PB)

## Data Access

* Clowder: ISDA interface
* Thredds: Geospatial Data server
* GeoDjango
* SQL

### APIs 

* Swagger: API documentation system that can generate clients in multiple languages used by CyberGIS and Clowder
* BETYdb: betydb.org. Database implemented in Postgres/PostGIS; has url-based API that can be extended

### GIS: 

* PostGIS can treat files (including HDF5, NetCDF-4) on disk as tables (foreign data wrapper) https://github.com/pramsey/pgsql-ogr-fdw
* HDF5: used extensively by NASA, NEON, created at NCSA and maintained by [HDFGroup](https://www.hdfgroup.org/) in Champaign, IL
* NetCDF4: used by met community; wrapper for HDF5 

## User Interface

### Workflow Management

* Clowder

### Feature Extraction

* PlantCV http://plantcv.danforthcenter.org (OpenCV wrapper for Lemnatec indoor system)
* OpenAlea http://openalea.gforge.inria.fr/dokuwiki/doku.php
* Brown Dog
* Clowder
* OpenCV

## Genomics / Breeding

* IBP Integrated Breeding Platform
  * https://github.com/IntegratedBreedingPlatform
  * https://www.integratedbreeding.net/62/training/bms-user-manual

