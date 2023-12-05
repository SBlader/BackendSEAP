import { Visita } from "../models/Visitas";
import { Request, Response } from "express";
import {db} from '../db'
 
let listVisitas: Visita[] = [];

export const getVisitas = async () => {
  const result = await db.query('SELECT * FROM Visitas');
  result.forEach((visita: any) => {
    const newVisita = new Visita(visita);
    listVisitas.push(newVisita);
  });
};

export const getVecinos = async (req: Request, res: Response) => {
  const result = await db.query('SELECT * FROM Vecinos');
  res.json(result);
};

export const login = async (req: Request, res: Response) => {
  const users = await db.query('SELECT * FROM Usuarios');
  let encontrado = false;
  console.log(req.body);
  users.forEach((usuario:any) => {
    if(usuario.name == req.body.u && usuario.password == req.body.p){
      encontrado = true;
    };
  });
  if (encontrado){
    res.json({"success": true});
  }else{
    res.json({"success":false})
  }
};
export const insertVisita = async (req: Request, res: Response) => {
  const visita = new Visita(req.body);
  console.log(req.body);
  listVisitas.push(visita);
  try {
  const result = await db.query(
    'INSERT INTO Visitas (RutResponsable, RutVecino, litros, comentario, folio, fecha, estado, clorado) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
    [
      visita.RutResponsable,
      visita.RutVecino,
      visita.litros,
      visita.comentario,
      visita.folio,
      visita.fecha,
      visita.estado,
      visita.clorado
    ]
  );
  return res.json({ insert: "success"});
  }
  catch{return res.json ({insert:"failure"})};

  
};
