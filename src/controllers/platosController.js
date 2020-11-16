const db = require('../config/db')
const platosRepository = require('../repositories/Plato'); 

exports.getPlato = async(req, res) => {
    const id = req.params.id;
    try {
        const platos = await platosRepository.getPlato(id);
        if (!platos) {
           return res.status(404).json({msg:"No se encuentra el plato con el id: ", id});
        }

        res.status(200).json(platos);

    } catch (error) {
        res.status(500).json(error);
    }
   
}

exports.getPlatos=(req,res)=>{
    
    db.connection.execute(
        'SELECT * FROM platos',
        function(err, results, fields) {
            res.json(results);
            console.log(results); 
        }
    );

    //res.status(200).json(platosRepository.plato);
}