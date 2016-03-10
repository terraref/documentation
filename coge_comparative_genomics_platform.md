# CoGe (Comparative Genomics)


[CoGe](https://genomevolution.org/coge/) supports the genomics pipeline required for the TERRA program for Sorghum sequence alignment and analysis. It has bot a web interface and REST API. CoGe is developed by Eric Lyons and hosted at the University of Arizona, where it is made available for researchers to use. CoGe can be hosted on any server, VM, or Docker container.

## Submitting Sequences to the CoGe Pipeline

1. Upload files to Cyverse data store. The TERRARef project has a 2TB allocation 
2. Use icommands to transfer to data store


### CyVerse data store

* project directory: /iplant/home/shared/terraref

To make the datasets public, add the anonymous and public acls by executing these two icommands:

```
ichmod -r read anonymous /iplant/home/shared/terraref
ichmod -r read public /iplant/home/shared/terraref
```

Public allows users logged into CyVerse/iPlant platforms to access the data. Anonymous allows people who are not logged in to see it. People who are not logged in will be able to access the data at the “mirrors” URL (http://mirrors.cyverse.org)

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
