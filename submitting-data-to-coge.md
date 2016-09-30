#Submitting Data to CoGe
[CoGe](https://genomevolution.org/coge/) supports the genomics pipeline required for the TERRA program for Sorghum sequence alignment and analysis. It has a web interface and REST API. CoGe is developed by Eric Lyons and hosted at the University of Arizona, where it is made available for researchers to use. CoGe can be hosted on any server, VM, or Docker container.

1. Submitting Sequences to the CoGe Pipeline
 - Upload files to Cyverse data store. The TERRARef project has a 2TB allocation
 - Use icommands to transfer to data store

1. CyVerse data store
 - project directory: ```/iplant/home/shared/terraref```
 - Raw data goes in subdirectory ```raw_data/```, which is only writable for those sending raw reads. 
 - (CoGe output) can go into ```output/```

1.Uploading data to data store using icommands

[icommands documentation]()

Transferring data from Roger to iplant data store 

# install icommands cd $HOMEmkdir bincd binwget http://www.iplantcollaborative.org/sites/default/files/irods/icommands.x86_64.tar.bz2 tar -xvf icommands.x86_64.tar.bz2# add icommands directory to $PATHexport PATH=$HOME/bin/icommands:$PATH# initializeiinit# host name: data.iplantcollaborative.org# port number:1247# user name:(your Cyverse Login)# Enter your irods zone:iplant# iRODS password:*******icd /iplant/home/shared/terraref/raw_data/hudson-alpha/## transfer test data to iplant data storetouch checkpoint-fileiput -P -b -r -T --retries 3 -X checkpoint-file test_data/

 
