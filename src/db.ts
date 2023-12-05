import { createConnection, Connection } from 'mariadb';

export let db: Connection;

export const connectDB = async () => {
  try {
    db = await createConnection({
      host: 'localhost',
      user: 'root',
      password: 'root',
      database: 'EmergenciasHidricas'
    });

    console.log('Conexión a la base de datos establecida');
  } catch (error) {
    console.error('Error al conectar a la base de datos:', error);
  }
};
