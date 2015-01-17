#!/usr/bin/env node

var express = require('express');
var app = express();

app.post('/file-upload', function(req, res, next) {
	console.log(req.files);
});

app.listen(4040);
