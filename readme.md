## Dependencias

npm install typescript ts-node @types/node mariadb //Permite conectarse a mariadb
npm install express
npm i --save-dev @types/express
npm install --save-dev ts-node-dev //Permite que la api se recargue al modificar un archivo de esta

## ENDPOINTS

1. GET `localhost:3000/`: Entrega todos los vecinos
2. GET `localhost:3000/login`: dado un usuario y contraseña (ver en apartado estructuras) devuelve si el inicio de sesión fue existoso
3. POST `localhost:3000/`: Sube una visita a la base de datos (ver en apartado estructuras);

## ESTRUCTURAS

LOGIN: 
{
    u:"usuario"
    p:"contraseña"
}

VISITA:
{
    "RutResponsable": "22222222-2",
    "RutVecino": "44444444-4",
    "litros": 30.50,
    "comentario": "Visita de prueba 2",
    "folio": "FOLIO002",
    "fecha": "2023-03-01",
    "estado": "Pendiente",
    "clorado": 0
}
