# Sample Scanner Data
A set of sample data from LemnaTec field & indoor scanners is available in several formats.

## via Clowder

The files are also available via the in-development [TERRA Ref Clowder instance](http://141.142.209.122/clowder/spaces).  

Sign up for a Clowder account and send an email to David LeBauer dlebauer@illinois.edu to approve.

* **Field Scanner Sample Data - V4** contains two primary collections (**2016 Feb 09** and **2016 Feb 12**) organized by sensor and timestamp.
* **Danforth Center Phenotyping Facility** contains snapshots from the [Danforth sorghum pilot experiment](danforth.md). 

Instructions for using Jupyter or Rstudio to compute on data and develop code

## via Globus

1. sign up for globus
2. send your globus id to David LeBauer (dlebauer@illinois.edu)
3. wait until after you have access (David or JD will reply)
1. log into Globus https://www.globus.org
2. add an endpoint for the destination (e.g. your local computer) https://www.globus.org/app/endpoints/create-gcp
3. download and setup Globus Connect (on that page)
4. go to the 'transfer files' page: https://www.globus.org/app/transfer
5. select source
    * Endpoint: `Terraref` 
    * Path: Navigate to sensor you want under `/MovingSensor/`
    * select (click) a folder, e.g., at time of writing the latest stereo sensor data is in `/MovingSensor/stereoTop/2016-04-07/2016-04-07__16-47-22-087/` 
    * select (highlight) files that you want to download
7. at destination
    * select the endpoint that you set up above of your local computer or server
    * select the destination folder (e.g. `/~/Downloads/`)
8. click 'go'
9. files should be on your computer

Globus Documentation: https://docs.globus.org/how-to/get-started/ 
