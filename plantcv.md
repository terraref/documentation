# PlantCV

* Homepage: http:/plantcv.danforthcenter.org/

## Metadata

These are the metadata terms and formats used to upload PlantCV outputs to iPlant Data Store and BisQue.

| name | type | units | definition| 
|:---|:---|
|**snapshot_id** | int | | (internal ID number for the group of images taken for one plant at one time point)|
|**plant_barcode**| text | | (internal alpha-numeric code for each plant)|
|**plant_age** | int | days | days after planting| | 
|**zoom** | numeric | X optical zoom | camera zoom setting|
|**perspective** | text | side-view or top-view| | 
|**rotation_angle** |numeric | degrees | the angle the plant was rotated for the picture. For side-view images we have 0, 90, 180 and 270 degree image|
|**camera_type** | text | | visible/RGB, near-infrared or photosystem II fluorescence|
|**treatment** | text | | treatment name |
|**geometry** | numeric | pixels | image pixel length/width dimensions, units: pixels|
|**image_type** | text | | 8-bit/color RGB non-interlaced, 8-bit grayscale non-interlaced, or 16-bit grayscale non-interlaced |
|**imagedate** |date-time| YYYY-MM-DD HH:MM:SS| | 
|**experiment** |text | | |
|**experimenter** | text | | lead PI|
|**project** | text | | |
|**laboratory** |name | | Baxter Lab Donald Danforth Plant Science Center|
|**growth_medium** | text | | e.g. MetroMix360 potting mix with Osmocote|
|**filename** | text | | name of the image file|
|**species** | text | | |
|**genotype** |text | | what is the canonical unique ID?| 
|**sha1** | text | | checksum value for file integrity|

mappings to BETYdb 

* plant_barcode, species, genotype, --> unique identifier / natural key
* plant_barcode --> entities
* treatment --> treatment, managements
* experimenter --> citations.author
* experiment --> citations.title
* plant_age --> covariate
* planting_date --> managements
* growth_medium --> managements
* camera meta-data --> methods




reference: [github.com/terraref/computing-pipeline#36](https://github.com/terraref/computing-pipeline/issues/36)