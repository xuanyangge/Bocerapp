//Bocer app server entry program
//Yicheng Wang 06/24/2016


//import needed files
var express = require('express');
var login = require("./Routers/userinfo");
var bodyParser = require("body-parser");

var app = express();

//utilities
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());

///////////////////////////////////////
//functions for rendering pages and handle requests
///////////////////////////////////////


//user login
app.use("/",login);











app.listen(80,function(){ //listen to localhost at port 8000
	console.log("server listening");
})
