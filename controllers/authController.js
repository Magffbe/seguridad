import {db} from "../database/conn.js";

const autenticacion = async (req, res) =>{

let params = [
    req.body.user,
    req.body.pass
]

const sql = `select user_name, email, id_rol from tbl_user
            where user_name = $1
            and pass = $2
            and is_active = true` ;

const result = await db.query(sql, params);

if(result.length > 0){
    res.json({mensaje : "Autenticacion Exitosa"})

}else {
    res.status(404).json({mensaje : "Autenticacion No Exitosa"})

}

}

export {
    autenticacion
}

