echo "----------------------------------------------------------------------------"
Acceder="mysql -u root -p"

$Acceder -e "SHOW DATABASES;"

echo "Ingrese el nombre de la base de datos:"
read db_name

$Acceder -e "USE $db_name; SHOW TABLES;"

echo "Ingrese el nombre de la tabla:"
read table_name

$Acceder -e "USE $db_name; SELECT * FROM $table_name;"

echo "Ingresa los datos del nuevo registro:"
echo "Ingresa tu id de usuario:"
read id_usr
echo "Ingresa tu nombre:"
read nombre_usr
echo "Ingresa tu apellido paterno:" 
read apellidoP_usr
echo "Ingresa tu apellido materno:"
read apellidoM_usr
echo "Ingresa tu puesto:"
read puesto_usr
echo "Ingresa tu sueldo:"
read sueldo_usr
echo "Ingresa tu direccion:"
read direccion_usr
echo "Ingresa tu e-mail:"
read email_usr
echo "Ingresa tu telefono:"
read telefono_usr

# Insertar el nuevo registro en la tabla seleccionada
mysql -u root -p $db_name -e "INSERT INTO $table_name VALUES ('$id_usr', '$nombre_usr', '$apellidoP_usr', '$apellidoM_usr', '$puesto_usr', '$sueldo_usr', '$direccion_usr', '$email_usr', '$telefono_usr');"

# Mostrar los registros de la tabla seleccionada
mysql -u root -p $db_name -e "SELECT * FROM $table_name;"

