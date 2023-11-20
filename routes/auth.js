import  Express  from "express";
const auth = Express();
import { autenticacion } from "../controllers/authController.js";

auth.post('', autenticacion);

export {
    auth 
}