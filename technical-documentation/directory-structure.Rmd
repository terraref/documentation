# Directory Structure

The data processing pipeline transmits data from origination sites to a controlled directory structure on the [ROGER](https://wiki.ncsa.illinois.edu/display/ROGER/ROGER+System+Information) CyberGIS supercomputer.

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

...where raw outputs from sensors per site are stored in a `raw_data` subdirectory and corresponding outputs from different extractor algorithms are stored in `Level_1` \(and eventually `Level_2`, etc\) subdirectories.

When possible, sensor directories will be divided into days and then into individual datasets.

This directory structure is visible when accessing data via the Globus interface.

