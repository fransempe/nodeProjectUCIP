const express= require('express')
const bodyParser=require('body-parser')
require('dotenv').config()
const app = express()
const morgan = require('morgan')
const platoRoutes = require('./src/routes/platosRouter')

const port = process.env.NODE_PORT || 4040;

app.use(bodyParser.json());
app.use(morgan("tiny"));


app.use('/platos', platoRoutes);

app.use('*', function(req, res) {
    res.status(404).json({msg: "No existe la ruta."});
});

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
  })


