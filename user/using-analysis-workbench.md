# Using the Analysis Workbench

### About the Analysis Workbench

The Analysis Workbench allows you to launch private Jupyter Notebook and RStudio instances to explore and analyze TERRA-REF data products.

### Requesting Access

To create an account, sign up at the TERRA-REF [Analysis Workbench](http://www.terraref.ndslabs.org/) site and wait for your account to be approved. Once access is granted, you can launch analysis environments.

### Scratch Space

Each user has a "home" directory mounted into the analysis tools under /home/userid. This is read-write scratch space.

### **Data Access**

Data access is provided via a read-only NFS mount to the TERRA-REF dataset on ROGER. The data is mounted to each container under /data/terraref and linked to the analysis environment working directory. For example, in Jupyter this is /home/jovyan/work/data.





