# Point Cloud Data

## Summary

3D point cloud data is collected using the Fraunhofer 3D laser scanner. Custom software installed at Maricopa converts .png output to the .ply point clouds. The .ply point clouds are converted to georeferenced .las files using the 3D point cloud extractor

Level 1 data products are provided in both .las and .ply formats. Raw sensor output \(PLY\) is converted to LAS format using the `ply2las` extractor; [**ply2las**](https://github.com/terraref/extractors-3dscanner)[ **extractor**](https://github.com/terraref/extractors-3dscanner) ****code is available on GitHub**.**

For each scan, there are two .ply files representing two lasers, one on the left and the other on the right. These are combined in the .las files.

## Sensor information

* [Fraunhofer 3D scanner collection](https://terraref.ncsa.illinois.edu/clowder/files/581793394f0ce77b66562ff9?dataset=581789af4f0ce77b6655d094&space=)

For details about using this data via Clowder or Globus, please see [Data Access](../how-to-access-data.md) section.

## Data access

Data is available via Clowder, Globus, and Workbench.

* **Clowder**: [Laser Scanner 3D LAS](https://terraref.ncsa.illinois.edu/clowder/collection/5a0ca1ad4f0ca87e15b485e8)
* **Globus or Workbench File System**:
  * LAS `/raw_data/laser3D_las`
  * PLY `/raw_data/laser3D`

## Known issues

* The position of the lasers is affected by temperature. We added a correction for temperature to adjust for this effect. See [terraref/reference-data\#161](https://github.com/terraref/reference-data/issues/161)

