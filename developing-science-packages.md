## Developing Science Packages for Use in TERRA-REF Pipeline

In 2018 the decision was made to split Clowder-specific extractor code from the actual science code that performs critical conversion and analysis on sensor data.

### Contributing

Science package functions should be simple and not rely on Clowder or other external resources.
* takes a single file or set of files as input
* produces a single output file/return value or set of outputs

As much as possible, these should function outside the TERRA-REF pipeline and potentially be applicable in other contexts.

Pull requests can be made against science package repositories for evaluation by the internal development team.

### General Structure

The general directory structure is as follows:

```
<Repository Root>
setup.py
terraref/
    __init__.py
    SCIENCE_PKG_NAME/
        __init__.py
        science_functions.py
```

In order to ensure consistency of structure across packages, terraref/__init__.py contains only one line:

```
__import__('pkg_resources').declare_namespace(__name__)
```

Then, within setup.py (example from stereo_rgb package):

```
from setuptools import find_packages, setup

setup(name='terraref-stereo_rgb',
      version='1.0.3',
      packages=find_packages(),
      namespace_packages=['terraref'],
      include_package_data=True,
      url='https://github.com/terraref/stereo_rgb',
      install_requires=[
            'numpy',
            'scipy',
            'multiprocessing',
            'matplotlib',
            'Pillow'
      ]
      )
```

...and within terraref/SCIENCE_PKG_NAME/__init__.py we specify which functions to import when the package is imported:

```
from .stereo_rgb import \
    calculate_canopycover,  process_raw,  demosaic, get_image_shape
```

### Deploying to PyPi

When the package is ready, the following commands can be used to publish:

```
cd <Repository Root>
python setup.py sdist
twine upload dist/<newly tagged version.gz>
```

### Using Science Package

```
pip install terraref-stereo-rgb

import terraref.stereo_rgb
terraref.stereo_rgb.calculate_canopycover()

from terraref.stereo_rgb import calculate_canopycover
calculate_canopycover()
```
