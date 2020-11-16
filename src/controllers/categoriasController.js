const db = require('../config/db')
const categoriasRepository = require('../repositories/Categoria'); 

exports.getCategoria = async(req, res) => {
    const id = req.params.id;
    try {
        const categoria = await categoriasRepository.getCategoria(id);
        if (!categoria) {
           return res.status(404).json({msg:"No se encuentra la categoria con el id: ", id});
        }

        res.status(200).json(categoria);

    } catch (error) {
        res.status(500).json(error);
    }
   
}