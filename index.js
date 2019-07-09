var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);
const bodyParser = require('body-parser');

//database
var mysql = require('mysql');
// Create connection
var connect = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'pridesys'
});
app.use(bodyParser.json())
app.get('/list',function(req,resp){
  connect.query("SELECT * FROM prid_chat",function(error,rows,fields){
      if(!!error){
          console.log('Error in the query...');
      }else{
          resp.json(rows);
  }
  });
  })
  

app.get('/', function(req, res){
  res.sendfile('index.html');
});

io.on('connection', function(socket){
	console.log("an user connected!");
	 socket.on('username', function(username) {
        socket.username = username;
		console.log(username);
        io.emit('is_online', '🔵 <i>' + socket.username + ' join the chat..</i>');
    });

    socket.on('disconnect', function(username) {
		console.log(username);
        io.emit('is_online', '🔴 <i>' + socket.username + ' left the chat..</i>');
    })
	
	socket.on('chat_message', function(msg){
		console.log(msg);
    io.emit('chat_message',{username:socket.username,message:msg});
    var post  = {company_no: 78, user_no: '47',user_name:''+socket.username,message:msg};
    var query = connect.query('INSERT INTO prid_chat SET ?', post, function (error, results, fields) {
      if (error) throw error;
      // Neat!
    });
	});
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});