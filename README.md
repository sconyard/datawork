# Data work

Repository is for work in progress data scripts and tools that are being used when working with Public data APIs such as [Police Data](https://data.police.uk/)

## Tools

### PowerShell

#### CopyFilestoWorkDir.ps1

This script scans the location set in the source variable for the folder and filename patterns associated with the Police Data download for Street Crime, Outcomes and Stop and Search.

Based on pattern matching it copies files to a working directory so they can be merged ready for data import to a DB.

#### CSVFileMerge.ps1

Merges all CSV files found within a source location and merges them into a single file ready for import to a DB.
