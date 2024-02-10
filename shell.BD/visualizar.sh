echo "----------------------------------------------------------------------------"
Acceder="mysql -u root"
$Acceder<<END
USE kaltex;
SELECT * FROM trabajador;
END
