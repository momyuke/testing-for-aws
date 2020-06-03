const express = require('express');
const app = express();
const http = require('http');
const dbConn = require('./dbConn');

app.get('/employee/sabar', (req,res,next) => {
    dbConn.query('SELECT * FROM department ', function (err, result, field) {
        res.json(result);
    });
});
app.get('/employee', (req,res,next) => {
    dbConn.query('SELECT * FROM employee', function (err, result, field) {
        res.json(result);
    });
});

const server = http.createServer(app);


dbConn.connect(function (err){
    if(err){
        console.log(err);
        process.exit(1)
    }else{
        server.listen(4000, '0.0.0.0', function(){
            if(server.listening){
                console.log('server has been on at port 4000')
            }
        });
    }
})


server.on('error', (err) => {
    console.log(err);
})