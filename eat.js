var express = require('express');
var app = express();

app.get('/whatToEat',function(req,res){
	var rest = ['גואטה','אגאדיר','בבו','קוקיצה'];
	var rand = Math.floor(Math.random()*rest.length);
	res.json({
		restaurant : rest[rand]
	});
});

app.listen(4500,function(){
	console.log("server run");
});