## Developing Clowder Extractors

Extractors are services that run silently alongside Clowder. They can be configured to wait for specific file types to be uploaded into Clowder, and automatically execute operations on those files to extract metadata.

It is possible to develop extractors for new file types or tasks. See [the NCSA Extractor Development wiki](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Extractor+Development#ExtractorDevelopment-Extractorbasics) for complete instructions



_______________
#### Setting up a test environment for development



 [The NCSA Clowder wiki](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Administrating+Clowder) provides an up-to-date installation guide for Clowder.



In a fresh installation, Clowder is not configured with an email server - it does not send confirmation when someone registers for an account the confirmation email will not be sent correctly. However the Clowder console will still display the contents of the email, so the confirmation URL can be copied from there.



_______________________

#### References

* **Source code** is available as a collection of Git repositories.
* Tutorial
 * [overview](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Extractor+Development)
 * [video](https://www.youtube.com/embed/lP3vqh6HLG4)
* [pyClowder](https://opensource.ncsa.illinois.edu/bitbucket/projects/CATS/repos/pyclowder/browse) is designed for this purpose.
* [Development in Windows](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Deploying+Windows+Extractors)
* [Using Clowder via National Data Service interface](https://www.youtube.com/embed/dCNYEl3ld0s)

* Contacts: Max Burnette via [email, phone](http://www.ncsa.illinois.edu/assets/php/directory/contact.php?contact=mburnet2), on GitHub, or on our [Slack Channel](https://terra-ref.slack.com/)

