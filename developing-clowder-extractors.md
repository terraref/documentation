## Developing the Computing Pipeline with Clowder Extractors 

The TERRA REF computing pipeline and data management is managed by Clowder. 
The pipeline consists of 'extractors' that take a file or other piece of information and generate new files or information. In this way, each extractor is a step in the pipeline. 

An extractor 'wraps' an algorithm in code that watches for files that it can convert into new data products and phenotypes. These extractors wait silently alongside the Clowder interface and databases. Extractors can be configured to wait for specific file types and automatically execute operations on those files to process them and extract metadata.

If you want to add an algorithm to the TERRAREF pipeline, or use the Clowder software to manage your own pipeline, extractors provide a way of automating and scaling the algorithms that you have. 
[The NCSA Extractor Development wiki](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Extractors) provides instructions, including:

1. Setting up a pipeline development environment on your own computer.  
2. Using the [web development interface](https://www.youtube.com/embed/dCNYEl3ld0s)) (currently in beta testing)
2. Using the Clowder API
3. Using the pyClowder [pyClowder](https://opensource.ncsa.illinois.edu/bitbucket/projects/CATS/repos/pyclowder/browse) [pyClowder](https://opensource.ncsa.illinois.edu/bitbucket/projects/CATS/repos/pyclowder/browse) to add an analytical or technical component to the pipeline.

### Contacts:
  * Extractor development and deployment: Max Burnette via [email, phone](http://www.ncsa.illinois.edu/assets/php/directory/contact.php?contact=mburnet2), on GitHub, or on our [Slack Channel](https://terra-ref.slack.com/).
  * Development environments: [Craig Willis](http://www.ncsa.illinois.edu/assets/php/directory/contact.php?contact=willis8).
