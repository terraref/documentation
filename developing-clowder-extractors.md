## Developing Clowder Extractors

Extractors are services that run silently alongside Clowder. They can be configured to wait for specific file types to be uploaded into Clowder, and automatically execute operations on those files to extract metadata.

**Developing new extractors**: It is possible to develop extractors for new file types or tasks.

* Setting up a test environment
 * Installing required software
 * Running sample extractor
* Extractor Basic Design
 * PyClowder library
* Writing an extractor
 * Handling inputs and outputs
 * Testing extractors

## Setting up a test environment for development

 [The NCSA Clowder wiki](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Administrating+Clowder) provides an up-to-date installation guide for Clowder.

In a fresh installation, Clowder is not configured with an email server - it does not send confirmation when someone registers for an account the confirmation email will not be sent correctly. However the Clowder console will still display the contents of the email, so the confirmation URL can be copied from there.


### Installing Software

### Running a sample extractor

## Extractor Basic Design

### PyClowder Library

## Writing an Extractor

### Handling inputs and outputs

### Testing extractors

## Deploying extractors

## Extractors

**Examples** (from the [git repository](https://opensource.ncsa.illinois.edu/bitbucket/projects/CATS))
 * **extractors-core** includes basic extractors, such as image thumbnail extraction.
 * **extractors-dbpedia** uses named-entity recognition and [DBpedia](http://wiki.dbpedia.org/) to extract information from text files
 * **extractors-plantcv** invokes appropriate [PlantCV](http://plantcv.danforthcenter.org/) image analysis tools to generate output images and data from uploaded images ([read more about this extractor here](http://opensource.ncsa.illinois.edu/bitbucket/projects/CATS/repos/extractors-plantcv/browse))

# References

* **Source code**: The source code is available as a collection of Git repositories.
* Tutorial
 * [slides](https://onedrive.live.com/embed?cid=62A7CDC1353EF6B0&resid=62A7CDC1353EF6B0%211988&authkey=ALJbJ7PqsDaYAxU&em=2&wdAr=1.7777777777777777)
 * [video](https://www.youtube.com/embed/lP3vqh6HLG4).
* [pyClowder](https://opensource.ncsa.illinois.edu/bitbucket/projects/CATS/repos/pyclowder/browse) is designed for this purpose.
* [Development in Windows](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Deploying+Windows+Extractors)
* [Using Clowder via National Data Service interface](https://www.youtube.com/embed/dCNYEl3ld0s)

* Contacts: Max Burnette via [email, phone](http://www.ncsa.illinois.edu/assets/php/directory/contact.php?contact=mburnet2), on GitHub, or on our [Slack Channel](https://terra-ref.slack.com/)

