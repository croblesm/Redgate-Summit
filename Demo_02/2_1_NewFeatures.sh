# Demo 02 - Flyway v7 - New features
# 
#   1- Filtering info output from previous migrations
#   2- Changing target database (updating config file)
#   3- Review and perform Flyway migrations
#   4- World Globe application - New feature scenario
#   5- Enable out of order migrations
#   6- Perform cherry pick migrations
#   7- World Globe application - Hot-fix scenario
#   8- Manual change
#   9- Generate script and synchronize migrations
#   10- Perform migration, skipping execution
# -----------------------------------------------------------------------------
# Reference:
#   https://flywaydb.org/documentation/
#   https://flywaydb.org/documentation/learnmore/releaseNotes
#

# 0- Env variables | demo path
cd ~/Documents/Redgate-Summit/Demo_02;
export FLYWAY_CONFIG_FILES=/Users/carlos/Documents/Redgate-Summit/Demo_01/ConfigFile/flyway.conf;

# Environment Cleanup 
# flyway -configFiles="./ConfigFile/flyway.conf" clean
# docker-compose down

# 1- Filtering info output from previous migrations
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

# 2- Changing target database (updating config file)
# Change config file configuration
# Remove existing config file
unset FLYWAY_CONFIG_FILES

# Set new config file
export FLYWAY_CONFIG_FILES=/Users/carlos/Documents/Redgate-Summit/Demo_02/ConfigFile/flyway.conf;

# 3- Review and perform Flyway migrations
# Review sql scripts
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

# 4- World Globe application - New feature scenario

# World Globe v3 - New Feature:
# Add information about all exiting lakes around the world. Including a short description, its dimensions and water quality
# 3 SQL migrations: 1 table, 1 view and ~117 millions of rows 🧐

# SQL migrations
code./CherryPick/V3.1__Create-LakesTable.sql
code./CherryPick/R__LakesView.sql
code./CherryPick/V3.2__Load-Lakes-TableData.sql

# Copy scripts from Cherry Pick to SQLScripts/Versioned folder
cp ./CherryPick/V3.1__Create-LakesTable.sql ./SQLScripts/Versioned/V3.1__Create-LakesTable.sql;
cp ./CherryPick/R__LakesView.sql ./SQLScripts/Repeatable/R__LakesView.sql;

# 5- Enable out of order migrations
# Modify flyway config file
code ./ConfigFile/flyway.conf

# Check config file environment variable
cat $FLYWAY_CONFIG_FILES

# 6- Perform cherry pick migrations
# Excluding long running migration
flyway migrate -cherryPick="3.1,LakesView"

# Later during the day
# Including long running migration only, out of order
cp ./CherryPick/V3.2__Load-Lakes-TableData.sql ./SQLScripts/Versioned/V3.2__Load-Lakes-TableData.sql

# Perform migration
flyway migrate -cherryPick="3.2"
flyway info

# 7- World Globe application - Hot-fix scenario

# World Globe v4 - Hot-fix:
# A developer found that there is a column in the countries table. The developer added the column manually

# 8- Manual change 🧐
# PGAdmin from web browser
open http://localhost:5050/

# 9- Generate script and synchronize migrations
# Copy scripts from Hotfix to SQLScripts/Versioned folder
cp ./Hotfix/V4.1__Add-FlagColumn-CountriesTable.sql ./SQLScripts/Versioned/V4.1__Add-FlagColumn-CountriesTable.sql;
cp ./Hotfix/V4.2__Load-CountryFlags-TableData.sql ./SQLScripts/Versioned/V4.2__Load-CountryFlags-TableData.sql;

# 10- Perform migration, skipping execution
flyway migrate -skipExecutingMigrations=true

# Check migrations state
flyway info