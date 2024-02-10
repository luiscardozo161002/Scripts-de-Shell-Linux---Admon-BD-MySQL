echo "----------------------------------------------------------------------------"
MYSQL="mysql -u root -p"
$MYSQL<<END> /home/norasalinas/respaldo.txt
USE kaltex;
SELECT * FROM trabajador;
END
