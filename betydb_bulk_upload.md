# BETYdb Bulk Upload

Basics of Primary Data Upload


1. Go to the **BETYdb** homepage.
2. On the homepage, there are tabs at the top of the page. (Data, Docs, Runs, Model I/O, Bulk Upload)  
3. When uploading data, the two tabs that have most of what's needed for data upload are the **Data Tab** and the **Bulk Upload Tab**. 

**NEED SCREENSHOT** or just link / merge with data entry workflow


The "Data" tab links to tables containing plant trait and yield data as well as meta-data. 
Each of these tables provides an interface that allows users to search the entire database as well as investigate and edit (with permission) individual records. The Data entry workflow documentation describes how to use these tables to enter data. 

These tables can be accessed via the web browser by clicking 'Data --> tablename' or by typing in the url `https://<hostname>/bety/<tablename>`, for example, `terraref.ncsa.illinois.edu/bety-test/sites`. 
To download a text-based format for use in your favorite data management software, you can download the entire table by appending `.csv` or `.json` to the table url, e.g. `terraref.ncsa.illinois.edu/bety-test/sites.csv`.

# Meta-data entry required for Bulk Upload:

The first step is to make sure that all required meta-data is in the database. This includes citations, sites, cultivars, and treatments.

In all cases, it is necessary to match the spelling and capitalization of the keys used to lookup records in these tables based on columns in the bulk upload spreadsheet.

**Citation** 

Search for your citation and if it doesn't already exist in the system then create a new citation.

Citations can reference published articles as well as unpublished datasets. The minimum requirement is to have the name of the data owner, a descriptive title, and a year.

**Sites**

Verify that all sites are in the sites table. You will want to verify this for variables as well. Make sure to verify that all the variables on your excel sheet match what the system has for variables. 

If there is any data on the excel sheet that is not also in the system, you will need to enter that data. (Site name, LAI, traits, variables) 

Once all the data is entered properly, you can go ahead and click on the **Bulk Upload** tab. 


# Bulk Upload 

Once you have entered all the necessary data to prepare for a bulk upload, you can then begin the bulk upload process. 

For entering existing data, download a copy of the trait data bulk upload template ([traits.csv](https://docs.google.com/spreadsheets/d/1TK-u-m4SG1KupYCVDUIye1C3zX8b1xgaYIG1fHNkYjs/export?format=csv&gid=0)) or copy the google spreadsheet template (_enter url here_). 
For more automated data collection and transfer, the API insertion endpoint accepts tables in this format (as well as XML and json formats beyond the scope here, but described in the data entry documentation). 

Google Sheets is an useful format that supports collaborative editing as well as programmatic access.

## Common Issues

1. Text values and column names in the spreadsheet must match records in the database. This includes variable names, site names, species and cultivar names, etc.
2. misspellings, 
3. missing references to existing tables, 
4. Values out of allowable range. 

One of the most common errors is improper column name in the excel sheet that doesn't match what the system has for that variable. Another frequently made mistake is that the data for the variables in the excel sheet is out of range for that variable. If this happens double check the data and request to have the range in the database adjusted for that variable. 

After the data is bulk uploaded into the system, it will ask for some basic data relating to the data set. It will ask you location, date data uploaded, and treatments. Once this information is fill out, the bulk upload is complete.

