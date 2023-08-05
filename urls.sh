IP=$(curl -s checkip.amazonaws.com)
echo ""
echo "URLs do projeto:"
echo ""
echo " - PHPMYADMIN         : http://$IP:8082"
echo ""
echo " - SUPERSET UI        : http://$IP:8088    (login = fiap, password = fiap)"
echo ""
