while true
do
echo "----------------------------------------------------------------------------"
echo "MENU PRINCIPAL"
echo "1. Respaldo"
echo "2. Visualizar"
echo "3. Insertar"
echo "4. Eliminar"
echo "5. Actualizar"
echo "----------------------------------------------------------------------------"
echo "SELECCIONA UNA OPCION"

read x

case $x in
  
    1)
        ./respaldo.sh
        ;;
    2)
        ./visualizar.sh
        ;;
    3)
        ./registrar.sh
        ;;
    4)
        ./eliminar.sh
        ;;
    5)
        ./actualizar.sh
        ;;
 
esac
done
