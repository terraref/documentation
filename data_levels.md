# Data Product Levels

Data products are processed at various levels ranging from Level 0 to Level 4. Level 0 products are raw data at full instrument resolution. At higher levels, the data are converted into more useful parameters and formats. These are derived from NASA[^1] and NEON[^2]



| Level | Description | 
| :--: | -- |
| 0 |  Reconstructed, unprocessed, full resolution instrument data; artifacts and duplicates removed.|
| 1a | Level 0 plus time-referenced and annotated with calibration coefficients and georeferencing parameters (level 0 is fully recoverable from level 1a data). |
| 1b | Level 1a processed to sensor units (level 0 not recoverable) | 
| 2 | Derived variables (e. g., NDVI, height, fluorescence) at the level 1 resolution. |
| 3 | Level 2 mapped to uniform grid, missing points gap filled; overlapping images combined |
| 4| 'phenotypes' derived variables associated with a particular plant or genotype rather than a spatial location |  |


___
1 [Earth Observing System Data Processing Levels, NASA](http://science.nasa.gov/earth-science/earth-science-data/data-processing-levels-for-eosdis-data-products/)

2 [National Ecological Observatory Network Data Processing](http://www.neoninc.org/science-design/data-processing)  
