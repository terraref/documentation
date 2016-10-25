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

1. There are four different spreadsheet templates to choose from.

   * [yields_template_by_citation_author_year_title.csv](https://docs.google.com/spreadsheets/d/1-Ry2xae14iSKQlNLkY3TzyaVd_1_wYhr_dLDgAfwjII/export?format=csv&gid=0)

       Use this template if you are uploading yields and you wish to specify the citations by author, year, and title.

   * [yields_template_by_citation_doi.csv](https://docs.google.com/spreadsheets/d/1ExLosMvX05jHWO9UYVE4Dxcl2ZbUgPc0KYoUPruaOtM/export?format=csv&gid=0)

       Use this template if you are uploading yields and you wish to specify the citations by DOI.

   * [traits_template_by_citation_author_year_title.csv](https://docs.google.com/spreadsheets/d/1TK-u-m4SG1KupYCVDUIye1C3zX8b1xgaYIG1fHNkYjs/export?format=csv&gid=0)

       Use this template if you are uploading traits and you wish to specify the citations by author, year, and title.

   * [traits_template_by_citation_doi.csv](https://docs.google.com/spreadsheets/d/1Bv4dAPKU6YDJ6yB0DC4bAmHoGxSLgKybMpTR7qBvCu0/export?format=csv&gid=0)

       Use this template if you are uploading traits and you wish to specify the citations by DOI.

   These "templates" consist of a single line of text showing a
   typical header row for a CSV file.  In the traits templates, the
   headings of the form "[trait variable 1]" or "[covariate 1]" must
   be replace with actual variable names corresponding to a trait
   variable or covariate, respectively.

   These templates show all possible columns that may be included.  In
   most cases, fewer columns will be needed and the unneeded column
   headings should be removed.  The only programmatically _required_
   headings are "yield" (for uploads of yield data), or, for uploads
   of trait data, the name of at least one recognized trait variable.
   All other data required for an upload&mdash;the citation, site,
   species, treatment, access level, and date&mdash;may all be
   specified interactively provided that they have a uniform value for
   all of the data in the file being uploaded.  (Specification of a
   cultivar is not required, but it too may be specified interactively
   if it has a uniform value for all of the data in the file.)
                  
2. It is important that text values and column names in the
spreadsheet match records in the database. This includes variable
names, site names, species and cultivar names, etc.  Note, however,
that matching is somewhat lax: the matching is done
case-insensitively, and extraneous spaces in value in the data file
are ignored.  In the case of `citation_title`, the supplied value need
only match an initial substring of the title specified in the database
as long as the combination of author, year, and the initial portion of
the title uniquely identifies a citation stored in the database.  And
in the case of species names, the letter 'x' may be used to match the
times symbol '×' used in names of hybrid species.

3. The order of columns in the data file is immaterial; in making the
template files, an arbitrary order was chosen.  But because the data
in the data file is displayed for review during the bulk upload
process, it may be that some orderings are easier to work with than
others.

4. Since commas are used to delineate columns in CSV files, and data
value containing a comma must be surrounding by double quotes.
(Single quotes are interpreted as part of the value.)  If the value
itself contains a double-quote, this double-quote must be doubled ("")
in addition to surrounding the value with double quotes.

5. Non-ASCII characters must use UTF-8 encoding.

6. There can be no blank lines in the file, either between data rows
or at the end of the file.

#### Troubleshooting.

Immediately after uploading a data file (or after specifying the
citation if this is done interactively), the Bulk Upload Wizard tries
to validate the uploaded file and displays the results of this
validation.

The types of errors one may encounter fall into roughly three categories:

1. Parsing errors

These are errors at the stage of parsing the CSV file, before the
header or data values are even checked.  An error at this stage
returns one to the file-upload page.

2. Header errors

These are errors caused by having an incongruous set of headings in
the header row.  Here are some examples:

    a. There is `citation_author` column heading without a
    corresponding `citation_year` and `citation_title` heading.  It is
    an error to use one of these headings without the other two.

    b. There is both of `citation_doi` heading and a
    `citation_author`, `citation_year`, or `citation_title` heading.
    If `citation_doi` is used, none of the other citation-related
    headings is allowed.

    c. There is an `SE` heading without an 'n' heading or vice versa.

    d. There is neither a `yield` heading nor a heading corresponding
    to a recognized trait variable.

    e. There is both a `yield` heading and a heading corresponding to
    a recognized trait variable.  A data file can be used to insert
    data into the traits table or the yields table but not both at
    once.

    f. There is a `cultivar` heading but no `species` heading.

There may be other errors associated with the header row that aren't
treated as errors as such.  For example, if you intend to supply two
trait variables per row but misspell one of them, the data in the
column headed by the misspelled variable name will simply be ignored.
That column will be grayed-out, but the file may still be used to
insert data corresponding to the "good" variable (provided there are
no other errors).

3. Value errors

Valid values will be highlighted in green.  Ignored columns will be
highlighted in gray.  (This will warn you, for example, if you have
misspelled the name of a trait variable.)  Other colors signify
various sorts of errors.  A summary of errors is shown at the top of
the page with links to rows in which the various errors occur.

Each row of the CSV file must be associated with a unique citation,
site, species, and treatment and _may_ be associated with a unique
cultivar.  These associations may either be specified in the CSV file
or, if a particular association is constant for all rows of the file,
it may be specified interactively.  If they _are_ specified in the
file, problems that may arise include:

    a. The combination of values for `citation_author`,
    `citation_year`, and `citation_title` do not uniquely identify a
    citation in the database.  (This may be because there are no
    matches or too many (i.e., more than one) matches.  (There should
    never be multiple database rows having the same combination of
    author, year, and title, but this is not currently enforced.)

    b. The value for `citation_doi` does not uniquely match a citation
    in the database.  (Again, citation DOIs _should_ be unique, but
    the database schema doesn't enforce this.)

    c. The value for `site` does not uniquely match the sitename of a
    site in the database.  (`site.sitename` _should_ be unique, but
    this again is not enforced.)

    d. The site specified in a given row is not consistent with the
    citation specified in that row.  (If you visit the "Show" page for
    the site, you should see the citation listed at the top of the
    page right under "Viewing Site".)

    e. The value for `species` does not match the value of
    `scientificname` for a unique row of the species table.
    (`species.scientificname` should be unique, but the database
    scheme doesn't currently enforce this.)

    f. The value for `treatment` does not match the value of the name
    of any treatment row in the database.

    g. The value for `treatment` in a particular row matches one or
    more treatments in the database, but none are associated with the
    citation specified by that row.

    h. The value for `treatment` in a particular row matches more that
    one treatment in the database that is associated with the citation
    specified by that row.  (This error is rare.  Names of treatments
    associated with a particular citation should be unique, but this
    is not yet enforced.)

    i. The value for `cultivar` specified in a particular row is not
    consistent with the species specified in that row.

Other value errors, not having to do with associated attributes of the
data, are as follows:

    * A value for a trait is out of range.  An obvious example would
      be giving a negative number as the value for annual yield.  If a
      variable value is flagged as being out of range, double check
      the data.  If you determine that the value is indeed correct,
      you should request to have the range in the database adjusted
      for that variable.

    * A value for the measurement date is not in the correct format or
      is out of range.

    * A value for the access level is not 1, 2, 3, or 4.

    * A value of the wrong type is given.  Examples would be giving a
      text value for `yield` or a floating point number for `n`.

