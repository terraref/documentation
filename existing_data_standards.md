# Existing Data Standards

This page summarizes existing standards, conventions, controlled vocabularies, and ontologies used for the representation of crop physiological traits, agronomic metadata, sensor output, genomics, and other inforamtion related to the TERRA-REF project.

## Metadata standards

### International Consortium for Agricultural Systems Applications (ICASA)

The ICASA Version 2.0 data standard defines an abstract model and data dictionary for the representation of agricultural field expirements.
ICASA is explicitly designed to support implementations in a variety of formats, including plain text, spreadsheets or structured formats.
It is important to note that ICASA is both the data dictionary and a format used to describe experiments.

The Agricultural Model Intercomparison Project ([AgMIP](http://www.agmip.org/)) project has developed a [JSON-based format](http://research.agmip.org/display/dev/JSON+Data+Objects) for use with the AgMIP Crop Experiment (ACE) database and API.

Currently, the ICASA data dictionary is represented as a [Google Spreadsheet](http://research.agmip.org/display/dev/ICASA+Master+Variable+List) and is not suitable for linked-data applications.
The next step is to render ICASA in RDF for the TERRA-REF project.
This will allow TERRA-REF to produce data that leverages the ICASA vocabulary as well as other external or custom vocabularies in a single metadata format.

The ICASA data dictionary is also being mapped to various ontologies as part of the [Agronomy Ontology](http://www.obofoundry.org/ontology/agro.html) project.
With this, it may be possible in the future to represent ICASA concepts using formal ontologies or to create mappings/crosswalks between them.

See also:
<small>
* White et al (2013). [Integrated Description of Agricultural Field Experiments and Production: The ICASA Version 2.0 Data Standards](http://www.sciencedirect.com/science/article/pii/S016816991300077X). Computers and Electronics in Agriculture.
* AgMIP [JSON Data Objects format description](http://research.agmip.org/display/dev/JSON+Data+Objects)
* [ICASA Master Variable List](http://research.agmip.org/display/dev/ICASA+Master+Variable+List)
</small>

### Minimum Information About a Plant Phenotyping Experiment (MIAPPE)

MIAPPE was developed by members of the European Phenotyping Network (EPPN) and the EU-funded [transPLANT](http://www.transplantdb.eu/) project. It is intended to define a list of attributes necessary to fully describe a phenotyping experiment.  

The MIAPPE standard is available from the transPlant [standards portal](http://cropnet.pl/phenotypes/?page_id=71) and is compatible with the [ISA-Tools suite](http://isa-tools.org/) framework. The transPLANT standards portal also provides example configuration for the ISA toolset.

| Section | Recommended ontologies |
| ------------- | ------------- |
| General metadata  | Ongtology for Biomedical Investigations (OBI), Crop Research Ontology (CRO) |
| Timing and location  | OBI, Gazetteer (GAZ)  |
| Biosource | UNIPROT taxonomy, NCBI taxonomy |
| Environment, treatments | XEO Environment Ontology, Ontology of Environmental Features (ENVO), CRO |
| Experimental design | OBI, CRO, Statistics Ontology (STATO) |
| Observed values | Trait Ontology (TO), Plant Ontology (PO), Crop Ontology (CO), Phenotypic Quality Ontology (PATO), XEO/XEML |

MIAPPE is currently the only standard listed in [biosharing.org](https://biosharing.org/standards/?q=miappe) for the phenotyping domain. While several databases claim to support MIAPPE, the standard is still nascent. 

MIAPPE is based on the ISA framework, building on earlier “minimum information” standards, such as MIAME (Minimum Information about a Microarray Experiment). If the MIAPPE standard is determined to be useful for TERRA-REF, it would be worth reviewing the MIAME steandard and related formats such as MAGE-TAG, MINiML, and SOFT accepted by the Gene Expression Omnibus (GEO). GEO is a long-standing repository for genetic research data and might serve as another model for TERRA-REF.

It is worth noting that linked-data methods are supported but optional when depositing data to GEO. The [MAGE-TAB](http://fged.org/projects/mage-tab/) format, similar to the MIAPPE ISA Tab format, does support [sources for controlled vocabulary terms or ontologies](http://tab2mage.sourceforge.net/docs/magetab_docs.html).

*See also:*
<small>
* [Minimum Information about a Plant Phenotyping Experiment](http://cropnet.pl/phenotypes/wp-content/uploads/2016/04/MIAPPE.pdf)
</small>

### Dublin Core Application Profiles

While some communities define explicit metadata schema (e.g., [Ecological Metadata Language](http://www.dcc.ac.uk/resources/metadata-standards/eml-ecological-metadata-language)), another approach is the use of "application profiles."  An application profile is declaration of metadata terms adopted by a community or an organization along with the source of the terms. Application profiles are composed of terms drawn from multiple vocubularies or ontologies to define a "schema" or "profile" for metadata.  For example, the Dryad metadata profile draws on the Dublin Core, Darwin Core, and Dryad-specific elements.

*See also:*
<small>
* DCMI [Guidelines for Dublin Core Application Profiles](http://dublincore.org/documents/profile-guidelines/index.shtml).
* Example [Dryad Metadata Profile](http://wiki.datadryad.org/Metadata_Profile)
* DCMI [Singapore Framework](http://dublincore.org/documents/singapore-framework/)
</small>

### Trait Dictionary Format (Crop Ontology)

The Crop Ontology curation tool supports import and export of trait information in a trait dictionary format. 

*See also:*
<small>
* [The Crop Ontology Improving the Quality of 18 Crop Trait Dictionaries](https://www.researchgate.net/publication/266088335_The_Crop_Ontology_Improving_the_Quality_of_18_Crop_Trait_Dictionaries_for_the_Breeding_Management_System_and_Adding_New_Crops)
</small>

## Vocabularies and Ontologies
This section reviews related controlled vocabularies, data dictionaries, and ontologies.

### Biofuel Ecophysiological Traits and Yields Database (BETYdb)

While BETYdb is not a controlled vocabulary itself, the relational schema models a variety of concepts including managements, sites, treatments, traites, and yields. 

The BETYdb “variables” table defines variables used to represent traits in the BETYdb relational model.
There has been some effort to standardize variable names by adopting [Climate Forecasting (CF) convention](http://cfconventions.org/) standard names where variables overlap.
A variable is represented as a name, description, units, as well as min/max values.

For example:
```json
"variable": {
    "created_at": "2016-03-07T11:23:58-06:00",
    "description": "",
    "id": 604,
    "label": "",
    "max": "1000",
    "min": "0",
    "name": "NDVI",
    "notes": "",
    "standard_name": "normalized_difference_vegetation_index",
    "standard_units": "ratio",
    "type": "",
    "units": "ratio",
    "updated_at": "2016-03-07T11:26:07-06:00"
}
```

*See also:*


<small>
* [The full suite of variables supported by BETYdb](https://www.betydb.org/variables)
* [Trait variables used in the TERRA Ref BETYdb instance](https://www.betydb.org/variables)
</small>

### DCMI Metadata terms

Controlled vocabulary for the representation of bibliographic information.
*See also:*
<small>
* [DCMI Terms](http://dublincore.org/documents/dcmi-terms/)
</small>

### Climate and Forecast Standard Name Table

Standard variable names and naming convention for use with NetCDF.
The Climate and Forecast metadata conventions are intended to promote sharing of NetCDF files.
The CF conventions define metadata that provide a definitive description of what the data in each variable represents, and the spatial and temporal properties of the data.
This enables users of data from different sources to decide which quantities are comparable, and facilitates building applications with powerful extraction, regridding, and display capabilities. 

Basic conventions include lower-case letters, numbers, underscores, and US spelling.

Information is encoded in the variable name itself. The basic format is (optional components in []):

```[surface] [component] standard_name [at surface] [in medium] [due to process] [assuming condition]```

For example:
```acoustic_signal_roundtrip_travel_time_in_sea_water
```

Standard names have optional canonical units, AMIP and GRIB (GRidded Binary) codes.

The CF standard names have been converted to RDF by several communities, including the Marine Metadata Interoperability (MMI) project.

Dimensions: time, lat, lon, other
specify time first (unlimited) lat, lon or x, y extent to field boundaries.

*See also:*
<small>
* [CF Conventions](http://cfconventions.org/)
* [CF Conventions FAQ](http://cfconventions.org/faq.html#stdnames_mappings) mentions RDF conversions.
</small>

### ICASA master variable list

Vocabulary and naming conventions for agricultural modeling variables, used by AgMIP.
The ICASA master variable list is included, at least in part, in the AgrO ontology.
The NARDN-HD Core Harmonized Crop Experiment Data is also taken from the ICASA vocabulary.

ICASA variables have a number of fields, including name, description, type, min and max values.

*See also:*
<small>
* [ICASA Master Variable List](http://research.agmip.org/display/dev/ICASA+Master+Variable+List)
* White et al (2013). [Integrated Description of Agricultural Field Experiments and Production: The ICASA Version 2.0 Data Standards](http://www.sciencedirect.com/science/article/pii/S016816991300077X). Computers and Electronics in Agriculture.
</small>

### NARDN-HD Core Harmonized Crop Experiment Data

A subset of the ICASA data dictionary representing set of core variables that are commonly collected in field crop experiments.
These will be used to harmonize data from USDA experiments as part of a National Agricultural Research Data Network.


### CSDMS Standard Names

Variable naming rules and patterns for any domain developed as part of the CSDMS project as an alternative to CF.
CSDMS standard names is considered to have  a more flexible community approval mechanism than CF.
CSDMS names include object, quantity/attribute parts.

CSDMS names have been converted to RDF as part of the Earth Cube Geosemantic Server project.

*See also:*
<small>
* [CSMDS Standard Names](http://csdms.colorado.edu/wiki/CSDMS_Standard_Names#.C2.A0_CSDMS_Standard_Names)
</small>


### International Plant Names Index (IPNI)

http://www.ipni.org/

IPNI is a database of the names and associated basic bibliographical details of seed plants, ferns and lycophytes.
It's goal is to eliminate the need for repeated reference to primary sources for basic bibliographic information about plant names. 

### NCBI Taxonomy

http://www.ncbi.nlm.nih.gov/taxonomy

A curated classification and nomenclature for all of the organisms in the public sequence databases that represents about 10% of the described species of life on the planet.
Taxonomy recommended by MIAPPE.


## Ontologies

### Agronomy Ontology (AGRO)

The Agronomy Ontology “describes agronomic practices, agronomic techniques, and agronomic variables used in agronomic experiments.”
It is intended as a complementary ontology to the Crop Ontology (CO).
Variables are selected out of the International Consortium for Agricultural Systems Applications (ICASA) vocabulary and a mapping between AgrO and ICASA is in progress.
AgrO is intended to work with the existing ontologies including ENVO, UO, PATO, IAO, and CHEBI.
It will be part of an Agronomy Management System and fieldbook modeled on the CGIAR Breeding Management System to capture agronomic data.

See also:
<small>
* OBO Foundry. [Agonomy Ontology](http://www.obofoundry.org/ontology/agro.html)
* FAO. [Crop Ontology: harmonizing semantics for phenotyping and agronomy data](http://aims.fao.org/activity/blog/crop-ontology-harmonizing-semantics-phenotyping-and-agronomy-data)
* RDA. [Interest Group on Agricultural Data (IGAD)](https://rd-alliance.org/interest-group-agricultural-data-igad-pre-plenary-meeting.html)
</small>

### Crop Ontology (CO)

The Crop Ontology (CO) contains "Validated concepts along with their inter-relationships on anatomy, structure and phenotype of crops, on trait measurement and methods as well as on Germplasm with the multi-crop passport terms."
The ontology is actively used by the CGIAR community and a central part of the Breeding Management System.
MIAPPE recommends the CO (along with TO, PO, PATO, XEML) for observed variables.

Shrestha et al (2012) describe a method for representing trait data via the CO.

See also:
<small>
* [Crop Ontology](http://www.cropontology.org/about)
* Shrestha et al (2012). [Bridging the phenotypic and genetic data useful for integrated breeding through a data annotation using the Crop Ontology developed by the crop communities of practice](http://www.ncbi.nlm.nih.gov/pubmed/22934074). Front Physiol. 2012 Aug 25;3:326.
</small>


### Crop Research Ontology (CRO)
Describes experimental design, environmental conditions and methods associated with the crop study/experiment/trial and their evaluation.
CRO is part of the Crop Ontology platform, originally developed for the International Crop Information System (ICIS).
CRO is recommended in the MIAPPE standard for general metadata, environment, treatments, and experimental design fields.

*See also:*
<small>
* [Crop Research Ontology](http://www.cropontology.org/ontology/CO_715/Crop%20Research)
* [International Crop Information System](http://irri.org/our-work/locations/55-resources/tools/201-international-crop-information-system)
</small>

### Extensible Observation Ontology (OBOE)

Cited in Kattge et al (2011) as an example of an ontology used in ecology and environmental sciences to represent measurements and observation.
However, the CRO may be better suited for TERRA-REF.

*See also:*
<small>
* Kattge, J.(2011). [A generic structure for plant trait databases](http://doi.org/10.1111/j.2041-210X.2010.00067.x)
</small>

### Gene Ontology (GO)

Defines concepts/classes used to describe gene function, and relationships between these concepts.
GO is a widely-adopted ontology in genetics research, supported by databases such as GEO.
This ontology is cited in Krajewski et al (2015) and might be relevant for the TERRA genomics pipeline.

See also:
<small>
* [Gene Ontology](http://geneontology.org/)
* Krajewski et al (2015). [Towards recommendations for metadata and data handling in plant phenotyping](http://doi.org/10.1093/jxb/erv271). Journal of Experimental Botany, 66(18), 5417–5427. 
</small>

### Information Artifact Ontology (IAO)

Information entities, originally driven by work by OBI (e.g., abstract, author, citation, document etc).
IAO covers similar territory to the Dublin Core vocabulary.

### Ontology for Biomedical Investigations (OBI)

Integrated ontology for the description of biological and clinical investigations.
This includes a set of 'universal' terms, that are applicable across various biological and technological domains, and domain-specific terms relevant only to a given domain.
Recommended by MIAPPE for general metadata, timing and location, and experimental design.

*See also:*
<small>
* [Minimum Information about a Plant Phenotyping Experiment](http://cropnet.pl/phenotypes/wp-content/uploads/2016/04/MIAPPE.pdf)
</small>

### Phenotype and Attribute Ontology (PATO)

Phenotypic qualities (properties).

Recommended in MAIPPE for use in the observed values field.

*See also:*
<small>
* [Minimum Information about a Plant Phenotyping Experiment](http://cropnet.pl/phenotypes/wp-content/uploads/2016/04/MIAPPE.pdf)
</small>

### Plant Environment Ontology (EO)

Part of the Plant Ontology (PO), standardized controlled vocabularies to describe various types of treatments given to an individual plant / a population or a cultured tissue and/or cell type sample to evaluate the response on its exposure. 

### Plant Ontology (PO)

Describes plant anatomy and morphology and stages of development for all plants intended to create a framework for meaningful cross-species queries across gene expression and phenotype data sets from plant genomics and genetics experiment.
Recommended by MIAPPE for observed values fields. Along with EO, GO, and TO make up the Gramene database.
Links plant anatomy, morphology and growth and development to plant genomics data.

*See also:*
<small>
* [Minimum Information about a Plant Phenotyping Experiment](http://cropnet.pl/phenotypes/wp-content/uploads/2016/04/MIAPPE.pdf)
</small>

### Plant Trait Ontology (TO)

Along with EO, GO, and PO, make up the Gramene database to link plant anatomy, morphology and growth and development to plant genomics data.
Recommended by MIAPPE for observed  values fields.

Example trait entry:
```
[Term]
id: TO:0000019
name: seedling height
def: "Average height measurements of 10 seedlings, in centimeters from the base of the shoot to the tip of the tallest leaf blade." [IRRI:SES]
synonym: "SH" RELATED []
is_a: TO:0000207 ! plant height
```

*See also:*
<small>
* [Minimum Information about a Plant Phenotyping Experiment](http://cropnet.pl/phenotypes/wp-content/uploads/2016/04/MIAPPE.pdf)
</small>

### Statistics Ontology (STATO)

General purpose statistics ontology coveraging processes such as statistical tests, their conditions of application, and information needed or resulting from statistical methods, such as probability distributions, variables, spread and variation metrics.
Recommended by MIAPPE for experimental design.

*See also:*
<small>
* [Minimum Information about a Plant Phenotyping Experiment](http://cropnet.pl/phenotypes/wp-content/uploads/2016/04/MIAPPE.pdf)
</small>

### Units of Measurement Ontology (UO)

Metric units for PATO. This OBO ontology defines a set of prefixes (giga, hecto, kilo, etc) and units (area/square meter, volume/liter, rate/count per second, temperature/degree Fahrenheit). The two top-level classes are prefixes and units.

UO is mentioned in relation to the Agronomy Ontology (AGRO), but PATO is also recommended by MIAPPE for observed values fields

While there are general standard units, it seems unlikely that these would ever be gathered in a single place.  It seems more useful to define a high-level ontology to represent a "unit" and allow domains and communities to publish their own authoritative lists.

### XEML Environment Ontology (XEO) 

Created to help plant scientists in documenting and sharing metadata describing the abiotic environment.


### DDI-RDF Discovery Vocabulary

### Data Catalog Vocabulary (DCAT)

The [Data Catalog Vocabulary](https://www.w3.org/TR/vocab-dcat/) is an RDF vocabulary intended to facilitate interoperability between data catalogs published on the Web. DCAT defines a set of classes including Dataset, Catalog, CatalogRecord, and Distribution. 

### Data Cite Ontology 

The [DataCite Ontology](http://www.sparontologies.net/ontologies/datacite/source.html)

### Data Cube Vocabulary

The [Data Cube Vocabulary](https://www.w3.org/TR/vocab-data-cube/) is an RDF-based model for publishing multi-dimentional datasets, based in part on the SDMX guidelines. 
DataCube defines a set of classes including DataSet, Observation, and MeasureProperty that may be relevant to the TERRA project. 


### Statistical Data and Metadata Exchange (SDMX)

[SDMX](https://sdmx.org/) is an international initiative for the standarization of the exchange of statistical data and metadata among international organizations.  Sponsors of the initiative include Eurostat, European Central Bank, the OECD, World Bank and the UN Statistical Division. They have defined a framework and an exchange format, SDMX-ML, for data exchange. Community members have also developed RDF encodings of the SDMX guidelines that are heavily referenced in the Data Cube vocabulary examples.


## Related Software, Services, and Databases

Standard formats, ontologies, and controlled vocabularies are typically used in the context of specific software systems. 

### Agricultural Model Inter-Comparison and Improvement Project (AgMIP) Crop Experiment (ACE) Database

AgMIP "seeks to improve the capability of ecophysiological and economic models to describe the potential impacts of climate
change on agricultural systems.  
AgMIP protocols emphasize the use of multiple models; consequently, data harmonization is essential. 
This interoperability was achieved by establishing a data exchange mechanism with variables defined in accordance with international standards; implementing a flexibly structured data schema to store experimental data; and designing a method to fill gaps in model-required input data."

The data exchange format is based on a [JSON rendering of the ICASA Master Variable List](http://research.agmip.org/display/dev/JSON+Data+Objects).
Data are transfer into and out of the AgMIP Crop Experiment (ACE) and AgMIP Crop Model (ACMO) databases via REST apis using these JSON objects.


*See also*
<small>
* [AgMIP Crop Expirement Database](http://www.agmip.org/it-team/)
* Porter et al (2014). [Harmonization and translation of crop modeling data to ensure interoperability](http://dx.doi.org/10.1016/j.envsoft.2014.09.004). Environmental Modelling and Software. 62:495-508.
* [AgMIP Data Products](http://research.agmip.org/download/attachments/3866652/11_+IT_Porter_10Oct.pdf) presentation
* [AgMIP on Github](https://github.com/agmip)
* [AgMIP Crop Experiment Database data variables](http://research.agmip.org/display/it/Data+Interoperability)
* [AgMIP API](http://research.agmip.org/display/dev/The+AgMIP+Crop+Experiment+Database+API)
* [AgMIP using ICASA standards](https://github.com/terraref/reference-data/issues/6)</small>


### Biofuel Ecophysiological Traits and Yields Database (BETYdb) 

[BETYdb](https://betydb.org) is used to store TERRA meta-data, provenance, and traits information. 

BETYdb traits are available as web-page, csv, json, xml. This can be extended to allow spatial, temporal, and taxonomic / genomic queries. Trait vectors can be queries and rendered in several output formats. For example:

Here are some examples from betydb.org. 
* [HTML output](https://www.betydb.org/search?&search=switchgrass+sla)
* [csv output](https://www.betydb.org/search.csv?&search=switchgrass+sla)
* [xml output](https://www.betydb.org/search.xml?&search=switchgrass+sla)
* [Json-compatible output](https://www.betydb.org/search.json?&search=switchgrass+sla)

A separate instance of BETYdb is maintained for use by TERRA Ref at [terraref.ncsa.illinois.edu.org/bety](https://terraref.ncsa.illinois.edu.org/bety).
The scope of the TERRA Ref database is limited to high througput phenotyping data and metadata produced and used by the TERRA program.
Users can set up their own instances of BETYdb and import any public data in the distributed BETYdb network.

*See also: BETYdb documentation*
<small>
* [BETYdb Data Access](https://pecan.gitbooks.io/betydb-data-access/content/) includes accessing data with web interface, API, and R traits package
* [BETYdb constraints](https://www.authorea.com/users/5574/articles/6719/_show_article), see section "uniqueness constraints"  
* [BETYdb Data Entry](https://pecan.gitbooks.io/betydbdoc-dataentry/content/)
</small>

### Gramene

[Gramene](http://www.gramene.org/) is a curated, open-source, integrated data resource for comparative functional genomics in crops and model plant species

### Integrated Breeding Platform/Breeding Management System

System for managing the breeding process including lists of germplasms, defining crosses, managing nurseries, trials, as well as ontologies and statistical analysis.

*See also:*
<small>
* [BMS Site](https://www.integratedbreeding.net/)
</small>

TERRA Ref has an instance of [BMS hosted by CyVerse](http://cardinal.cyverse.org:48080/ibpworkbench/main) (requires login).

### International Crop Information System

ICIS is "a database system that provides integrated management of global information on crop improvement and management both for individual crops and for farming systems." ICIS is developed by Consultative Group for International Agricultural Research (CGIAR).

*See also*
<small>
* Fox and Skovmand (1996). "The International Crop Information System (ICIS) - connects genebank to breeder to farmer’s field." Plant adaptation and crop improvement, CAB International. 
</small>

### MODAPS NASA MODIS Satellite data 

The [MODAPS NASA MODIS Satellite](https://ladsweb.nascom.nasa.gov/data/api.html) data encompasses a library of functions that provides programmatic data access and processing services to MODIS Level 1 and Atmosphere data products.
These routines enable both SOAP and REST based web service calls against the data archives maintained by MODAPS. These routines mirror existing LAADS Web services.

*See also:*
<small>
* [NDISC Modis Data Summaries](https://nsidc.org/data/modis/data_summaries)
</small>

### Phenomics Ontology Driven Database (PODD)
http://www.plantphenomics.org.au/projects/podd/
Online repository for storage and retrieval of raw and analyzed data from Australian Plant Phenomics Facility (APPF) phenotyping platforms. PODD is based on Fedora Commons repository software with data and metadata modeled using OWL/RDFS.

*See also:*
<small>
* [PODD Project Site](http://www.plantphenomics.org.au/projects/podd/)
</small>

### Plant Breeders API

Specifies a standard interface for plant phenotype/genotype databases to serve data for use in crop breeding applications.
This is the API used by [FieldBook](https://fieldbook.com/), which allows users to turn spreadsheets into databases.
Examples indicate that the responses will include values linked to the Crop Ontology, for example:

[https://github.com/plantbreeding/API/blob/master/Specification/Traits/ListAllTraits.md](https://github.com/plantbreeding/API/blob/master/Specification/Traits/ListAllTraits.md)

However, in general the BRAPI returned JSON data without linking context (i.e., not JSON-LD), so it is in essence it’s own data structure.

Other notes:
* The [Breeding Management System (BMS)](https://www.integratedbreeding.net/breeding-management-system) group has implemented a few features to make it compatible with Field Book in its current state without the use of API.
* BMS and the [Genomic & Open-source Breeding Informatics Initiative (GOBII)](http://cbsugobii05.tc.cornell.edu/wordpress/) are both pushing for the API and plan on implementing it when it's complete. 
* Read news about the [BMS Breeding Management System Standalone Server](https://www.integratedbreeding.net/206/news-events/news?id=150) and [genomes2fields migrating to BMS](https://www.integratedbreeding.net/206/news-events/news?id=142)

*See also*
<small>
* [Plant Breeding API](http://docs.brapi.apiary.io/)
</small>

### Plant Genomics and Phenomics Research Data Repository (PGP)

German repository for plant research data including image collections from plant phenotyping and microscopy, unfinished genomes, genotyping data, visualizations of morphological plant models, data from mass spectrometry as well as software and documents.

See also:
<small>
* Arend et al (2016). [PGP repository: a plant phenomics and genomics data publication infrastructure](http://database.oxfordjournals.org/content/2016/baw033.full). Database.
* [PGP Repository](http://edal.ipk-gatersleben.de/science/papers.html)
</small>

### USDA Plants

“The PLANTS Database provides standardized information about the vascular plants, mosses, liverworts, hornworts, and lichens of the U.S. and its territories. It includes names, plant symbols, checklists, distributional data, species abstracts, characteristics, images, crop information, automated tools, onward Web links, and references.”

*See also*
<small>
* [USDA Plants Website](http://plants.usda.gov)
</small>

### USDA Quick Stats

Web based application supports querying the agricultural census and survey statistics. Also available via API.

*See also*
<small>
* [USDA Quick Stats Website](https://quickstats.nass.usda.gov/)
</small>

### transPLANT

Infrastructure to support computational analysis of genomic data from crop and model plants.
This includes the large-scale analysis of genotype-phenotype associations, a common set of reference plant genomic data, archiving genomic variation, and a search engine integrating reference bioinformatics databases and physical genetic materials.
*See also*
<small>
* [transPlant Website](http://www.transplantdb.eu/project)
</small>

----


## Sensor Data

#### Meteorological data

[Proposed format for meteorological variables exported from Lemnatec platform](https://github.com/terraref/reference-data/issues/3)

#### Multi-scale Synthesis and Terrestrial Model Intercomparison Project (MsTMIP) data formats

* One implementation of CF for ecosystem model driver (met, soil) and output (mass, energy dynamics)
  * Standardized Met driver data
  * [Terrestrial Ecosystem Model output](http://mstmipsynthesis.pbworks.com/w/page/25673213/FrontPage)


### Date-Time: 

YYYY-MM-DD hh:mm:ssZ: 
based on ISO 8601 . Optional offset for local time; precision determined by data (e.g. could be YYYY-MM-DD and decimals specified by a period.
