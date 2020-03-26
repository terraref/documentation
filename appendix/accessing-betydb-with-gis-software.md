# Accessing BETYdb with GIS Software

Here we describe how to access BETYdb directly from GIS software such as ESRI ArcMap and QGIS in order to query BETYdb data. The following instructions assume you have followed the instructions for setting up a copy of the TERRA REF database on your own machine described in the BETYdb section of [How to Access Data](../user-manual/how-to-access-data.md#using-sql-and-postgis-with-docker-advanced-users).

The configurations used by QGIS and ArcMAP should be consistent with other software that uses databases.

### Add BETYdb Layer or Table to ArcMap

BETYdb is configured with PostGIS geometry support. This allows ArcGIS Desktop clients to access geometry layers stored within BETYdb.

1. Click on the ArcCatalog icon \(on right edge of ArcMap window\) to open the ArcCatalog Tree
2. In the tree, click on 'Database Connections' and then "Add Database Connnections". A Database Connection dialog window will open.
3. Within the dialog box:

   ```text
   Database Platform: PostgreSQL
   Instance: localhost
   Authentication Type: Database authentication
   User name: bety
   Password: bety 
   Database: select bety (if everything else is correct)
   ```

4. Click OK
5. The connection will be saved as "Connection to localhost.sde", right

   click and rename to it to "TERRA REF BETYdb trait database" to allow easy reuse.

6. Click on the Add Layer icon \(black cross over yellow diamand\) button to open the Add Data dialog window.
7. Under 'Look in' on the second line choose 'Database Connections'. 
8. Select the "TERRA REF BETYdb trait database" that created above
9. Select the bety.public.sites table and click 'Add'. 
   * This 'sites' table is the only table in the database with a geospatial 'geometry' data type.
   * Any of the other tables can also be added, as described below.
10. The New Query Layer dialog will be displayed asking for the Unique Identifier Field for the layer. For the bety.public.sites table, the unique identifier is the "sitename" field. 
11. Click Finish.

> _Warning_: ArcMap does not support the big integer format used by BETYdb  
> as primary keys and those fields will not be visible or available for  
> selection. In most cases you should be able to use other fields as  
> unique identifiers.\*

### Modifying the Query Layer

BETYdb contains one geometry table called betydb.public.sites containing  
the boundaries for each plot. Because the plot boundaries can change each season, and even within season, different  
plot definitions may be used \(e.g. to subset plots or exclude boundary rows\), there is significant overlap that can cause confusion  
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
bety.public.traits\_and\_yields\_view and join it to the bety.public.sites  
layer.

1. To create a join with other tables, start by adding the desired table. 
2. Follow instructions above to add the bety.public.traits\_and\_yields\_view 
3. On this table the unique identifier is a group of columns, so select sitename, cultivar, scientificname, trait, date, entity, and method as the unique identifiers. 
4. Right click on the bety.public.sites layer.
5. Under 'Joins and Relates' select 'Join'.
6. Choose sitename \(from bety.public.sites\) in part 1
7. Choose bety.public.traits\_and\_yields\_view in part 2
8. Choose sitename in part 3
9. Click OK

### Creating a Thematic View

The final section describes how to create a thematic view of the  
bety.public.sites layer based on the mean attribute where the trait is  
NDVI from the bety.public.traits\_and\_yields\_view. Remove any previous  
joins from bety.public.sites \(right click bety.public.sites --&gt; joins and relates --&gt; remove join\) prior to performing this procedure because we will be selecting the NDVI data by creating a query layer  
from bety.public.traits\_and\_yields\_view prior to the join.

1. Right click bety.public\_traits\_and\_yields\_view table and select properties
2. Click on the Definition Query tab
3. Add the line "trait = 'NDVI'" to the Definition Query box
4. Click OK
5. Follow the steps defined in Joining Additional BETYdb Tables
6. Right click on the bety.sites layer and choose properties
7. Choose the Symbology tab
8. Under the Show section, choose Quantities --&gt; Graduated Colors
9. Under the Fields Value selection choose mean
10. Click OK

## Connecting to Other GIS Software

Below connection instructions assume an SSH tunnel exists.

### ArcGIS Pro

This assumes you have followed instructions for ArcMAP to create a database connection file.

* Open ArcCatalog
  * Under database connections, you will find the connection made above, called 'TERRA REF BETYdb.sde'
  * right click this and select 'properties'
  * copy the file path \(it should look like `C:\Users\<USER NAME>\AppData\Roaming\ESRI\Desktop10.4\ArcCatalog\TERRA REF BETYdb.sde`
* Open ArcGIS Pro
  * Under the Insert tab, select connections --&gt; 'add database'
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
  * Username: bety
  * Password: bety
  * Options: select 'Also list tables with no geometry'

### How to export plots from PostGIS as a Shapefile

This does not require GIS software other than the PostGIS traits database. While connecting directly to the database within GIS software is handy, it is also straightforward to export Shapefiles.

After you have connected via ssh to the PostGIS server, the `pgsql2shp` function is available and can be used to dump out all of the plot and site definitions \(names and geometries\) thus:

```bash
pgsql2shp -f terra_plots.shp -h localhost -u bety -P bety bety \ 
         "SELECT sitename, geometry FROM sites"
```

