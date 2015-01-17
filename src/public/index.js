$('#browse').click(function(){
	(document.getElementById("uglybrowsebutton").onclick();
});

function file_upload()
{
	$.ajax({
		url: '/bitflogger/file-upload',
		type: 'POST',
		contentType: 'application/json',
		dataType: 'json'});
};

$('#submit').click(function(e)
{
	e.preventDefault();
	console.log("Button clicked!")
	file_upload();	
});

socket.on('file-read', function()
{
	$('#download').show();
});
