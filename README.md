# TERRA-REF Documentation

## About this book

This book describes the TERRA-REF data collection, computing, and analysis pipelines. The following links provide quick access to 

* [Available Data](/user/what-data-is-available.md)
* [How to access data](/user/how-to-access-data.md)
* [Hands on tutorials](/tutorials.md)

## About TERRA-REF

The ARPA-E-funded Transportation Energy Resources from Renewable Agriculture Phenotyping Reference Platform \(TERRA-REF\) program aims to transform plant breeding by using remote sensing to quantify plant traits such as plant architecture, carbon uptake, tissue chemistry, water use, and other features to predict the yield potential and stress resistance of 300+ diverse Sorghum lines.

The data storage and computing system provides researchers with access to the reference phenotyping data and analytics resources using a high performance computing environment. The reference phenotyping data includes direct measurements and sensor observations, derived plant phenotypes, and genetic and genomic data.

Our objectives are to ensure that the software and data in the reference data and computing pipeline are interoperable, reusable, extensible, and understandable. Providing clear definitions of common formats will make it easier to analyze and exchange data and results.

## Versions

* The first edition (alpha release) was published **November 2016**.
* The second edition (beta release) will be published **March 2018** 
* The third edition (version 1.0) will be published **March 2019**

## Building the book

### Dependencies

```sh
apt-get install -y curl gnupg
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install nodejs
npm install -g gitbook-cli 
```

### Docker

from: https://github.com/billryan/docker-gitbook

```sh
# init
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 billryan/gitbook gitbook init
# serve
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 billryan/gitbook gitbook serve
# build
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 billryan/gitbook gitbook build
```
