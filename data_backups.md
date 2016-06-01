# Data Backups

## Raw data

Each night, new data on ROGER is archived to the nearline tape server. 

## BETYdb
 
The script [backup.bety.sh](https://github.com/PecanProject/pecan/blob/master/scripts/backup.bety.sh) creates a full backup of the database every day at one minute before midnight (23:59).

This script will create a daily backup every day of the month. On Sundays it will create a weekly backup, on the last day of the month it creates a monthly backup and at the last day of the year it will create a yearly backup. This script will overwrite existing backups, for example every 1st of the month it will create a backup called bety-d-1 that contains the backup of the 1st of the month. See the script for the rest of the file names.

These backups are copied using crashplan to a central location and should allow us to recover in case of a catastrophic failure.
