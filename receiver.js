#!/usr/bin/env node

var https = require('https');
var fs = require('fs');

var options = {
  pfx: fs.readFileSync('server.pfx'),
  ca: fs.readFileSync('ca/ca.crt'),
  crl: fs.readFileSync('crl/crl.pem'),
  requestCert: true
};

https.createServer(options, function (req, res) {
  console.log(req.socket.authorized);
  res.writeHead(200);
  res.end("hello world\n");
}).listen(8080);

console.log('wtf')
