echo "----------------------------------------------------------------------------"
Acceder="mysql -u root -p"

$Acceder -e "SHOW DATABASES;"

echo "Ingrese el nombre de la base de datos:"
read db_name

$Acceder -e "USE $db_name; SHOW TABLES;"

echo "Ingrese el nombre de la tabla:"
read table_name

$Acceder -e "USE $db_name; SELECT * FROM $table_name;"

echo "Ingrese el ID del registro a actualizar:"
read id

count=$($Acceder -se "USE $db_name; SELECT COUNT(*) FROM $table_name WHERE Id_usuario='$id';")

if [ "$count" -eq 1 ]
then
	echo "Ingresa los datos del nuevo registro:"
	echo "Ingresa tu id de usuario:"
	read id
	echo "Ingresa tu nombre:"
	read nombre
	echo "Ingresa tu apellido paterno:" 
	read apellidoP
	echo "Ingresa tu apellido materno:"
	read apellidoM
	echo "Ingresa tu puesto:"
	read puesto
	echo "Ingresa tu sueldo:"
	read sueldo
	echo "Ingresa tu direccion:"
	read direccion
	echo "Ingresa tu e-mail:"
	read email
	echo "Ingresa tu telefono:"
	read telefono

    $Acceder -e "USE $db_name; UPDATE $table_name SET nombre='$nombre', A_paterno='$apellidoP', A_materno='$apellidoM', puesto='$puesto', sueldo='$sueldo', direccion='$direccion', e_mail='$email', telefono='$telefono' WHERE Id_usuario='$id';"

    echo "El registro se ha actualizado correctamente."
 
    $Acceder -e "USE $db_name; SELECT * FROM $table_name;"
else
    echo "El registro con el ID ingresado no existe en la tabla."
fi


