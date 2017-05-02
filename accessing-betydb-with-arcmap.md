# Accessing BETYdb from GIS Software 

Interested researchers can access BETYdb directly from GIS software such as ESRI ArcMap and QGIS. 
In some cases direct access can simplify the use of spatial data in BETYdb data, but this convenience must be weighed against a more complex setup, limits of GIS software compatibility, and additional complexity of extracting data from a PostGIS SQL database.

## Overview

Accessing the production BETYdb used by the TERRA REF program requires creating a secure shell tunnel (SSH) to a remote server. 
After creating the tunnel, the database is accessed as if it were available on the local machine. 
A step-by-step process is given below.

## Configuration used for these instructions

* ArcMap 10.3 or later
   * ArcMap implies Windows operating system
* PuTTY: ssh client for Windows that can be downloaded here:  [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)

## Setup

### Request Access 

Request access [to the BETYdb server](https://identity.ncsa.illinois.edu/join/TU49BUUEDM) by following the link. 
This will take you to the NCSA identity service. If you do not have an NCSA account, you will be asked to create one.
  This account and password will be used to login to the database server. Access will generally be granted within 24-hours.

### Confirm Access 

Use PuTTY or your preferred SSH client and your NCSA account. First open the terminal and then login to bety6.ncsa.illinois.edu using ssh from the command line:

```sh
ssh <login>@bety6.ncsa.illinois.edu
```

After confirming access to bety6 logout by typing `exit`.

### Create SSH Tunnel to BETYdb 

The following command will create an `SSH tunnel` from your computer to the BETYdb server: 

_Note_ if have a postgres running on your desktop computer (using the default port 5432), you will need to stop it first.

```sh
ssh -L 5432:localhost:5432 <login>@bety6.ncsa.illinois.edu
```

The above will bind the local port 5432 (first parameter) to port 5432 (second parameter), the default Postgres listening port, on the remote server. All traffic bound for port 5432 on your local machine will be automatically forwarded to the remote server. As a result, programs such as ArcGIS running on your computer will connect to the remote BETYdb as if it were on your computer.

_Note_ **you will need to create the SSH connection with the tunnel every time you wish to
access BETYdb from your local machine.**

To keep the tunnel open, use 

```sh
ssh -Nf -L 5432:localhost:5432 <login>@bety6.ncsa.illinois.edu
```

> _note for PuTTY  Users:_  you can configure Putty to remember these settings. In the navigation tree on the left-hand side, click Connection > SSH > Tunnels. Enter '5432' under Source port and 'localhost:5432' in the Destination field. Then click  session and save this configuration for future use.

The next section of the guide will discuss accessing BETYdb using ArcMap, querying plots and joining these to the traits and experiments tables. The instructions for setting up a SSH tunnel will also work psql, pgAdmin3, QGIS, and other clients. Instructions for connecting via QGIS and ArcGIS Pro are provided below.

## Using ArcMAP

### Add BETYdb Layer or Table to ArcMap

BETYdb is configured with PostGIS geometry support. This allows ArcGIS Desktop clients to access geometry layers stored within BETYdb.

> _Warning:_ ArcGIS releases prior to 10.3 required you to place the
PostgreSQL libpq files in the ArcGIS client's bin directory. This is no
longer required for the ArcGIS Desktop clients but some ESRI tools may
still require the library be installed.*

1. Click on the ArcCatalog icon (on right edge of ArcMap window) to open the ArcCatalog Tree
2. In the tree, click on 'Database Connections' and then "Add Database Connnections". A Database Connection dialog window will open.
3. Within the dialog box:
```
Database Platform: PostgreSQL
Instance: localhost
Authentication Type: Database authentication
User name: viewer
Password: DelchevskoOro 
Database: select bety (if everything else is correct)
```
4. Click OK
4. The connection will be saved as "Connection to localhost.sde", right
click and rename to it to "TERRA REF BETYdb trait database" to allow easy reuse.
5. Click on the Add Layer icon (black cross over yellow diamand) button to open the Add Data dialog window.
6. Under 'Look in' on the second line choose 'Database Connections'. 
7. Select the "TERRA REF BETYdb trait database" that created above
8. Select the bety.public.sites table and click 'Add'. 
   - This 'sites' table is the only table in the database with a geospatial 'geometry' data type.
   - Any of the other tables can also be added, as described below.
6. The New Query Layer dialog will be displayed asking for the Unique Identifier Field for the layer. For the bety.public.sites table, the unique identifier is the "sitename" field. 
7. Click Finish.

> _Warning_: ArcMap does not support the big integer format used by BETYdb
as primary keys and those fields will not be visible or available for
selection. In most cases you should be able to use other fields as
unique identifiers.*

### Modifying the Query Layer

BETYdb contains one geometry table called betydb.public.sites containing
the boundaries for each plot. Because the plot boundaries can change each season, and even within season, different 
plot definitions may be used (e.g. to subset plots or exclude boundary rows), there is significant overlap that can cause confusion
when displayed. 
In general, you will want to use the query layer to limit plots to a single season and a single definition.

1. Right click the bety.public.sites layer and choose properties. 
2. Choose the Definition Query tab 
3. Add the line `sitename LIKE 'MAC Field Scanner Season 1%'` or `sitename LIKE 'MAC Field Scanner Season 2%'` to limit the layer to Season 1 or Season 2 respectively. 
4. Click 'OK'

For more advanced selection of sites by experiment or season, you can join the `experiments` and `experiments_sites` tables. This is beyond the scope of the present tutorial.

### Joining Additional BETYdb Tables

Additional tables can be added and joined to the sites table. Tables can
be added just like any other layer. In this case, we'll add
bety.public.traits_and_yields_view and join it to the bety.public.sites
layer.

1. To create a join with other tables, start by adding the desired table. 
2. Follow instructions above to add the bety.public.traits_and_yields_view 
3. On this table the unique identifier is a group of columns, so select sitename, cultivar, scientificname, trait, date, entity, and method as the unique identifiers. 
2. Right click on the bety.public.sites layer.
3. Under 'Joins and Relates' select 'Join'.
3. Choose sitename (from bety.public.sites) in part 1
4. Choose bety.public.traits_and_yields_view in part 2
5. Choose sitename in part 3
6. Click OK

### Creating a Thematic View

The final section describes how to create a thematic view of the
bety.public.sites layer based on the mean attribute where the trait is
NDVI from the bety.public.traits_and_yields_view. Remove any previous
joins from bety.public.sites (right click bety.public.sites --> joins and relates --> remove join) prior to performing this procedure because we will be selecting the NDVI data by creating a query layer 
from bety.public.traits_and_yields_view prior to the join.

1. Right click bety.public_traits_and_yields_view table and select properties
2. Click on the Definition Query tab
3. Add the line "trait = 'NDVI'" to the Definition Query box
4. Click OK
5. Follow the steps defined in Joining Additional BETYdb Tables
6. Right click on the bety.sites layer and choose properties
7. Choose the Symbology tab
8. Under the Show section, choose Quantities --> Graduated Colors
9. Under the Fields Value selection choose mean
10.  Click OK

## Connecting to Other GIS Software

Below connection instructions assume an SSH tunnel exists.

### ArcGIS Pro

This assumes you have followed instructions for ArcMAP to create a database connection file.

* Open ArcCatalog
  * Under database connections, you will find the connection made above, called 'TERRA REF BETYdb.sde'
  * right click this and select 'properties'
  * copy the file path (it should look like `C:\Users\<USER NAME>\AppData\Roaming\ESRI\Desktop10.4\ArcCatalog\TERRA REF BETYdb.sde`
* Open ArcGIS Pro
   * Under the Insert tab, select connections --> 'add database'
   * paste the path to 'TERRA REF BETYdb.sde' in the directory navigation bar
   * select 'TERRA REF BETYdb.sde'

### QGIS

* Open QGIS
* In left 'browser panel', right-click the PostGIS icon
* select 'New Connection'
* Enter connection properties
  * Name: TERRA REF BETYdb trait database
  * Service: blank
  * Host: localhost
  * Port: 5432
  * Database: bety
  * SSL mode: disable
  * Username: viewer
  * Password: DelchevskoOro
  * Options: select 'Also list tables with no geometry'

