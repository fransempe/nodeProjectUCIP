const db = require('../config/db');

exports.getCategoria = (id) => {
    return new Promise(function(resolve, reject) {
        db.connection.execute(
            'SELECT * FROM categorias WHERE `categoria_id` = ?',
            [id],
            function(err, results, fields) {
                if(err){
                   reject("Error en la consulta.");
                }
                
                resolve(results);
            }
        )
    })
}