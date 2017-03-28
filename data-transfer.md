![](/assets/Transfer.jpg)\#Data Transfer

### Maricopa Agricultural Center, Arizona

Environmental Sensors  
Log of files transfered from Arizona to  log:  
\[[http://http://terra-logging.ncsa.illinois.edu:3000](http://http://terra-logging.ncsa.illinois.edu:3000)\] 

**Transferring images**

Data is sent to the gantry-cache server located inside the main UA-MAC building's telecom room via FTP over a private 10GbE interface.  Path to each file being transferred is logged to /var/log/xferlog.  Docker container running on the gantry-cache reads through this log file, tracking the last line it has read and scans the file regularly looking for more lines.  File paths are scraped from the log and are bundled into groups of 500 to be transferred to the Spectrum Scale file systems that backs the ROGER cluster at NCSA via the Globus Python API.  The log file is rolled daily and compressed to keep size in check.  Sensor directories on the gantry-cache are white listed for being monitored to prevent accidental or junk data from being ingested into the Clowder pipeline.

A Docker container in the terra-clowder VM running in ROGER's Openstack environment gets pinged about incoming transfers and watches for when they complete, once completed the same files are queued to be ingested into Clowder.

Once files have been successfully received by the ROGER Globus endpoint, the files are then removed from the gantry-cache server by the Docker container running on the gantry-cache server.  A clean up script walks the gantry-cache daily looking for files older than two days that have not been transferred and queues any if found.

---

### Automated controlled-environment phenotyping, Missouri

**Transferring images**

Processes at Danforth monitor the database repository where images captured from the Scanalyzer are stored. After initial processing, files are transferred to NCSA servers for additional metadata extraction, indexing and storage.

At the start of the transfer process, metadata collected and derived during Danforth's initial processing will be pushed.

The current "beta" Python script can be viewed [on GitHub](https://github.com/terraref/computing-pipeline/blob/master/scripts/PlantcvClowderUploader.py). During transfer tests of data from Danforth's sorghum pilot experiment, 2,725 snapshots containing 10 images each were uploaded in 775 minutes \(3.5 snapshots\/minute\).

**Transfer volumes**

The Danforth Center transfers approximately X GB of data to NCSA per week.

---

### Kansas State University

---

### HudsonAlpha - Genomics



