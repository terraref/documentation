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



### Installing Software



*



 [The NCSA Clowder wiki](https://opensource.ncsa.illinois.edu/confluence/display/CATS/Administrating+Clowder) provides an up-to-date installation guide for Clowder.







In a fresh installation, Clowder is not configured with an email server - it does not send confirmation when someone registers for an account the confirmation email will not be sent correctly. However the Clowder console will still display the contents of the email, so the confirmation URL can be copied from there.




