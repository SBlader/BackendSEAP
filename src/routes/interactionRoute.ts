import express from "express";
import {
  insertVisita,
  getVecinos,
  login,
  getLastVersion,
  getUltimaVisita
} from "../controllers/InteractionController";

// Crear instancia del router ()
const router = express.Router();

// Lo utilizamos igual que antes app.post -> router.post
router.post("/", insertVisita);
router.get("/", getVecinos);
router.get("/lastVersion", getLastVersion);
router.get("/lastVisits",getUltimaVisita);
router.post("/login", login);

// exportamos el router con el nombre commandRouter
export { router as interactionRouter };
