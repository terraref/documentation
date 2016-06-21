# Data Products and Standards Committee

The ARPA-E TERRA program aims to stimulate technical advances in high throughput phenotyping of energy crops in the field. TERRA is funding six teams, and is working with all of them to coordinate data standards that will enable the creation of a core 'reference' data set and also to facilitate the exchange of genomic and phenomic data across teams and external researchers.  

David LeBauer at the University of Illinois will coordinate the establishment of a core reference data set from a suite of sensors deployed on Lemnatec field and greenhouse systems. This will provide a common dataset for the development and analysis of new analytical methods.

The Standards Committee is responsible for defining and advising the development of data products and access protocols for the ARPA-E TERRA program. The committee consists of twelve core participants: one representative from each of the six funded projects and six independent experts. The committee will meet virtually each month and in person each year to discuss, develop, and revise data products, interfaces, and computing infrastructure. 


Our objectives are to ensure that the software and data in the reference data and computing pipeline are _interoperable, reusable, extensible, and understandable_. Providing clear definitions of common formats will make it easier to analyze and exchange data and results. The formats will follow best practices in scientific computing and data sharing (Wilson et al., 2014, Stodden & Miguez 2014, White et al., 2013).


## Approach 


When NASA began developing earth observing satellites in the 1980s, they produced the
Report of the Earth Observation System Data Panel[^1]. In addition to providing a model for the TERRA reference data and computing platform, the authors also explain the need for active engagement among scientists and developers in the following excerpt:

> There are two imperatives or guiding principles which should be closely followed throughout this evolutionary process. They are (i) involve the scientific research community at the outset and throughout all subsequent activities, since the data will be acquired, transmitted, and processed for scientific research, and (ii) provide a representative group of active researchers with an oversight and review responsibility, since the most successful ex- amples of data base management involve user oversight.


Our approach to defining the core reference platform data products will be developed with frequent feedback from data creators and users. The data product specification will define the types of data formats, semantics, and interfaces, file formats, and representations of space, time, and genetic identity based on existing standards, commonly used file formats, and user needs. 

Because of the broad scope of data, we will be careful to avoid defining strict standards prematurely. Rather, we will be aware of existing standards and conventions and will draw heavily on and adopt where practical existing conventions and standards. Spatial data will adopt Federal Geographic Data Committee (FGDC) and Open Geospatial Consortium (OGC) data and meta-data standards. We will use the CF variable naming convention for meteorological data and biophysical data. Data formats and variable naming conventions developed by NEON and NASA, and where practical existing variable naming conventions will be used. Applying common standards will make it easier to exchange analytical methods and data across domains and to leverage existing tools.

We anticipate that standards and data formats will evolve over time as we clarify use cases, develop new sensors and analytical pipelines, and build tools for data format conversion and feature extraction and tracking provenance. Each year we will re-convene to assess our standards based on user needs. The standards committee will assess the trade-off between the upfront cost of adoption with the long-term value of the data products, algorithms, and tools that will be developed as part of the TERRA program. The specifications for these data products will be developed iteratively over the course of the project in coordination with TERRA funded projects. The focus will be to take advantage of existing tools based on these standards, and to develop data translation interfaces where necessary.

## Roles and responsibilities

TERRA Project Standards Committee representatives are expected to represent the interests of their TERRA team, their research community, and the institutions for which they work. External participants were chosen to represent specific areas of expertise and will provide feedback and guidance to help make the TERRA platform interoperable with existing and emerging sensing, informatics, and computing platforms. 

### Specific duties

* Participate in monthly to quarterly teleconferences with the committee.
* Provide expert advice.
* Provide feedback from other intersted parties.
* Participate in, or send delegate to, annual two-day workshops. 


### Annual Meetings

If we can efficiently agree on and adopt conventions, we will have more flexibility to use these workshops to train researchers, remove obstacles, and identify opportunities. This will be an opportunity for researchers to work with developers at NCSA and from the broader TERRA informatics and computing teams to identify what works, prioritize features, and move forward on research questions that require advanced computing.


## Project Timeline

* August 2015: Establish committee, form a data plan
* January 2016: v0 file standards
* January 2017: v1 file standards, sample data sets
* January 2018: mock data cube generator, standardized data products, simulated data
* January 2019: standardized data products, simulated data

___

[1](http://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19860021622.pdf) NASA (1986), Report of the EOS data panel, Earth Observing System, Data and Information System, Data Panel Report, Vol. IIa., NASA Technical Memorandum 87777, June 1986, 62 pp. 
## Data Standards Participants

* TERRA Project Representatives (6)
* ARPA-E Program Representatives (2)
* Board of External Advisors (6)

(numbers in parentheses are targets, for which we have funding)

## People

| Name | Institution | Email|
|:--|:--|:--|
|**Coordinators** | | | 
| David Lee | ARPA-E | david.lee2_at_hq.doe.gov|
| David LeBauer | UIUC / NCSA | dlebauer_at_illinois.edu|
|**TERRA Project Representatives** | | | 
| Paul Bartlett | Near Earth Autonomy | paul_at_nearearthautonomy.com|
| Jeff White | USDA ALARC | Jeffrey.White_at_ars.usda.gov|
| Melba Crawford | Purdue | melbac_at_purdue.edu|
| Mike Gore  | Cornell | mag87_at_cornell.edu|
| Matt Colgan | Blue River | matt.c_at_bluerivert.com|
| Christer Janssen | Pacific Northwest National Laboratory | georg.jansson_at_pnnl.gov|
| Barnabas Poczos | Carnegie Mellon | bapoczos_at_cs.cmu.edu|
| Alex Thomasson | Texas A&M University | thomasson_at_tamu.edu|
|**External Advisors** | | | 
| Cheryl Porter| ICASA / AgMIP / USDA |  |
| Shawn Serbin | Brookhaven National Lab | sserbin_at_bnl.gov |
| Shelly Petroy  | NEON |spetroy_at_neoninc.org |
| Christine Laney | NEON |claney_at_neoninc.org |
| Carolyn J. Lawrence-Dill | Iowa State |triffid_at_iastate.edu |
| Eric Lyons | University of Arizona / iPlant |ericlyons_at_email.arizona.edu
 |
