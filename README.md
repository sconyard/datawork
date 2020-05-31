# Data work

This repository houses a collection of resources, tools and work in progress that are being used to provide insight to Public [Police Data](https://data.police.uk/) API.  The resources could equaly be used to perform analysis of any data set, including those UK public sets available via [data.gov.uk](https://data.gov.uk/).

Resources are provided here without any support or maintenence.

## Tools

### PowerShell

#### CopyFilestoWorkDir.ps1

This script scans the location set in the source variable for the folder and filename patterns associated with the Police Data download for Street Crime, Outcomes and Stop and Search.

Based on pattern matching it copies files to a working directory so they can be merged ready for data import to a DB.

#### CSVFileMerge.ps1

Merges all CSV files found within a source location and merges them into a single file ready for import to a DB.

### csvkit

[Csvkit](https://csvkit.readthedocs.io/en/0.9.1/index.html) is a suite of utilities for converting to and working with CSV, the king of tabular file formats.

### postgres

[Postgres](https://www.postgresql.org/) is an opensource DB platform used to house both the extracted data and the application backend for metabase

### Metabase

[Metabase](https://www.metabase.com/docs/latest/users-guide/01-what-is-metabase.html) is an open source business intelligence tool. It lets you ask questions about your data, and displays answers in formats that make sense, whether that’s a bar graph or a detailed table.
