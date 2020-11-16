const db = require('../config/db');

exports.getPlato = (id) => {
    return new Promise(function(resolve, reject) {
        db.connection.execute(
            'SELECT * FROM platos WHERE `plato_id` = ?',
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