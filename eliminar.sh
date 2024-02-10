echo "----------------------------------------------------------------------------"
Acceder="mysql -u root -p"

# Mostrar las bases de datos disponibles
$Acceder -e "SHOW DATABASES;"

# Solicitar al usuario que ingrese el nombre de la base de datos
echo "Ingrese el nombre de la base de datos:"
read db_name

# Mostrar las tablas disponibles en la base de datos seleccionada
$Acceder -e "USE $db_name; SHOW TABLES;"

# Solicitar al usuario que ingrese el nombre de la tabla
echo "Ingrese el nombre de la tabla:"
read table_name

# Mostrar la tabla seleccionada por el usuario
$Acceder -e "USE $db_name; SELECT * FROM $table_name;"

# Solicitar al usuario que ingrese los datos del nuevo registro
echo "Ingresa tu id de usuario:"
read id_usr

# Insertar el nuevo registro en la tabla seleccionada
$Acceder $db_name -e "DELETE FROM $table_name WHERE id_usuario='$id_usr';"

# Mostrar los registros de la tabla seleccionada
$Acceder $db_name -e "SELECT * FROM $table_name;"
