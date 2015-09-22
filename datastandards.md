# Data Products and Standards Committee

* 12 people: one representative from each funded projects and six independent experts. 
* Meet annually to define and refine data products and API. 
* [TODO List](https://github.com/terraref/reference-data/issues). 


When NASA began developing earth observing satellites in the 1980s, they produced the
Report of the Earth Observation System Data Panel[^1]. Despite three decades of technical progress, this document provides an outline for the scope of our work.

## Objectives

Ensure that software and data are _interoperable, reusable, extensible, and understandable_. Providing clear definitions of common formats will make it easier to analyze and exchange data and results. The formats will follow best practices in scientific computing and data sharing (Wilson et al., 2014, Stodden & Miguez 2014, White et al., 2013).

## Approach 

Our approach to defining the core reference platform data products will be developed with frequent feedback from data creators and users. The data product specification will define the types of data formats, semantics, and interfaces, file formats, and representations of space, time, and genetic identity based on existing standards, commonly used file formats, and user needs. 

Because of the broad scope of data, we will be careful to avoid defining strict standards prematurely. Rather, we will be aware of existing standards and conventions and will draw heavily on and adopt where practical existing conventions and standards. Spatial data will adopt Federal Geographic Data Committee (FGDC) and Open Geospatial Consortium (OGC) data and meta-data standards. We will use the CF variable naming convention for meteorological data and biophysical data. Data formats and variable naming conventions developed by NEON and NASA, and where practical existing variable naming conventions will be used. Applying common standards will make it easier to exchange analytical methods and data across domains and to leverage existing tools.

We anticipate that standards and data formats will evolve over time as we clarify use cases, develop new sensors and analytical pipelines, and build tools for data format conversion and feature extraction and tracking provenance. Each year we will re-convene to assess our standards based on user needs. The standards committee will assess the trade-off between the upfront cost of adoption with the long-term value of the data products, algorithms, and tools that will be developed as part of the TERRA program. The specifications for these data products will be developed iteratively over the course of the project in coordination with TERRA funded projects. The focus will be to take advantage of existing tools based on these standards, and to develop data translation interfaces where necessary.

## Timeline

* August 2015: Establish committee, form a data plan
* January 2016: v0 file standards
* January 2017: v1 file standards, sample data sets
* January 2018: mock data cube generator, standardized data products, simulated data
* January 2019: standardized data products, simulated data

___

[1](http://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19860021622.pdf) NASA (1986), Report of the EOS data panel, Earth Observing System, Data and Information System, Data Panel Report, Vol. IIa., NASA Technical Memorandum 87777, June 1986, 62 pp. 