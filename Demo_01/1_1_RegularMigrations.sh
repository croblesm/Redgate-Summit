# Demo 01 - Regular migrations
# 
#   1- Connect to BudgetFoods database using PgAdmin
#   2- Review Flyway migrations folder structure
#   3- Flyway migration example
# -----------------------------------------------------------------------------
# Reference:
#   https://flywaydb.org/documentation/
#   https://flywaydb.org/documentation/usage/commandline/
#
# PostgreSQL JDBC connection string:       
# jdbc:postgresql://<host>:<port>/<database>?<key1>=<value1>&<key2>=<value2>
#

# 0- Env variables | demo path
cd ~/Documents/Redgate-Summit/Demo_01;
export FLYWAY_CONFIG_FILES=/Users/carlos/Documents/Redgate-Summit/Demo_01/ConfigFile/flyway.conf;

# Environment Cleanup 
# flyway -configFiles="./ConfigFile/flyway.conf" clean
# docker-compose down

# 1- Connect to BudgetFoods database
# PostgreSQL running on a container 🐘 🐳
# Container status 
docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"

# Use PGAdmin from local web browser
open http://localhost:5050/

# Connect to database using psql (within Docker) --> Optional 👀
docker exec -it BudgetFoods-PG psql -U postgres -d BudgetFoods

# List all databases
# psql command: \list | \l
SELECT datname FROM pg_database;

# List all tables in BudgetFoods     
# psql command: \dtables | \dt
SELECT table_name FROM information_schema.tables where table_schema ='public';

# Exit psql session
# psql command: \quit | \q
quit;

# 2- Review Flyway migrations folder structure
Demo_01
├── ConfigFile
│   └── flyway.conf
└── SQLScripts
    ├── Repeatable
    ├── Undo
    │   ├── U1.1__Drop-CustomerRelated-Tables.sql
    │   ├── U1.2__Drop-ProductRelated-Tables.sql
    │   ├── U1.3__Drop-RegionsRelated-Tables.sql
    │   ├── U2.1__Delete-CustomerRelated-data.sql
    │   ├── U2.2__Delete-ProductsRelated-data.sql
    │   └── U2.3__Delete-RegionsRelated-data.sql
    └── Versioned
        ├── V1.1__Create-CustomerRelated-Tables.sql
        ├── V1.2__Create-ProductRelated-Tables.sql
        ├── V1.3__Create-RegionsRelated-Tables.sql
        ├── V2.1__Load-CustomerRelated-data.sql
        ├── V2.2__Load-ProductsRelated-data.sql
        └── V2.3__Load-RegionsRelated-data.sql

# Flyway config file
code ./ConfigFile/flyway.conf
echo $FLYWAY_CONFIG_FILES

# 3- Flyway migration example
# Initializing flyway
# flyway -configFiles="./ConfigFile/flyway.conf" info --> No environment variable
flyway info

# Perform migrations
flyway migrate

# Check status
flyway info

# Undo last migration
flyway undo