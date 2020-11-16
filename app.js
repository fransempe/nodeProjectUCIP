const express= require('express')
const bodyParser=require('body-parser')
require('dotenv').config()
const app = express()
const morgan = require('morgan')

const port = process.env.NODE_PORT || 4040;

const platoRoutes = require('./src/routes/platosRouter')

app.use('/platos', platoRoutes);
app.use('/platos/:id', platoRoutes);

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
  })


