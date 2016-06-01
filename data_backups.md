# Data Backups

## Raw data

nightly backups to nearline storage

## BETYdb

Running every night 23:59 the script that is hosted at https://github.com/PecanProject/pecan/blob/master/scripts/backup.bety.sh.

This script will create a daily backup every day of the month. On Sundays it will create a weekly backup, on the last day of the month it creates a monthly backup and at the last day of the year it will create a yearly backup. This script will overwrite existing backups, for example every 1st of the month it will create a backup called bety-d-1 that contains the backup of the 1st of the month. See the script for the rest of the file names.

These backups are copied using crashplan to a central location and should allow us to recover in case of a catastrophic failure.
