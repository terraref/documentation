# BETYdb Bulk Upload

Basics of Primary Data Upload


1. Go to the **BETYdb** homepage.
2. On the homepage, there are tabs at the top of the page. (Data, Docs, Runs, Model I/O, Bulk Upload)  
3. When uploading data, the two tabs that have most of what's needed for data upload are the **Data Tab** and the **Bulk Upload Tab**. 

**NEED SCREENSHOT** or just link / merge with data entry workflow

## "Data" Tables

The "Data" tab links to tables containing plant trait and yield data as well as meta-data. 
Each of these tables provides an interface that allows users to search the entire database as well as investigate and edit (with permission) individual records. The Data entry workflow documentation describes how to use these tables to enter data. 

Scroll down on the **data tab** and click on **citations**. A page with a list of citations that are already uploaded into the system appears. 

Citations go by the **first authors last name**.  (For example a Journal article written by Andrew Davis and Kerri Shaw would have the name "Davis" in the author slot.) 

Use the search menu located in the top right corner of each page to search for citations by Author, Year, Title, Journal, Vol, Page, or URL.

*This is also the case for any other tab*
 **(For example in the cultivars tab you can search cultivars in the system by searching for them by any factors it is organized.) 
 (Such as Species, Previous ID, Name, Ecotype)** 
 Keep in mind that when clicking on a new tab (such as cultivars)the database will show all the cultivars of the citations it has on file. 


# Now that you know how to find data already in the system...

You can take the next steps towards uploading your data into the system. 

# Data Upload Before the Bulk Upload:

The initial step you want to take when uploading data is to make sure your citation for the data exists. 
Search for your citation and if it doesn't already exist in the system then create a new citation. Make sure to fill in all the required data.( Author, Year, Title, Journal, Vulome, Pg., Doi)

The reason for this is because all the data you enter after this point will tie to a certain citation. You will want to make sure that the citation entered properly.

Now, to prepare for **bulk upload**, you will want to go to the **Data** tab and click on the **Sites**. You'll want to verify that all your sites on your excel sheet are also on the sites page, and spelled the same on both. You will want to verify this for variables as well. Make sure to verify that all the variables on your excel sheet match what the system has for variables. 

If there is any data on the excel sheet that is not also in the system, you will need to enter that data. (Site name, LAI, traits, variables) 

Once all the data is entered properly, you can go ahead and click on the **Bulk Upload** tab. 


# Bulk Upload 

Once you have entered all the necessary data to prepare for a bulk upload, you can then begin the bulk upload process. 

There are some key rules for bulk uploading.

1. There are 3 different spreadsheet templates to choose from.
  * [yields.csv](https://docs.google.com/spreadsheets/d/1maK1uKr6i9KERaYdU5zSiXcBndQoiG4Vgn2DTnqdfbA/export?format=csv&gid=0)
  * [yields\_by\_doi.csv](https://docs.google.com/spreadsheets/d/1ExLosMvX05jHWO9UYVE4Dxcl2ZbUgPc0KYoUPruaOtM/export?format=csv&gid=0)
  * [traits.csv](https://docs.google.com/spreadsheets/d/1TK-u-m4SG1KupYCVDUIye1C3zX8b1xgaYIG1fHNkYjs/export?format=csv&gid=0)


2. It is important that text values and column names in the spreadsheet match records in the database. This includes variable names, site names, species and cultivar names, etc.

3. Pick the template that best matches your data set and organize the data in the excel sheet to include all the required info. 
4. Organize the data in the proper order and bulk upload.


Sometimes there are issues that arise when trying to bulk upload. It is important to read what the system is telling you the problem is and fix the problem. 

One of the most common errors is improper column name in the excel sheet that doesn't match what the system has for that variable. Another frequently made mistake is that the data for the variables in the excel sheet is out of range for that variable. If this happens double check the data and request to have the range in the database adjusted for that variable. 

After the data is bulk uploaded into the system, it will ask for some basic data relating to the data set. It will ask you location, date data uploaded, and treatments. Once this information is fill out, the bulk upload is complete.

