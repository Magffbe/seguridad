import express from 'express'
const app = express();

import { auth } from "./routes/auth.js";

app.use(express.json());

app.use('/api/auth', auth);

app.listen(3000, ()=>{
    console.log("Servidor en puerto 3000");

})




