const express = require('express');
const app = express();
const http = require('http');

app.get('/', (req,res,next) => {
    let data = {message : 'this is example message for EC2 AWS'}
    res.json(data);
});

const server = http.createServer(app);

server.listen(4000, '0.0.0.0', function(){
    if(server.listening){
        console.log('server has been on at port 4000')
    }
});

server.on('error', (err) => {
    console.log(err);
})