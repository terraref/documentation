# Existing Software 

## Data Storage

* Active Data Service
* U of I Box (easy to use, 500GB)
* roger.ncsa.illinois.edu (CyberGIS; total 7 PB)

## Data Access

* Thredds: Geospatial Data server
* GeoDjango
* SQL

## API: 

* swagger: API documentation system that can generate clients in multiple languages, recommended by Yan / used by CyberGIS group 
* BETYdb: betydb.org. Database implemented in Postgres/PostGIS; has url-based API that can be extended
* PostGIS can treat files on disk as tables (foreign data wrapper) https://github.com/pramsey/pgsql-ogr-fdw
HDF5 / netCDF-4

## User Interface

## Workflow Management

* PEcAn (ISDA/LeBauer)
* Cyberintegrator (ISDA group)
* Yes Workflow (Bertram / NDS?)
* Pegasus (recommended by Nirav @ iPlant)

## Feature Extraction

* PlantCV http://plantcv.danforthcenter.org (OpenCV wrapper for Lemnatec indoor system)
* OpenAlea http://openalea.gforge.inria.fr/dokuwiki/doku.php
* Brown Dog

## Genomics / Breeding

IBP https://github.com/IntegratedBreedingPlatform

https://www.integratedbreeding.net/62/training/bms-user-manual