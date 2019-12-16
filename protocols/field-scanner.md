# Field Scanner

This section describes the sensors deployed on the Lemnatec Field Scanner in Maricopa, AZ. Device and sensor information, including technical specifications, calibration data, and calibration targets are stored in the [TERRA REF Clowder database](https://terraref.ncsa.illinois.edu/clowder/spaces/594bda394f0cf8bbab271dfb).   

The Maricopa field site is located at the the University of Arizona Maricopa Agricultural Center and USDA Arid Land Research Station in Maricopa, Arizona. At this site, we have deployed the following phenotyping platforms.

The [**Lemnatec Scanalyzer Field System**](http://www.lemnatec.com/products/hardware-solutions/scanalyzer-field/) is the largest field crop analytics robot in the world. This high-throughput phenotyping field-scanning robot has a 30-ton steel gantry that autonomously moves along two 200-meter steel rails while continuously imaging the crops growing below it with a diverse array of cameras and sensors.

Twelve sensors are attached to the gantry system. Detailed information for each sensor including name, variable measured, and field of view are described in the table below, with links to more detailed specifications.

![](../.gitbook/assets/field_scanner_sensors%20%281%29.png)

<table>
  <thead>
    <tr>
      <th style="text-align:left">Sensor Name</th>
      <th style="text-align:left">Model and Spec Sheet</th>
      <th style="text-align:left">Field of View</th>
      <th style="text-align:left">Pixel dimension (mm) at 2m</th>
      <th style="text-align:left">Technical Specifications</th>
      <th style="text-align:left">Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><b>Imaging Sensors</b>
      </td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">Stereo RGB Camera</td>
      <td style="text-align:left">GT3300 (<a href="http://www.1stvision.com/cameras/AVT/Prosilica-GT3300-B-C.html">web</a>)
        (<a href="https://terraref.ncsa.illinois.edu/clowder/datasets/5873a8ae4f0cad7d8131ac0e?space=594bda394f0cf8bbab271dfb">specs</a>)</td>
      <td
      style="text-align:left">53&#xB0;</td>
        <td style="text-align:left">0.305 x 0.315</td>
        <td style="text-align:left"></td>
        <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">Laser Scanner</td>
      <td style="text-align:left">Custom Frauhofer 3D (<a href="https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7444f0cad7d81319b2b?space=594bda394f0cf8bbab271dfb">specs</a>)</td>
      <td
      style="text-align:left">0.5m width</td>
        <td style="text-align:left">1.0 x 0.4</td>
        <td style="text-align:left">
          <p>Laser Power: 2000 mW</p>
          <p>Laser class: 3B</p>
        </td>
        <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">VNIR Hyperspectral Imager</td>
      <td style="text-align:left">Inspector VNIR (<a href="https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7bb4f0cad7d8131a0b7?space=594bda394f0cf8bbab271dfb">specs</a>)</td>
      <td
      style="text-align:left">21&#xB0;</td>
        <td style="text-align:left">0.6</td>
        <td style="text-align:left">380-1000 nm @ 2/3 nm resolution</td>
        <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">SWIR Hyperspectral Imager</td>
      <td style="text-align:left">Inspector SWIR (<a href="https://terraref.ncsa.illinois.edu/clowder/datasets/5873a79e4f0cad7d81319f5f?space=594bda394f0cf8bbab271dfb">specs</a>)</td>
      <td
      style="text-align:left">44.5&#xB0;</td>
        <td style="text-align:left">1.4 x 1.0</td>
        <td style="text-align:left">900-2500 nm @ 12 nm resolution</td>
        <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">Thermal Infrared</td>
      <td style="text-align:left">FLIR SC 615 (<a href="https://www.flir.com/products/a615/">web</a>) (
        <a
        href="https://terraref.ncsa.illinois.edu/clowder/datasets/5873a7184f0cad7d8131994a">specs</a>)</td>
      <td style="text-align:left">25&#xB0; x 19&#xB0;</td>
      <td style="text-align:left">2.3</td>
      <td style="text-align:left">
        <p>Thermal sensitivity: &lt;50mK @ +30&#xB0;C</p>
        <p>Range: -40&#xB0;C to +150&#xB0;C</p>
      </td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">PSII Fluorescence Response</td>
      <td style="text-align:left">Lemnatec PS II (<a href="https://terraref.ncsa.illinois.edu/clowder/datasets/5873a84b4f0cad7d8131a73d">specs</a>)</td>
      <td
      style="text-align:left">25&#xB0; x 19&#xB0;</td>
        <td style="text-align:left">1.38 x 1.35</td>
        <td style="text-align:left">
          <p>Illumination 4000umol/m2/s</p>
          <p>Wavelength: 635nm</p>
        </td>
        <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left"><b>Multi-spectral Radiometers</b>
      </td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">Dedicated NDVI</td>
      <td style="text-align:left">Skye Multispectral Radiometer (<a href="http://www.skyeinstruments.com/news-events/new-spectral-albedometers/">web</a>)
        (<a href="https://terraref.ncsa.illinois.edu/clowder/datasets/5873a8f64f0cad7d8131af54">specs</a>)</td>
      <td
      style="text-align:left"></td>
        <td style="text-align:left"></td>
        <td style="text-align:left">CH1: 650nm; CH2 800. Bandwidth: 10 nm</td>
        <td style="text-align:left">1 down, 1 up</td>
    </tr>
    <tr>
      <td style="text-align:left">Dedicated PRI Sensor</td>
      <td style="text-align:left">Skye Radiometer (<a href="http://www.skyeinstruments.com/products/light-sensors-systems/light-sensor-range/new-ndvipri-sensor/">web</a>)
        (<a href="https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9174f0cad7d8131b09a">specs</a>)</td>
      <td
      style="text-align:left"></td>
        <td style="text-align:left"></td>
        <td style="text-align:left">CH1: 531nm +/- 3nm</td>
        <td style="text-align:left">PRI = <a href="https://en.wikipedia.org/wiki/Photochemical_Reflectance_Index">Photochemical Reflectance Index</a>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">PAR Sensor</td>
      <td style="text-align:left"><a href="http://www.apogeeinstruments.com/quantum/">Quantum SQ-300</a>
      </td>
      <td style="text-align:left">180&#xB0;</td>
      <td style="text-align:left"></td>
      <td style="text-align:left">Spectral Range 410 to 655 nm</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">VNIR Spectroradioometer</td>
      <td style="text-align:left"><a href="http://oceanoptics.com/product/sts-vis-microspectrometer/">Ocean Optics STS-Vis</a>
      </td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left">Range: 337-824 nm @ 1/2 nm</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">VNIR+SWIR Spectrometer</td>
      <td style="text-align:left"><a href="https://terraref.ncsa.illinois.edu/clowder/datasets/599deaa64f0c19c55fc0aecd">Spectral Evolution PSR+</a>
      </td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left">Range 350-2500nm @3-8 nm</td>
      <td style="text-align:left">Installed 2018</td>
    </tr>
    <tr>
      <td style="text-align:left">Active Reflectance</td>
      <td style="text-align:left"><a href="http://hollandscientific.com/product/crop-circle-acs-430-active-crop-canopy-sensor/">Crop Circle ACS430P</a>
      </td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left">Bands: 670, 730, 780 nm</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left"><b>Environmental Sensors</b>
      </td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">Environmental Sensors</td>
      <td style="text-align:left">Thies ClimaSensorD (<a href="http://www.thiesclima.com/ClimaSensorUS_e.html">web</a>)
        (<a href="https://terraref.ncsa.illinois.edu/clowder/datasets/5873a9724f0cad7d8131b4d3">specs</a>)</td>
      <td
      style="text-align:left"></td>
        <td style="text-align:left"></td>
        <td style="text-align:left">
          <p>Wind Speed
            <br />Wind Direction
            <br />Air Temperature
            <br />Relative Humidity Air Pressure</p>
          <p>Light Precipitation</p>
        </td>
        <td style="text-align:left">
          <p>Wind: 0 - 60m/s</p>
          <p>Wind direction: 0 &#x2013; 360&#xB0;</p>
          <p>Air temperature: -30&#xB0;C &#x2013; 70&#xB0;C</p>
          <p>Relative Humidity: 0 &#x2013; 100%</p>
          <p>Air pressure: 300 &#x2013; 1100hPa</p>
          <p>Lightness: 0 &#x2013; 150kLux</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">Open Path CO2 Sensor</td>
      <td style="text-align:left"><a href="http://www.vaisala.com/en/products/carbondioxide/Pages/GMP343.aspx">GMP 343</a>
      </td>
      <td style="text-align:left"></td>
      <td style="text-align:left"></td>
      <td style="text-align:left">
        <p>CO2 Concentration</p>
        <p>Range: 0-1000 ppm</p>
      </td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>#### 

