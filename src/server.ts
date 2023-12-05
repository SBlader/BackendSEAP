import express, { Request, Response } from 'express';
import { db, connectDB } from './db';
import { getVisitas } from './controllers/InteractionController';
import { interactionRouter } from './routes/interactionRoute';

const app = express();
const PORT = 3000;

// Middleware para parsear JSON
app.use(express.json());
app.use("/",interactionRouter);

// Ruta de prueba
/*app.get('/', async (req: Request, res: Response) => {
  try {
    const result = await db.query('SELECT * FROM Visitas');

    res.json(result);
  } catch (error) {
    console.error('Error al ejecutar la consulta:', error);
    res.status(500).json({ error: 'Error interno del servidor' });
  }
});

app.post('/',async (req: Request, res: Response) => {
  try {
    req.body;
    const result = await db.query('INSERT') 
    res.json(result);
  } catch (error) {
    console.error('Error al ejecutar la consulta:', error);
    res.status(500).json({ error: 'Error interno del servidor' });
  }
});*/

// Iniciar el servidor
const startServer = async () => {
  await connectDB();
  getVisitas();
  app.listen(PORT, () => {
    console.log(`Servidor en http://localhost:${PORT}`);
  });
};

startServer();
