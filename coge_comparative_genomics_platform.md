# CoGe (Comparative Genomics)


[CoGe](https://genomevolution.org/coge/) supports the genomics pipeline required for the TERRA program for Sorghum sequence alignment and analysis. It has bot a web interface and REST API. CoGe is developed by Eric Lyons and hosted at the University of Arizona, where it is made available for researchers to use. CoGe can be hosted on any server, VM, or Docker container.

## Submitting Sequences to the CoGe Pipeline

1. Upload files to Cyverse data store. The TERRARef project has a 2TB allocation 
2. Use icommands to transfer to data store


### CyVerse data store

* project directory: `/iplant/home/shared/terraref`
 * raw data goes in subdirectory `raw_data/`, which is only writable for those sending raw reads (Jeremy, Noah). Otherwise, read-only
* (CoGe output) can go into `output/`

#### Uploading data to data store using icommands

[icommands documentation](https://pods.iplantcollaborative.org/wiki/display/DS/Using+iCommands)

Transferring data from Roger to iplant data store

```
# install icommands 
cd $HOME
mkdir bin
cd bin
wget http://www.iplantcollaborative.org/sites/default/files/irods/icommands.x86_64.tar.bz2 
tar -xvf icommands.x86_64.tar.bz2

# add icommands directory to $PATH
export PATH=$HOME/bin/icommands:$PATH

# initialize
iinit
# host name: data.iplantcollaborative.org
# port number:1247
# user name:(your Cyverse Login)
# Enter your irods zone:iplant
# iRODS password:*******
icd /iplant/home/shared/terraref/raw_data/hudson-alpha/

## transfer test data to iplant data store
touch checkpoint-file
iput -P -b -r -T --retries 3 -X checkpoint-file test_data/ 
```



## References


* Related TERRARef GitHub Issues:
  * [Implement Genomics Pipeline](https://github.com/terraref/computing-pipeline/issues/41)
  * 

* [Using icommands](https://pods.iplantcollaborative.org/wiki/display/DS/Using+iCommands)
* [CoGe Homepage](https://genomevolution.org/coge/)
* [CoGe Workflow description](https://genomevolution.org/wiki/index.php?title=LoadExperiment)
* [Installing CoGe on a Ubuntu server](https://genomevolution.org/wiki/index.php/Install_coge)
* [REST API documentation](https://docs.google.com/document/d/1GXOPIVvyTwoGR2IRjDNmdd2nj_6d8db7jx9hG8RxTDc/edit)
* [Yerba](https://github.com/LyonsLab/Yerba) is a job management framework developed for CoGe by Matt Bombhoff
