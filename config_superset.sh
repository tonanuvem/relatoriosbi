# Setup your local admin account

docker exec -it superset_app superset fab create-admin \
              --username fiap \
              --firstname Superset \
              --lastname fiap \
              --email admin@admin.com \
              --password fiap

# Migrate local DB to latest

docker exec -it superset_app superset db upgrade

#Load Examples
# docker exec -it superset_app superset load_examples

# Setup roles

docker exec -it superset_app superset init
