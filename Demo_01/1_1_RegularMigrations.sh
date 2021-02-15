# Demo 01 - Getting started with Flyway migrations using Docker
# 
#   1- Create PostgreSQL container with BudgetFoods empty shell database
#   2- Connect to PostgreSQL using psql (within Docker)
#   3- Execute basic PostgreSQL commands
#   4- Review Flyway migrations folder structure
#   5- Flyway migrations using Docker containers (V1 - BudgetFoods)
#   6- Flyway migrations using Docker containers (V2 - BudgetFoods)
#   7- Check BudgetFoods schema changes
#   8- Redo migrations (all at once)
#   9- Check PostgreSQL BudgetFoods database schema
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
cd ~/Documents/Redgate-Summit/Demo_01;
FLYWAY_CONFIG_FILES=/Users/carlos/Documents/Redgate-Summit/Demo_01/ConfigFile/flyway.conf;

# Environment Cleanup 
# flyway -configFiles="./ConfigFile/flyway.conf" clean
# docker-compose down

# 1- Connect to BudgetFoods database using PgAdmin
# Container status 
docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"

# PGAdmin from web browser
open http://localhost:5050/

# 2- Connect to database using psql (within Docker) --> Optional 👀
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

# 3- Review Flyway migrations folder structure
Demo_01
├── ConfigFile
│   └── flyway.conf
└── SQLScripts
    ├── V1.1__Create-CustomerRelated-Tables.sql
    ├── V1.2__Create-ProductRelated-Tables.sql
    ├── V1.3__Create-RegionsRelated-Tables.sql
    ├── V2.1__Load-CustomerRelated-data.sql
    ├── V2.2__Load-ProductsRelated-data.sql
    └── V2.3__Load-RegionsRelated-data.sql

# Flyway config file
code ./ConfigFile/flyway.conf
echo $FLYWAY_CONFIG_FILES

# Initializing flyway
# flyway -configFiles="./ConfigFile/flyway.conf" info --> No environment variable
flyway info

# Perform migrations
flyway migrate

# Check status
flyway info