# Sample Scanner Data

We currently have raw sensor outputs and meta-data. 
We are in the process of defining data products and developing the data processing pipeline. 
For more information review and comment on GitHub Issues in the [reference-data](https://github.com/terraref/reference-data/issues) and [computing-pipeline](https://github.com/terraref/computing-pipeline/issues) repositories.

## Accessing Data in Clowder

Clowder is a tool for organizing the raw data stream and managing the sensor data pipeline.

The files are available via the TERRA Ref Clowder [web interface](http://terraref.ncsa.illinois.edu/clowder/spaces) web interface or [API](https://terraref.ncsa.illinois.edu/clowder/assets/docs/api/index.html). 

Data is organized into **datasets**, **collections** and **spaces**.

* **Datasets** consist of one or more files with associated metadata collected by one sensor at one time point. Users can annotate, download, and use these sensor datasets.
* **Collections** consist of one or more datasets. Currently, we have collections to organize sensors by collection date and sensor. Users can create their own collections.
* **Spaces** contain collections and datasets. TERRA REF uses one space for each of the phenotyping platforms.

Sign up for an account at terraref.ncsa.illinois.edu/clowder and send an email to David LeBauer dlebauer@illinois.edu to approve. 

* **Field Scanner Sample Data - V4** contains two primary collections (**2016 Feb 09** and **2016 Feb 12**) organized by sensor and timestamp.
* **Danforth Center Phenotyping Facility** contains snapshots from the [Danforth sorghum pilot experiment](danforth.md). 

### Analyzing Data in Clowder

After selecting a dataset, the **Tool sessions** menu on the lower right sidebar allows users to launch analysis tools. Currently, users can choose between launching Rstudio or Jupyter.
These tools support R and Python as well as many familiar programming languages. 
Additional tools can be added based on user demand. 

If you are willing to share source or compiled code that you have written to process data or metadata please let us know. The easiest way is to [open a new issue](https://github.com/terraref/computing-pipeline/issues/new) or submit a pull request to github.com/terraref/computing-pipeline with your code in a new folder in the [`scripts/`](https://github.com/terraref/computing-pipeline/tree/master/scripts) directory; basic syntax is `script [inputs] [outputs]`.

See our [Clowder Documentation](https://terraref.gitbooks.io/terraref-documentation/content/clowder.html) for more details.

## Downloading Data via Globus

Globus provides a way for users to transfer large amounts of data. 
This is how to configure Globus to transfer data to your computer or server:

1. sign up for Globus at [globus.org](https://www.globus.org/)
2. send your Globus id (or University email) to David LeBauer (<a href="mailto:dlebauer@illinois.edu?subject=[TERRAREF Globus Access Request]">dlebauer@illinois.edu</a>) with 'TERRAREF Globus Access Request' in the subject.
3. you will be notified once you have been granted access
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
