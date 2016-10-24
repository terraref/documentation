# Submitting Data to BETYdb

BETYdb is a database used to centralize data from research done in all TERRA
projects.  (It is also the name of the Web interface to that database.)
Uploading data to BETYdb will allow everyone on the team access to research done
on the TERRA project.

## Preliminary steps

Before submitting data to BETYdb, you must first have an account.

1. Go to the [**BETYdb**](https://terraref.ncsa.illinois.edu/bety/) homepage.

1. Click the Register for BETYdb button to create an account.  If you plan to
submit data, be sure to request "Creator" page access level when filling out the
sign-up form.

1. Understand how the database is organized so your data can be searchable.  Do
this by exploring the data using the Data Tab (see next section).


### Exploring the data

The Data tab contains a menu for searching the database for different types of
data.  The Data tab is also the pathway to pages allowing you to submit new data
of your own to upload if what you search for isn't already uploaded.  But if you
have trait or yield data you wish to submit, you will likely want to use the
Bulk Upload wizard (see below).

For example, try clicking the Data tab and selecting **Citations**, the first
menu item.  A page with a list of citations that have already been uploaded into
the system appears.

Citations are listed by the **_first author's last name_**.  For example a Journal
article written by Andrew Davis and Kerri Shaw would have the name "Davis" in
the author slot.

Use the search box located in the top right corner of each page to search for
citations by author, year, title, journal, volume, page, URL, or DOI.  Note that
the search string must exactly match a substring of the value of one of these
items (though the matching is case-insensitive).

Each of the other collections listed in the Data menu may be searched similarly.
 For example, on the **Cultivars** page you can search cultivars in the system by
 searching for them by any of several facets pertaining to cultivars, including
 the name, ecotype, associated species, even the notes.  Keep in mind that when
 switching to a new Data menu item (such as Cultivars), the resulting page will
 initially show all items of the type selected that are currently on file.  (More
 precisely, since results are paginated, it will show the first twenty-five of
 those results.)

### Preparing for bulk upload of data

The Bulk Upload wizard expects data in CSV format with one row for each set of
associated data items.  ("Associated data items" usually means a set of
measurements made on the same entity at the same time.)  Each trait or yield
data item must be associated with a citation, site, species, and treatment and
_may_ be associated with a specific cultivar of the associated species.  Before
you can upload data from a data file, this associated citation, site, species,
cultivar, and treatment information must already be in place.

Moreover, if you are uploading _trait_ data, there must be one or more trait
variable columns (and optionally, one or more covariate variable columns) and
the names of these columns must match the names of existing variables.  (See the
discussion of variables below.)

#### Details on adding associated data

There is no bulk upload process for adding citations, site, species, cultivars,
treatment, and variables to the database.  They must be added one at a time
using Web forms.  Since most often a set of dozens or hundreds of traits is
associated with a single citation, site, or species (etcetera), usually this is
not an undue burden.

Details on checking that items of each particular type exist (and adding them if
they don't) follow:

**Citations:** To check that the needed citations exist, go to the citations
  listing by clicking _Citations_ in the _Data_ menu.  Search for your
  citation(s) to determine if all citations associated with your data already
  exist.  If they don't, then create new citations as needed.  Be sure to fill
  in all the required data; author, year, and title are _required_; if at all
  possible, include the journal name, volume, page numbers, and DOI.

**Sites:** Go to the _Data_ tab and click on the _Sites_ to verify that all
  sites in your data file are listed on the Sites page. If any of your sites
  are not already in the system, you will need to add them to the database.  To
  do this, first search the citations list for the associated citation, select
  it (by clicking the checkmark in the row where it is listed) and then click
  the New Site button.  A new site _must_ have a name, but if possible, supply
  other information—the city, state, and country where the site is located, the
  latitude, longitude, and altitude of the site, and if possible, climate and
  soil data.

  It is possible that sites referenced by your data are already in the database
  but that they aren't yet associated with the citation associated with that data.
  To see the set of sites associated with a given citation, find the citation in
  the citations list and select it by clicking the checkmark in its row.  This
  will take you to the _site list_ page, and all of the sites associated with the
  selected citation (if any) will be listed at the top.  To associate another site
  with the selected citation, enter its name in the search box, find the row
  containing it, and click the "Link" action in that row.

**Treatments:** The treatment specified for each of your data items must not
  only match the name of an existing treatment, it must also be associated with
  the citation for the data item.  To see the list of treatments associated with
  a particular citation, select the citation as in the instructions for _Sites_.
  Then click "Treatments" link on the "Listing Sites" page.  The top section of
  this page lists all treatments associated with the selected citation.

  Currently, there is no way to associate an arbitrary treatment with a citation
  via the Web interface.  You will either have to make a new treatment with the
  desired name (after the desired citation has been selected), or you will have
  to (or have and administrator) modify the database directly.

**Species:** To check that the needed species entries exist, go to the
  the species listing by clicking _Species_ in the _Data_ menu.
  Search for each of the species required by your data.  The species
  entry in the CSV file must match the scientific name of the species
  listed in the database.  If necessary, add any species in your data
  that has not yet been added to the database.  When adding a species,
  `scientificname` is the only _required_ field, but the genus and
  species fields _should_ be filled out as well.

**Cultivars:** If your data lists cultivars, you should check that
  these are in the database as well.  Cultivar names are not
  necessarily unique, but they are unique within a given species.  To
  check whether a cultivar matching the name and species listed in
  your CSV file has been added to the database, go to the cultivar
  listing by clicking _Cultivars_ in the _Data_ menu.  Searching
  either by species name or cultivar name, you should quickly be able
  to see if the needed cultivar exists.  If it needs to be added,
  click the "New Cultivar" button.  Fill in the species search box
  with enough of the species name to narrow down the result list to a
  workable size, and then select the correct species from the result
  list immediately below the search box.  Then type the name of the
  cultivar you with to add in the _Name_ field.  The Ecotype and Notes
  sections are optional.

**Variables:** If you are submitting trait data, verify that the variables
  associated with each trait and each covariate match the names of variables in
  the system (for example, `canopy_height`, `hull_area`, `solidity`).  To do
  this, go to the _Data_ tab and click on _Variables_.  If any of your
  variables are not already in the system, you will need to add them.


  For a variable to be recognized as a trait variable or covariate, it is not
  enough for it simply to be in the `variables` table; it must also be in the
  `trait_covariate_associations` table.  To check with variables will be
  recogized as trait variable or covariates, click on _Bulk Upload_ tab.  Then
  click the link "View List of Recognized Traits".  This will bring up a table
  listing all names of variables recognized as traits and the names of all
  variables recognized as required or optional covariates for each trait.  If
  you need to add to this table and do not have direct access to the underlying
  database to which you are submitting data, you will need to e-mail the site
  adminstrator to request additions.


# The Bulk Upload Wizard

Once you have entered all the necessary data to prepare for a bulk upload, you can then begin the bulk upload process. 

There are some key rules for bulk uploading:

1. There are 3 different spreadsheet templates to choose from.

   * [yields.csv](https://docs.google.com/spreadsheets/d/1maK1uKr6i9KERaYdU5zSiXcBndQoiG4Vgn2DTnqdfbA/export?format=csv&gid=0)

   * [yields_by_doi.csv](https://docs.google.com/spreadsheets/d/1ExLosMvX05jHWO9UYVE4Dxcl2ZbUgPc0KYoUPruaOtM/export?format=csv&gid=0)

   * [traits.csv](https://docs.google.com/spreadsheets/d/1TK-u-m4SG1KupYCVDUIye1C3zX8b1xgaYIG1fHNkYjs/export?format=csv&gid=0)

   * [traits_by_doi.csv](https://docs.google.com/spreadsheets/d/1Bv4dAPKU6YDJ6yB0DC4bAmHoGxSLgKybMpTR7qBvCu0/export?format=csv&gid=0)
                  
2. It is important that text values and column names in the
spreadsheet match records in the database. This includes variable
names, site names, species and cultivar names, etc.

3. Pick the template that best matches your data set and organize the
data in the excel sheet to include all the required info.

4. Organize the data in the proper order and bulk upload.


Sometimes there are issues that arise when trying to bulk upload. It
is important to read what the system is telling you the problem is and
fix the problem.

One of the most common errors is improper column name in the excel
sheet that doesn't match what the system has for that
variable. Another frequently made mistake is that the data for the
variables in the excel sheet is out of range for that variable. If
this happens double check the data and request to have the range in
the database adjusted for that variable.

After the data is bulk uploaded into the system, it will ask for some
basic data relating to the data set. It will ask you location, date
data uploaded, and treatments. Once this information is fill out, the
bulk upload is complete.

