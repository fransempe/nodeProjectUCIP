exports.getPlato = (req, res) => {
    const id = req.params.id;
    res.status(200).json(platosRepository.getPlato(id));
}

exports.getPlatos=(req,res)=>{
    
    db.connection.execute(
        'SELECT * FROM platos WHERE `nombre` = ? AND `precio` < ?',
        ['papas', 200],
        function(err, results, fields) {
        console.log(results); 
        console.log(fields);
        }
    );

    res.status(200).json(platosRepository.plato);
}