# Useful Python

csvkit includes useful tools to help simplify operations with CSV files

## How to install csvkit on a machine with python in place

csvkit can be installed by running the command below, assuming python is installed already alongside pip.  Much better information can be found from [this documentation](https://csvkit.readthedocs.io/en/0.9.1/install.html)

``` bash
pip install csvkit
```

## How to use it

csvkit includes the following resources;

``` bash
csvclean csvgrep csvlook csvsql csvcut csvjoin csvpy csvstack csvformat csvjson csvsort csvstat
```

``` bash
#For usage instructions of these scripts run --help
```

My primary usecase is to output the SQL query format required to support importing data held within a CSV file.

``` bash
./csvsql "path to csv.csv" -d ,
```

Expected output

``` sql
CREATE TABLE "tablename" (
    "Crime ID" VARCHAR NOT NULL,
    "Month" VARCHAR NOT NULL,
    "Reported by" VARCHAR NOT NULL,
    "Falls within" VARCHAR NOT NULL,
    "Longitude" DECIMAL,
    "Latitude" DECIMAL,
    "Location" VARCHAR NOT NULL,
    "LSOA code" VARCHAR,
    "LSOA name" VARCHAR,
    "Outcome type" VARCHAR NOT NULL
);
```

This query can be run against an existing DB to create the required table to support the CSV file
