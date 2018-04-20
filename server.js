//Import dependecies
const path = require('path');

const express = require('express');
const logger = require('morgan');
const bodyParser = require('body-parser');

//declare port
const PORT = 3000;

//initalize app
const app = express();

//use middleware
app.use(logger('dev')); // Log request info into console
app.use(bodyParser.urlencoded({extended: false})); // parse urlencoded req bodies (for POST and PUT requests)
app.use(bodyParser.json()); // parse json req bodies (for POST and PUT requests)

// set up view middleware/public directory for static assets
app.set('view', path.join(__dirname, 'view'));
app.set('view engine', 'ejs');
app.use(express.static(path.join(__dirname, 'public')))

//Handle get request to the root route

// app.get('/', (req,res) =>{
//   res.send('hi there');
// });

//  app.get("/bye", (req, res) => {
//   res.send("suck some dick fam!! ");
//  });

//Listen on PORT
app.listen(PORT, ()=>{
console.log('hey im working');
})
