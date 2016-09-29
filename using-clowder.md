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

###**Downloading Data via Globus**

Globus provides a way for users to transfer large amounts of data.

To configure Globus to transfer data to your computer or server:

1. sign up for Globus at [globus.org](https://www.globus.org/)

2. send your Globus id (or University email) to David LeBauer (dlebauer@illinois.edu) with 'TERRAREF Globus Access Request' in the subject.

3. you will be notified once you have been granted access

4. log into Globus [https://www.globus.org](https://www.globus.org/)

5. add an endpoint for the destination (e.g. your local computer) <https://www.globus.org/app/endpoints/create-gcp>

6. download and setup Globus Connect (on that page)

7. go to the 'transfer files' page: <https://www.globus.org/app/transfer>

8. select source

 - Endpoint: Terraref

 - Path: Navigate to sensor you want under/MovingSensor/

 - select (click) a folder, e.g., at time of writing the latest stereo sensor data is in/MovingSensor/stereoTop/2016-04-07/2016-04-07\_\_16-47-22-087/

 - select (highlight) files that you want to download

9. at destination

 - select the endpoint that you set up above of your local computer or server

 - select the destination folder (e.g. /~/Downloads/)

10. click 'go'

11. files should be on your computer

> Globus Documentation: <https://docs.globus.org/how-to/get-started/>
