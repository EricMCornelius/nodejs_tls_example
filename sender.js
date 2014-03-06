#!/usr/bin/env node

var https = require('https');
var fs = require('fs');

var options = {
  hostname: 'li549-154',
  port: 8080,
  path: '/',
  method: 'GET',
  pfx: fs.readFileSync('client.pfx'),
  ca: fs.readFileSync('ca/ca.crt')
};

var req = https.request(options, function(res) {
  res.on('data', function(chunk) {
    console.log(chunk.toString());
  });
});

req.end();
