# Liberando a porta no caso de rodar no Cloud9
sudo service mysql stop

#chmod 755 postgres_init_database.sh

docker-compose up -d

echo ""
echo "Aguardando a configuração."
while [ "$(docker logs superset_superset_1 2>&1 | grep "start" | wc -l)" != "1" ]; do
  printf "."
  sleep 1
done
echo ""
sh config_superset.sh
echo "Config OK"
IP=$(curl -s checkip.amazonaws.com)
echo ""
echo "URLs do projeto:"
echo ""
echo " - SUPERSET UI        : $IP:8088"
echo ""