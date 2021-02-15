# Demo 00 - Creating demo environment
# 
#   1- Check docker compose file
#   2- Initiate demo environment with Docker compose
#   3- Check all components (containers, network, volumes)
#   4- Destroy demo environment
# -----------------------------------------------------------------------------
# Reference:
#   https://flywaydb.org/documentation/
#   https://github.com/flyway/flyway-docker
#   https://hub.docker.com/r/flyway/flyway
#   https://github.com/pthom/northwind_psql
#

# 0- Env variables | demo path
cd ~/Documents/Redgate-Summit/Demo_00;

# 1- Check docker compose file
code ./docker-compose.yml

# 2- Initiate environment
docker-compose up

# 3- Check all components (containers, network, volumes)
docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"
docker network ls
docker volume ls

# 4- Destroy environment
docker-compose down