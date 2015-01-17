var express = require('express');
var app = express();

app.use(express.bodyParser({uploadDir: './uploads'}))

app.post('/file-upload', function(req, res, next) {
	console.log(req.files);
});

app.listen(4040);
