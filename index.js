var express = require('express');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var fs = require('fs');
var path = require('path');

const dataIn = Buffer(6);

var i2c = require('i2c-bus'),
    i2c1;

var rotation = 90;
var rotationUD = 90;

var i2c_address = 0x05;
 
var spawn = require('child_process').spawn;
var proc;
app.use(express.static(path.join(__dirname, 'public')));
 
app.use('/', express.static(path.join(__dirname, 'stream')));
 
 
app.get('/', function(req, res) {
  res.sendFile(__dirname + '/controller.html');
});

 
var sockets = {};
 
io.on('connection', function(socket) {
 
  sockets[socket.id] = socket;
  console.log("Total clients connected : ", Object.keys(sockets).length);
 
  var number = 0;
  var interval = setInterval(function(){
	  socket.emit("data", number);
  }, 1000)
  
  socket.on('disconnect', function() {
	clearInterval(interval);
    delete sockets[socket.id];
 
    // no more sockets, kill the stream
    if (Object.keys(sockets).length == 0) {
      app.set('watchingFile', false);
      if (proc) proc.kill();
      fs.unwatchFile('./stream/image_stream.jpg');
    }
  });

  socket.on('left', function() {
    left();
  });

  socket.on('right', function() {
    right();
  });

   socket.on('up', function() {
    up();
  });

  socket.on('down', function() {
    down();
  });
 
  socket.on('do-something', function() {
    doSomething();
  });

  socket.on('record', function() {
    record();
  });

  socket.on('play', function() {
    play();
  });

  socket.on('stop', function() {
    stop();
  });  
  
  socket.on('requestData', function() {
    requestData();
  });

});


http.listen(3000, function() {
  console.log('listening on *:3000');
});


function requestData() {
console.log('reading');
i2c1 = i2c.open(1, cd);
i2c1.readI2cBlock(i2c_address,0,6,dataIn,cd);
console.log(dataIn);
}

function down(){
	console.log('down');
	i2c1 = i2c.open(1,cd);
	rotationUD = rotationUD + 5;
	if (rotationUD > 180) rotationUD = 180;
        i2c1.writeByte(i2c_address,1,rotationUD,cd);

}
function up(){
        console.log('up');
	i2c1 = i2c.open(1,cd);
	rotationUD = rotationUD - 5;
	if (rotationUD < 0) rotationUD = 0;
	i2c1.writeByte(i2c_address,1,rotationUD,cd);

}
function right(){
        console.log('right');
	console.log('rotation: ' + rotation);
	i2c1 = i2c.open(1,cd);
	rotation = rotation - 5;
	if (rotation < 0) rotation = 0;
	i2c1.writeByte(i2c_address,0,rotation,cd);

}
function left(){
        console.log('left');
	console.log('rotation: '+ rotation );
        i2c1 = i2c.open(1,cd);
	rotation = rotation + 5;
	if (rotation > 180) rotation = 180;
        i2c1.writeByte(i2c_address,0,rotation,cd);
 
}
var sys = require('sys')
var exec = require('child_process').exec;
var child;

function doSomething() {
        console.log('we reached here');
	child = exec("aplay lullaby.mp3", function (error, stdout, stderr) {
 	 sys.print('stdout: ' + stdout);
	  sys.print('stderr: ' + stderr);
 	 if (error !== null) {
   	 console.log('exec error: ' + error);
  }
});
}

var sys1 = require('sys')
var exec1 = require('child_process').exec;
var child1;

function record() {
        console.log('we reached here');
        child1 = exec1("sudo arecord -f dat -d 10 -D plughw:1,0 test.wav", function (error, stdout, stderr) {
         sys1.print('stdout: ' + stdout);
          sys1.print('stderr: ' + stderr);
         if (error !== null) {
         console.log('exec error: ' + error);
  }
});
//console.log('finished 10sec recording');
}

var sys2 = require('sys')
var exec2 = require('child_process').exec;
var child2;

function play() {
        console.log('we reached here');
        child2 = exec2("sudo aplay test.wav", function(error, stdout, stderr){
         sys2.print('stdout: ' + stdout);
          sys2.print('stderr: ' + stderr);
         if (error !== null) {
         console.log('exec error: ' + error);
  }
});
}

function cd(){
	return;
}
