# Postgres DB to hold extracted data

There are approximately 500,000 crimes reported every month across all regional police forces in the UK.  Whilst we can extract this public data using the [police public API](https://data.police.uk/), interrogating and querying this information from a CSV file is impractical.  It is for this reason I've created and am using a postgres DB to hold this information.

## Postgres and Docker

Postgres is available as a [Docker image](https://hub.docker.com/_/postgres)

``` bash
docker pull postgres
```

Run postgres inside a docker container, substituting the password for a secure value

``` bash
docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=password -d postgres
```

## Postgres DB management

There are a few options for DB management either via a graphical or command line interface

pgcli is available for the command line

``` bash
brew install pgcli
```

``` bash
pgcli -h localhost =p 5432 -U postgres -W -d dbname
```

[pgAdmin](https://www.pgadmin.org/download/) for graphical management

Any data you are working with needs a home so create a blank DB to house that data and use the csvkit tools to create the required tables.
