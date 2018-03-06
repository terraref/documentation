# Data Backups

## Raw data

Running nightly on ROGER.

Script is hosted at: /gpfs/smallblockFS/home/malone12/terra_backup

Script uses the Spectrum Scale policy engine to find all files that were modified the day prior, and passes that list to a job in the batch system. The job bundles the files into a .tar file, then uses pigz to compress it in parallel across 18 threads. Since this script is run as a job in the batch system, with variables passed with the date, if the batch system is busy, the backups won't need to preclude each other. The .tgz files are then sent over to NCSA Nearline using Globus, then purged from file system.

## BETYdb

Runs every night at 23:59.  [View the script](https://github.com/PecanProject/pecan/blob/master/scripts/backup.bety.sh).

This script creates a daily backup every day of the month. On Sundays creates a weekly backup, on the last day of the month it creates a monthly backup and at the last day of the year it will create a yearly backup. This script overwrite existing backups, for example every 1st of the month it will create a backup called bety-d-1 that contains the backup of the 1st of the month. See the script for the rest of the file names.

These backups are copied using crashplan to a central location and should allow recovery in case of a catastrophic failure.

## See Also

* https://github.com/terraref/computing-pipeline/issues/87
* https://github.com/terraref/computing-pipeline/issues/384
