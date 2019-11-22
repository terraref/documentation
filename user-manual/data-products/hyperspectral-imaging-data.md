# Hyperspectral imaging data

## Summary

Hyperspectral imaging data is collected using the Headwall VNIR and SWIR sensors. In the Nov 2017 Beta Release only VNIR data is provided because we do not have the measurements of downwelling spectral radiation required by the pipeline.

Please see the [README hyperspectral pipeline README](https://github.com/terraref/extractors-hyperspectral/tree/v1.0) for more information about how the data are generated and known issues.

## Hyperspectral Algorithm and pipeline

See [**Hyperspectral extractor**](https://github.com/terraref/extractors-hyperspectral)

## Data Access

### Raw Data

Raw data is available in the filesystem, accessible via Globus in the following directories:

* VNIR: `/sites/ua-mac/raw_data/VNIR`
* SWIR: `/sites/ua-mac/raw_data/SWIR`

These files are uncalibrated; see the hyperspectral pipeline repository for information on how these can be processed.

### Level 1 data access

Hyperspectral data is available via Clowder, [Globus \#Terraref endpoint](https://www.globus.org/), the [TERRA REF Workbench](https://workbench.terraref.org), and our [THREDDS server](https://terraref.ncsa.illinois.edu/thredds):

* **Clowder**:
  * [VNIR Hyperspectral NetCDFs](https://terraref.ncsa.illinois.edu/clowder/collection/5a0cc7e64f0ca87e15ba3163)
  * SWIR Collection: _Level 1 data not available_
* **Globus and Workbench**:
  * VNIR: `/sites/ua-mac/Level_1/vnir_netcdf`
  * SWIR: _Level 1 data not available_
* **Sensor information**:
  * [Headwall SWIR](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a79e4f0cad7d81319f5f) 
  * [Headwall VNIR](https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7bb4f0cad7d8131a0b7) 

For details about using this data via Clowder or Globus, please see [Data Access](https://github.com/terraref/documentation/tree/56f669dc870b3c3921bfc029914545574e70f8df/how-to-access-data.md) section.

### Level 2 data access

Level 2 data are spectral indices computed at the same resolution as Level 1. These can be found in the same Level 1 directories as their parents, but the files are appended \*\_ind.nc.

To get a list of hyperspectral indices currently generated [https://terraref.ncsa.illinois.edu/bety/api/v1/variables?type=Reflectance%20Index](https://terraref.ncsa.illinois.edu/bety/api/v1/variables?type=Reflectance%20Index)

```text
traits::
```

### Level 3 data access

### Hyperspectral Indices

The following indices are computed and provided as both Level 2 data at full spatial resolution and as Level 3 \(plot level\) means.

Citations can be found Morris, Geoffrey P., Davina H. Rhodes, Zachary Brenton, Punna Ramu, Vinayan Madhumal Thayil, Santosh Deshpande, C. Thomas Hash et al. "Dissecting genome-wide association signals for loss-of-function phenotypes in sorghum flavonoid pigmentation traits." G3: Genes, Genomes, Genetics 3, no. 11 \(2013\): 2085-2094.

| Index | Label | Formula | Citation |
| :--- | :--- | :--- | :--- |
| DWSI1 | Disease Water Stress Index 1 | R800 / R1660 | Apan, Held, Phinn and Markley \(2003\) |
| ND900\_680 | Normalized Difference 900/680 | \(R900 - R680\)/\(R900 + R680\) | Rouse et al. \(1973\) |
| SR900\_680 | Simple ratio 900/680 | R900/R680 | Rouse et al. \(1973\) |
| DWSI2 | Disease Water Stress Index 2 | R1660 / R550 | Apan, Held, Phinn and Markley \(2003\) |
| TCARI | Transformed Chlorophyll Absorption Ratio | 3  _\(\(R700 - R670\) - 0.2_  \(R700 - R550\) \* \(R700/R670\)\) | Haboudane et al. \(2002\) |
| DWSI3 | Disease Water Stress Index 3 | R1660 / R680 | Apan, Held, Phinn and Markley \(2003\) |
| DWSI4 | Disease Water Stress Index 4 | R550 / R680 | Apan, Held, Phinn and Markley \(2003\) |
| DWSI5 | Disease Water Stress Index 5 | \(R800 + R550\) / \(R1660 + R680\) | Apan, Held, Phinn and Markley \(2003\) |
| SR700\_670 | Simple Ratio 700/670 | R700/R670 Part of TCARI index |  |
| RDVI | Renormalized Difference Vegetation Index | \(R800 - R670\)/\(R800 + R670\)^0.5 | Rougean and Breon \(1995\) |
| PRI531 | Normalized Difference 531/570 Photochemical Reflectance Index 531/570 | \(R531 - R570\)/\(R531 + R570\) | Gamon et al. \(1992\) |
| EVI | Enhanced Vegetation Index | 2.5  _\(R800 - R680\) / \(R800 + 6.0f_  R680 - 7.5f \* R450 + 1.0f\) | Huete et al. \(1997\) |
| ARVI | Atmospherically Resistant Vegetation Index | \(R800 - \(2.0f  _R680 - R450\)\) / \(R800 + \(2.0f_  R680 - R450\)\) | Kaufman and Tanr√© \(1996\) |
| REIP1 | Red-Edge Inflection Point 1 | 700 + 40 \* {\[\(R670 + R780\)/2 - R700\] /\(R740 - R700\)} | Guyot and Baret, 1988 |
| TVI | Triangular Vegetation Index | 0.5  _\(120_  \(R750 - R550\) - 200 \* \(R670 - R550\)\) | Haboudaneet al. \(2004\) |
| GEMI | Global Environmental Monitoring Index | \(\(2  _\(pow\(R800\) - pow\(R680\)\) + 1.5_  800 + 0.5  _680\) / \(800 + 680 + 0.5\)_  \(1.0 - 0.25  _\(2.0f_  \(pow\(800\) - pow\(680\)\) + 1.5  _800 + 0.5_  680\) / \(800 + 680 + 0.5\)\)\) - \(\(680 - 0.125\) / \(1.0 - 680\)\) | Pinty and Verstraete \(1992\) |
| GARI | Green Atmospherically Resistant Index | \(R800 - \(R550 - 1.7  _\(R450 - R680\)\)\) / \(R800 + \(R550 - 1.7_  \(R450 - R680\)\)\) | Gitelson et al. \(1996\) |
| DVI | Difference Vegetation Index | R800 - R680 | Tucker et al. \(1979\) |
| GDVI | Green Difference Vegetation Index | R800 - R550 | Sripada et al. \(2006\) |
| GNDVI | Green Normalized Difference Vegetation Index | \(R800 - R550\) / \(R800 + R550\) | Gitelson and Merzlyak \(1998\) |
| GRVI | Green Ratio Vegetation Index | R800 / R550 | Sripada et al. \(2006\) |
| SR750\_710 | Simple Ratio 750/710 Zarco-Tejada & Miller 2001 | R750/R710 | Zarco-Tejada et al. \(2001\) |
| MSR705\_445 | Modified simple ratio 705/445 | \(R750 - R445\)/\(R705 - R445\) | Sims and Gamon \(2002\) |
| WI | Water index | R900 - R970 | Penuelas. et al. \(1993\) |
| Chl index | Chlorophyll index | R750/R550 | Gitelson and Merzlyak \(1994\) |
| NDVI705 | Normalized Difference 750/705 Chl NDI | \(R750 - R705\)/\(R750 + R705\) | Gitelson and Merzlyak \(1994\) |
| ChlDela | Chlorophyll content | \(R540 - R590\)/\(R540 + R590\) | Delaieux et al. \(2014\) |
| FRI2 | Fluorescence ratio indices 2 | R740/R800 | Dobrowski et al. \(2005\) |
| NDVI1 | Normalized Difference Vegetation Index1 | \(R800 - R670\)/\( R800 + R670\) | Rouse et al. \(1973\) |
| FRI1 | Fluorescence ratio index1 | R690/R600 | Dobrowski et al. \(2005\) |
| OSAVI | Optimized Soil Adjusted Vegetation Index | \(1 + 0.16\) \* \(R800 - R670\)/\(R800 + R670 + 0.16\) | Rondeaux et al. \(1996\) |
| NDRE | Normalized Difference 790/720 Normalized difference red edge index | \(R790 - R720\)/\(R790 + R720\) | Barnes et al. \(2000\) |
| Car1Black | Carotenoid index from Blackburn 1998 | R800/R470 | Blackburn \(1998\) |
| SIPI | Structure intensive pigment index | \(R800 - R450\)/\(R800 + R650\) | Penuelas. et al. \(1995\) |
| AntGitelson | Anthocyanin \(Gitelson\) | \(1/R550 - 1/R700\) \* R780 | Gitelson et al.\(2003,2006\) |
| Car2Black | Carotenoid index 2 from Blackburn 1998 | \(R800 - R470\)/\(R800 + R470\) | Blackburn \(1998\) |
| PRI586 | Photochemical reflectance index from Panigada et al 2014 | \(R531 - R586\)/\(R531 + R586\) | Panigada et al. \(2014\) |
| AntGamon | Anthocyanin from Gamon and Surfus 1999 | R650/R550 | Gamon and Surfus \(1999\) |
| CarChap | Carotenoid index \(Chappelle\) | R760/R500 | Chappelle et al. \(1992\) |
| PRI512 | Photochemical reflectance index from Hernandez-Clemente et al 2011 | \(R531- R512\)/\(R531 + R512\) | Hern√°ndez-Clemente et al. \(2011\) |
| TCARI\_OSAVI | Transformed Chlorophyll Absorption in Reflectance Index/Optimized Soil-Adjusted Vegetation Index: TCARI/OSAVI | TCARI/OSAVI | Haboudane et al. \(2002\) |
| IPVI | Infrared Percentage Vegetation Index | R800 / \(R800 + R680\) | Crippen et al. \(1990\) |
| NLI | Non-Linear Index | \(pow\(R800, 2\) - R680\) / \(pow\(R800, 2\) + R680\) | Goel and Qin \(1994\) |
| MNLI | Modified Non-Linear Index | \(\(pow\(R800, 2\) - R680\) \* 1.5f\) / \(pow\(R800, 2\) + R680 + 0.5f\) | Yang et al. \(2008\) |
| SAVI | Soil Adjusted Vegetation Index | \(1.5f \* \(R800 - R680\)\) / \(R800 + R680 + 0.5f\) | Huete et al. \(1988\) |
| TDVI | Transformed Difference Vegetation Index | sqrt\(0.5f + \(\(R800 - R680\) / \(R800 + R680\)\)\) | Bannari et al. \(2002\) |
| VARI | Visible Atmospherically Resistant Index | \(R550 - R680\) / \(R550 + R680 - R450\) | Gitelson et al. \(2002\) |
| RENDVI | Red Edge Normalized Difference Vegetation Index | \(R750 - R705\) / \(R750 + R705\) | Gitelson and Merzlyak \(1994\) |
| mRESR | Modified Red Edge Simple Ratio Index | \(R750 - R445\) / \(R750 + R445\) | Sims and Gamon \(2002\) |
| mRENDVI | Modified Red Edge Normalized Difference Vegetation Index | \(R750 - R705\) / \(R750 + R705 - 2.0f \* R445\) | Sims and Gamon \(2002\) |
| VOG1 | Vogelmann Red Edge Index 1 | R740 / R720 | Vogelmann et al. \(1993\) |
| VOG2 | Vogelmann Red Edge Index 2 | \(R734 - R747\) / \(R715 + R726\) | Vogelmann et al. \(1993\) |
| VOG3 | Vogelmann Red Edge Index 3 | \(R734 - R747\) / \(R715 + R720\) | Vogelmann et al. \(1993\) |
| MCARI | Modified Chlorophyll Absorption Reflectance Index | \(\(R700 - R670\) - 0.2f  _\(R700 - R550\)\)_  \(R700 / R670\) | Daughtry et al. \(2000\) |
| MCARI1 | Modified Chlorophyll Absorption Reflectance Index Improved 1 | 1.2f  _\(2.5f_  \(R790 - R670\) - 1.3f \* \(R790 - R550\)\) | Haboudane et al. \(2004\) |
| MCARI2 | Modified Chlorophyll Absorption Reflectance Index Improved 2 | \(1.5f  _\(2.5f_  \(R800 - R670\) - 1.3f  _\(R800 - R550\)\)\) / sqrt\(pow\(2.0f_  R800 + 1.0f, 2\) - 6.0f  _R800 - 5.0f_  sqrt\(R670\) - 0.5f\) | Haboudane et al. \(2004\) |
| MTVI | Modified Triangular Vegetation Index | 1.2f  _\(1.2f_  \(R800 - R550\) - 2.5f \* \(R670 - R550\)\) | Haboudane et al. \(2004\) |
| MTVI2 | Modified Triangular Vegetation Index Improved | 1.5f  _\(1.2f_  \(R800 - R550\) - 2.5f  _\(R670 - R550\)\) / sqrt\(pow\(2.0f_  R800 + 1.0f ,2\) - \(6.0f  _R800 - 5.0f_  sqrt\(R670\)\) - 0.5f\) | Haboudane et al. \(2004\) |
| GMI1 | Gitelson and Merzlak Index 1 | R750 / R550 | Gitelson and Merzlak \(1997\) |
| GMI2 | Gitelson and Merzlak Index 2 | R750 / R700 | Gitelson and Merzlak \(1997\) |
| Lic1 | Lichtenthaler Index 1 | \(R790 - R680\) / \(R790 + R680\) | Lichtenthaler et al. 1996 |
| Lic2 | Lichtenthaler Index 2 | R440 / R690 | Lichtenthaler et al. 1996 |
| Lic3 | Lichtenthaler Index 3 | R440 / R740 | Lichtenthaler et al. 1996 |
| NDNI | Normalized Difference Nitrogen Index | \(log\(1.0f / R1510\) - log\(1.0f / R1680\)\) / \(log\(1.0f / R1510\) + log\(1.0f / R1680\)\) | Fourty et al. \(1996\) |
| MSR | Modified Simple Ratio | \(\(R800 / R680\) - 1.0f\) / \(sqrt\(R800 / R680\) + 1\) | Chen et al. \(1996\) |
| LAI | Leaf Area Index | 3.618f  _\(\(2.5.0f_  \(R800 - R680\)\) / \(R800 + 6.0f  _R680 - 7.5.0f_  R450 + 1.0f\)\) - 0.118f | Boegh et al. \(2002\) |
| NRI1510 | Nitrogen Related Index NRI1510 | \(R1510 - R660\) / \(R1510 + R660\) | Herrmann et al. \(2009\) |
| NRI850 | Nitrogen Related Index NRI850 | \(R850 - R660\) / \(R850 + R660\) | Behrens et al. \(2006\) |
| NDLI | Normalized Difference Lignin Index | \(log\(1.0f / R1754\) - log\(1.0f / R1680\)\) / \(log\(1.0f / R1754\) + log\(1.0f / R1680\)\) | Melillo et al. \(1982\) |
| CAI | Cellulose Absorption Index | \(0.5 \* \(R2000 - R2200\)\) / R2100 | Daughtry et al. \(2001\) |
| PSRI | Plant Senescence Reflectance Index | \(R680 - R500\) / R750 | Merzlyak et al. \(1999\) |
| CRI1 | Carotenoid Reflectance Index 1 | 1.0f / R510 - 1.0f / R550 | Gitelson et al. \(2002\) |
| CRI2 | Carotenoid Reflectance Index 2 | 1.0f / R510 - 1.0f / R700 | Gitelson et al. \(2002\) |
| ARI1 | Anthocyanin Reflectance Index 1 | 1.0f / R550 - 1.0f / R700 | Gitelson et al. \(2001\) |
| ARI2 | Anthocyanin Reflectance Index 2 | R800 \* \(\(1.0f / R550\) - \(1.0f / R700\)\) | Gitelson et al. \(2001\) |
| SRPI | Simple Ration Pigment Index | R430 / R680 | Penuelas et al. \(1995\) |
| NPQI | Normalized Phaeophytinization Index | \(R415 - R435\) / \(R415 + R435\) | Barnes et al. \(1992\) |
| NPCI | Normalized Pigment Chlorophyll Index | \(R680 - R430\) / \(R680 + R430\) | Penuelas et al. \(1994\) |
| WBI | Water Band Index | R900 / R970 | Penuelas et al. \(1995\) |
| NDWI | Normalized Difference Water Index | \(R857 - R1241\) / \( R700 + R1241\) | Gao et al. \(1995\) |
| MSI | Moisture Stress Index | R819 / R1599 | Hunt and Rock \(1989\) |
| NDII | Normalized Difference Infrared Index | \(R857 - R1241\) / \( R700 + R1241\) | Hardisky et al. \(1983\) |
| NMDI | Normalized Multiband Drought Index | \(R819 - R1649\) / \(R819 + R1649\) | Wang and Qu \(2007\) |
| HI | Healthy Index | \(\(R534 - R698\) / \(R534 + R698\)\) - \(R704 / 2.0f\) | Mahlein et al. \(2013\) |
| CLSI | Cercospora Leaf Spot Index | \(\(R698 - R570\) / \(R698 + R570\)\) - R734 | Mahlein et al. \(2013\) |
| SBRI | Sugar Beet Rust Index | \(\(R570 - R513\) / \(R570 + R513\)\) + \(R704 / 2.0f\) | Mahlein et al. \(2013\) |
| PMI | Powdery Mildew Index | \(\(R520 - R584\) / \(R520 + R584\)\) + R724 | Mahlein et al. \(2013\) |
| Crt1 | Carter Index 1 | R695 / R420 | Carter \(1994\) |
| Crt2 | Carter Index 2 | R695 / R760 | Carter \(1996\) |
| BIG2 | Blue/Green Index | R450 / R550 | Zarco-Tejada et al. \(2005\) |
| LSI | Leaf Structure Index | R1110 / R810 | Maruthi Sridhar et al. \(2007\) |
| BRI | Browning Reflectance Index | \(\(1.0f / R550\) - \(1.0f / R700\)\) / R800 | Chivkunova et al. \(2001\) |
| G | Greenness Index | R554 / R677 |  |

### See also

* [Sensor calibration](../../protocols/sensor-calibration.md)
* [Hyperspectral data pipeline](../../protocols/hyperspectral-data.md)
* [Geospatial information](geospatial-information.md)

