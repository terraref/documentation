# Tutorials

We have developed a set of tutorials that aim to provide users with 'quick start' introductions to the range of different TERRA REF datasets. Tutorials for accessing trait data, sensor data, and genomics data are organized by directory \("traits", "sensors", and "genomics"\). These can be found at [terraref.org/tutorials](https://terraref.org/tutorials).

Many of the tutorials can be run on your own computer with Python or R installed. However, some require access to the filesystem or databases that can not be made public. To 'easiest' \(guaranteed easier than collecting the data yourself!\) place to start is on the terraref workbench, which provides all of the software dependencies and access to all of the data.

## Data Access

Before using the tutorials, you should [sign up for the early access program](https://terraref.org/beta), agree to the data use policies and caveats about data access and quality.

## Workbench

The tutorals are developed for use with the TERRA REF workbench \([https://www.workbench.terraref.org](https://www.workbench.terraref.org)\). The workbench provides two key features:

1. access to large datasets on the filesystem and access to query the trait database
2. pre-configured programming environments \(Rstudio, Cloud9, Jupyter\) that include software dependencies pre-installed.

The workbench uses Docker "Containers". In theory, anything you can run on Ubuntu can be deployed in workbench. The workbench by default includes the Docker Containers defined in the [terraref/toolserver-dockerfiles](https://github.com/terraref/toolserver-dockerfiles) repository. If you want to use software that is not currently available on the toolserver you either suggest a change to one of the docker files, request new programs or libraries to be added, or explore the diversity of pre-configured containers in the [Docker Store](https://store.docker.com/).The [TERRA REF organization](https://store.docker.com/profiles/terraref) on Docker Hub includes both the Workbench environments as well as the pipeline components.

