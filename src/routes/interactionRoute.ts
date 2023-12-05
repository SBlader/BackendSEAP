import express from "express";
import {
  insertVisita,
  getVecinos,
  login
} from "../controllers/InteractionController";

// Crear instancia del router ()
const router = express.Router();

// Lo utilizamos igual que antes app.post -> router.post
router.post("/", insertVisita);
router.get("/", getVecinos);
router.get("/login", login);

// exportamos el router con el nombre commandRouter
export { router as interactionRouter };
