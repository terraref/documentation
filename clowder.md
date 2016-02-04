# Clowder Overview
Clowder is an open-source data management platform for research. The TERRA project is using Clowder to collect, organize, search and access data products generated from cooperating research platforms.

More information about Clowder can be found on the [official NCSA website](https://clowder.ncsa.illinois.edu/).

## Installation
**Software dependencies**  
At minimum, Clowder requires the following software installed:
* Java Development Kit version 7 (either [Oracle JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html) or [OpenJDK](http://openjdk.java.net/))
* [MongoDB database](https://www.mongodb.org/)
 
If you will be developing [extractors](#Extractors) you will also need:
* [RabbitMQ event bus](http://www.rabbitmq.com/)

**Clowder source code**  
The source code is available as a collection of [git repositories](https://opensource.ncsa.illinois.edu/stash/projects/CATS). Install [Git](https://git-scm.com/) in order to clone these repositories.
* The **clowder** repository includes the browser-based UI and is required.
    git clone https://opensource.ncsa.illinois.edu/bitbucket/scm/cats/clowder.git
* The **extractors-core** repository includes basic extractors. Other specific extractors are available in their own repositories.
    git clone https://opensource.ncsa.illinois.edu/bitbucket/scm/cats/extractors-core.git

**Setup**  
After installing necessary software and cloning the Clowder repository, the UI frontend can be started. 
1. Make sure MongoDB is running 

    cd <mongo installation directory>
    ./bin/mongod.exe
    
2. Start Clowder frontent

    <clowder directory>
    ./sbt run
    
3. Set configuration in Clowder directory
* **/conf/application.conf** includes basic configuration entries. To override these, create a file called **/custom/custom.conf** and put new settings there.
* **/conf/play.plugins** is used to enable or disable specific system functionality. To override these, create a file called **/custom/play.plugins**.

4. Create a user account
* In a fresh installation Clowder is not configured with an email server, so when someone registers for an account the confirmation email will not be sent correctly. However the Clowder console will still display the contents of the email, so the confirmation URL can be copied from there. 

A complete overview of installing Clowder is available [here](https://opensource.ncsa.illinois.edu/projects/artifacts/CATS/0.9.1/documentation/manual/installation.html).

***

## Interface
Clowder consists of Datasets, Collections and Spaces.
* **Datasets** consist of one or more files with associated metadata.
* **Collections** consist of one or more datasets.
* **Spaces** consist of collections and datasets. Spaces allow for particular roles to be assigned to particular users.

There is also a search interface that supports querying by metadata or tags.

In development is the ability to launch an Analysis Environment with a dataset attached to facilitate research.

## API
Clowder also includes a RESTful API that allows programmatic interactions such as creating new datasets and downloading files. For example, one can request a list of datasets using:
    GET <clowder home URL>/api/datasets
The current API schema for a Clowder instance can be accessed by selecting **API** from the **?** Help menu in the upper-right corner of the application.

Two example sources that will be pushing high data volumes into Clowder:
* LemnaTec indoor system at Danforth (running)
* LemnaTec outdoor system at Maricopa (in progress)

**Scripting against the API**  
For typical workflows, the following steps are sufficient to push data into Clowder in an organized fashion:
1. Create a collection to hold relevant datasets (optional)

    **POST /api/collections** (provide a name; returns collection ID)
    
2. Create a dataset to hold relevant files and add it to the collection

    **POST /api/datasets/createempty** (provide a name; returns dataset ID)
    **POST /api/collections/<collection id>/datasets/<dataset id>** 
    
3. Upload files and metadata to dataset

    **POST /api/datasets/uploadToDataset/<dataset id>** (provide file(s) and metadata)

***

## Extractors
Extractors are services that run silently alongside Clowder. They can be configured to wait for specific file types to be uploaded into Clowder, and automatically execute operations on those files to extract metadata. 

**Examples** (from the [git repository](https://opensource.ncsa.illinois.edu/bitbucket/projects/CATS))  
* **extractors-image** generates thumbnail previews and extracts EXIF metadata from image files
* **extractors-dbpedia** uses named-entity recognition and [DBpedia](http://wiki.dbpedia.org/) to extract information from text files
* **extractors-plantcv** invokes appropriate [PlantCV](http://plantcv.danforthcenter.org/) image analysis tools to generate output images and data from uploaded images
 * [read more about this extractor here](http://opensource.ncsa.illinois.edu/bitbucket/projects/CATS/repos/extractors-plantcv/browse)

**Developing new extractors**  
It is possible to develop extractors for new file types or tasks. 
* [pyClowder](https://opensource.ncsa.illinois.edu/bitbucket/projects/CATS/repos/pyclowder/browse) is designed for this purpose.
* [Development in Windows](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Deploying+Windows+Extractors)
* More information coming soon.