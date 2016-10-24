#Using Clowder
**Clowder** contains data related to the field scanner operations and sensor box, including bounding box of each image / dataset as well as location of the sensor, data types and processing level, scanner missions.

###**Data organization**

Clowder consists of three organizational levels:

- Datasets consist of one or more files with associated metadata.

- Collections consist of one or more datasets.

- Spaces consist of collections and datasets. Spaces allow for particular roles to be assigned to particular users.

Datasets offer a Metadata tab that displays associated information; for example, the contents of .json files originally packaged with the data.

###**Searching the database**

Clowder allows users to search metadata and filter datasets and files with particular attributes. In development is the ability to query BETYdb based on a particular set of resulting images.

###Analyzing data in Clowder
After selecting a dataset, the **Tool Sessions** menu on the lower right sidebar allows users to launch analysis tools. Currently, users can choose between launching Rstudio or Jupyter.

These tools support R and Python as well as many familiar programming languages.

See the [Clowder Documentation](https://terraref.gitbooks.io/terraref-documentation/content/clowder.html) for more details.


###**Downloading data from Clowder using Globus**

Globus provides a way for users to transfer large amounts of data.

To configure Globus to transfer data to your computer or server:

1. sign up for Globus at [globus.org](https://www.globus.org/)

1. send your Globus id (or University email) to David LeBauer (dlebauer@illinois.edu) with 'TERRAREF Globus Access Request' in the subject.

1. you will be notified once you have been granted access

1. log into Globus [https://www.globus.org](https://www.globus.org/)

1. add an endpoint for the destination (e.g. your local computer) <https://www.globus.org/app/endpoints/create-gcp>

1. download and setup Globus Connect (on that page)

1. go to the 'transfer files' page: <https://www.globus.org/app/transfer>

1. select source

 - Endpoint: Terraref

 - Path: Navigate to sensor you want under/MovingSensor/

 - select (click) a folder, e.g., at time of writing the latest stereo sensor data is in/MovingSensor/stereoTop/2016-04-07/2016-04-07\_\_16-47-22-087/

 - select (highlight) files that you want to download at destination

 - select the endpoint that you set up above of your local computer or server

 - select the destination folder (e.g. /~/Downloads/)

1. click 'go'

1. files should be on your computer

[Globus step-by-step guide](https://docs.globus.org/how-to/get-started/)
