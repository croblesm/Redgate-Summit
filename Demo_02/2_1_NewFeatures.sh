# Demo 01 - Regular migrations
# 
#   1- Connect to BudgetFoods database using PgAdmin
#   2- Connect to database using psql (within Docker) --> Optional 👀
#   3- Review Flyway migrations folder structure
#   4- Perform regular migration
# -----------------------------------------------------------------------------
# Reference:
#   https://flywaydb.org/documentation/
#   https://github.com/flyway/flyway-docker
#   https://hub.docker.com/r/flyway/flyway
#   https://github.com/pthom/northwind_psql
#
# JDBC URL
# PostgreSQL:       jdbc:postgresql://<host>:<port>/<database>?<key1>=<value1>&<key2>=<value2>

# 0- Env variables | demo path
cd ~/Documents/Redgate-Summit/Demo_02;
export FLYWAY_CONFIG_FILES=/Users/carlos/Documents/Redgate-Summit/Demo_01/ConfigFile/flyway.conf;

# Environment Cleanup 
# flyway -configFiles="./ConfigFile/flyway.conf" clean
# docker-compose down

# 1- Filtering info output
# Regular migration info
flyway info

# Date ranges
flyway info -infoSinceDate="02/18/2021 09:00"
flyway info -infoUntilDate="02/17/2021 09:00"

# Specific version
flyway info -infoSinceVersion="2.3"
flyway info -infoUntilVersion="1.3"

# Specific state
flyway info -infoOfState="Undone"
flyway info -infoOfState="Pending"

# Combining filters with JSON outpout 👍
flyway info -outputType=json -infoOfState="Pending"

# 2- Updating configuration
# Change config file configuration
# Remove existing config file
unset FLYWAY_CONFIG_FILES

# Set new config file
export FLYWAY_CONFIG_FILES=/Users/carlos/Documents/Redgate-Summit/Demo_02/ConfigFile/flyway.conf;

# 3- Review and perform migrations
# Review sql migrations
Demo_02
└── SQLScripts
    ├── Repeatable
    │   ├── R_RegionsView.sql
    │   ├── R__ContinentsView.sql
    │   ├── R__CountriesContinent-RegionCodeView.sql
    │   ├── R__CountriesContinent-RegionView.sql
    │   ├── R__CountriesContinentView.sql
    │   ├── R__CountriesRegion.sql
    │   ├── R__CountriesView.sql
    │   └── R__RegionsContinentsView.sql
    ├── Undo
    │   ├── U1.1__Drop-ContinentsTable.sql
    │   ├── U1.2__Drop-RegionsTable.sql
    │   ├── U1.3__Drop-CountriesTable.sql
    │   ├── U2.1__Delete-Continents-TableData.sql
    │   ├── U2.2__Delete-Regions-TableData.sql
    │   └── U2.3__Delete-Countries-TableData.sql
    └── Versioned
        ├── V1.1__Create-ContinentsTable.sql
        ├── V1.2__Create-RegionsTable.sql
        ├── V1.3__Create-CountriesTable.sql
        ├── V2.1__Load-Continents-TableData.sql
        ├── V2.2__Load-Regions-TableData.sql
        └── V2.3__Load-Countries-TableData.sql

# Perform migrations
flyway migrate

# 4- Application improvements

# New Feature to show information about all lakes around the globe, including a description, its dimensions and water quality
# ~ 117 millions of rows
code./CherryPick/V3.1__Create-LakesTable.sql
code./CherryPick/R__LakesView.sql
code./CherryPick/V3.2__Load-Lakes-TableData.sql

# Copy scripts from Cherry Pick to SQLScripts/Versioned folder
cp ./CherryPick/V3.1__Create-LakesTable.sql ./SQLScripts/Versioned/V3.1__Create-LakesTable.sql
cp ./CherryPick/V3.2__Load-Lakes-TableData.sql ./SQLScripts/Versioned/V3.2__Load-Lakes-TableData.sql

# 5- Enable cherry pick
# Modify flyway config file
code ./ConfigFile/flyway.conf

# Check config file environment variable
cat $FLYWAY_CONFIG_FILES

# 6- Perform cherry pick migrations
# Excluding long running migration
flyway migrate -cherryPick="3.1,LakesView"

# Later during the day
# Including long running migration only, out of order
cp ./CherryPick/R__LakesView.sql ./SQLScripts/Repeatable/R__LakesView.sql
code ./SQLScripts/Repeatable/R__LakesView.sql

# Perform migration
flyway migrate -cherryPick="3.2"

# 7- Hot-fix synchronization

# Missing flags picture, adding column manually
# PGAdmin from web browser
open http://localhost:5050/

# Migrations synchronization
# Copy scripts from Hotfix to SQLScripts/Versioned folder
cp ./Hotfix/V4.1__Add-FlagColumn-CountriesTable.sql ./SQLScripts/Versioned/V4.1__Add-FlagColumn-CountriesTable.sql
cp ./Hotfix/V4.2__Load-CountryFlags-TableData.sql ./SQLScripts/Versioned/V4.2__Load-CountryFlags-TableData.sql

# Perform migration, skipping execution
flyway migrate -skipExecutingMigrations=true

# Check migrations state
flyway info