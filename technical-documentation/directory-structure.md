# Directory Structure

The data processing pipeline transmits data from origination sites to a controlled directory structure on the Nebula computer at NCSA where it is available for [transfer via Globus](../user-manual/how-to-access-data.md#globus-browse-and-transfer-files). This directory structure is visible when accessing data via the Globus interface.

The data is generally structured as follows:

```text
/sites
  /ua-mac
    /raw_data
      /sensor1
        /timestamp
          /dataset
      /sensor2
      ...
    /Level_1
      /extractor1_outputs
      /extractor2_outputs
      ...
  /danforth
    /raw_data
      /sensor3
      ...
    /Level_1
      /extractor3_outputs
```

...where raw outputs from sensors per site are stored in a `raw_data` subdirectory and corresponding outputs from different extractor algorithms are stored in `Level_1` \(and `Level_2`, etc\) subdirectories \(see [data product levels](data-product-creation.md)\). When possible, sensor directories are divided into days and then into individual datasets. 

