# Using BETYdb

[**BETYdb**](https://terraref.ncsa.illinois.edu/bety/) contains plot locations
and other geolocations of interest (e.g. fields, rows, plants) that are
associated with agronomic experimental design / meta-data (what was planted
where, field boundaries, treatments, etc).

**You must create an account to use
  [BETYdb](https://terraref.ncsa.illinois.edu/bety/)**

### Using the Advanced Search box

Most tables in BETYdb have search boxes; for example,
https://betydb.org/citations and https://betydb.org/sites. We describe below how
to query these tables and download the results as CSV, JSON, or XML. The
Advanced Search box is the easiest way to download summary datasets designed to
have enough information (location, time, species, citations) to be useful for a
wide range of use cases.

### Using the Search Box

On the Welcome page of BETYdb there is a search option for trait and yield data
(<span style="color: red">Fix this --></span> Figure \ref{fig:textsearch}). This
tool allows users to search the entire collection of trait and yield data for
specific sites, citations, species, and traits.

The _results_ page provides a map interface and the option to download a file
containing search results.  The downloaded file is in CSV format. This file
provides meta-data and provenance information, including the SQL query used to
extract the data, the date and time the query was made, the citation source of
each result row, and a citation for BETYdb itself.

#### Instructions

Using the search box to search trait and yield data is very simple: Type the
site (city or site name), species (scientific or common name), cultivar, citation (author
and/or year), or trait (variable name or description) into the search box and
the results will show contents of BETYdb that match the search. The number of
records per page can be changed to accord with the viewer's preference and the
search results can be downloaded in the Excel-compatible CSV format.

The _search map_ may be used in conjunction with search terms to restrict search
results to a particular geographical area&mdash;or even a specific site&mdash;by
clicking on a map. Clicking on a particular site will restrict results to that
site. Clicking in the vicinity of a group of sites but not on a particular site
will restrict the search to the region around the point clicked. Alternatively,
if a search using search terms is done without clicking on the map, all sites
associated with the returned results are highlighted on the map.  Then, to zero
in on results for a particular geographic area, click on or near highlighted
locations on the map.

[More information on using BETYdb](https://pecan.gitbooks.io/betydb-data-access/content/)

[Extracting information from figures](https://pecan.gitbooks.io/betydbdoc-dataentry/content/Extracting%20Data%20From%20Figures.html)
