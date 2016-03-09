# Danforth Plant Sciences Center
Danforth is developing a pipeline to transfer data from their LemnaTec indoor system in St. Louis, MO to NCSA in Champaign, IL.

## Facility Overview
You can read more about the Bellwether Foundation Phenotyping Facility on the [DDPSC website](https://www.danforthcenter.org/scientists-research/core-technologies/phenotyping).

## Technical Details
**Capturing images**  
This video overview will help explain the capture system:  
[![LemnaTec Video Screnshot](http://img.youtube.com/vi/QCgLuIqiC9E/0.jpg)](https://www.youtube.com/watch?v=QCgLuIqiC9E)

The Scanalyzer 3D platform consists of multiple digital imaging chambers connected to the Conviron growth house by a conveyor belt system, resulting in a continuous imaging loop. Plants are imaged from the top and/or multiple sides, followed by digital construction of images for analysis.
 
* RGB imaging allows visualization and quantification of plant color and structural morphology, such as leaf area, stem diameter and plant height.
* NIR imaging enables visualization of water distribution in plants in the near infrared spectrum of 900–1700 nm.
* Fluorescent imaging uses red light excitation to visualize chlorophyll fluorescence between 680 – 900 nm. The system is equipped with a dark adaptation tunnel preceding the fluorescent imaging chamber, allowing the analysis of photosystem II efficiency.  

The LemnaTec software suite is used to program and control the Scanalyzer platform, analyze the digital images and mine resulting data. Data and images are saved and stored on a secure server for further review or reanalysis.

**Transferring images**  
Processes at Danforth monitor the database repository where images captured from the Scanalyzer are stored. After initial processing, files are transferred to NCSA servers for additional metadata extraction, indexing and storage.

The current "beta" Python script can be viewed [on GitHub](https://github.com/terraref/computing-pipeline/blob/master/scripts/PlantcvClowderUploader.py). During transfer tests of data from Danforth's sorghum pilot experiment, 2,725 snapshots containing 10 images each were uploaded in 775 minutes (3.5 snapshots/minute).

**Transfer volumes**  
The Danforth Center transfers approximately X GB of data to NCSA per week.

**Integration with BETYdb**
At two points in the processing pipeline, metadata derived from collected data is inserted into BETYdb:  
* At the start of the transfer process, metadata collected and derived during Danforth's initial processing will be pushed.
* After transfer to NCSA, extractors running in [Clowder](Clowder.md) will derive further metadata that will be pushed. This is a subset of the metadata that will also be stored in Clowder's database.
The complete metadata definitions are still being determined, but will likely include:
* plant identifiers
* experiment and experimenter
* plant age, date, growth medium, and treatment
* camera metadata
