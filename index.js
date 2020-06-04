const express = require("express");
const app = express();
const http = require("http");
const dbConn = require("./dbConn");
const AWS = require("aws-sdk");
const dotenv = require("dotenv");
const fileHandler = require('./fileHandler');
const fs = require('fs');
const moment = require('moment');

dotenv.config();

const id = process.env.AWS_KEYID;
const secretKey = process.env.AWS_SECRETKEY;

const s3 = new AWS.S3({
  accessKeyId: id,
  secretAccessKey: secretKey,
  region : 'ap-southeast-1'
});

var bucketParams = {
  Bucket: 'teguh-bucket-triprasetya'
};

app.post('/postimage', fileHandler.single('photo'), (req,res) => {
    const fileContent = fs.readFileSync(req.file.path);
    const params = {
      Bucket : 'learn-s3-bucket-smm',
      Key : req.file.filename,
      Body : fileContent,
      ACL : 'public-read'
    }

    s3.upload(params, function(err, data) {
      if(err){
        res.status(500).send(err);
      }else {
        fs.unlinkSync(req.file.path);
        console.log(req.file.path);
        let query = `INSERT INTO employee (id, firstName, lastName, photoUrl) VALUES ('${req.body.id}', '${req.body.firstName}', '${req.body.lastName}', '${data.Location}')`
        dbConn.query(query, function(err, result, field) {
          if(err){
            res.status(500).send(err)
          }else{
            res.send(field);
          }
        });
      }
    })
});

app.get('/getimage/employee/:id', (req,res) => {
  let query = `SELECT photoUrl FROM employee WHERE id = '${req.params.id}'`;
  dbConn.query(query, function(err,result, field){
    if(err){
      res.status(500).send(err);
    }else{
      const htmlImage = `<img src='${result[0].photoUrl}'>`
      res.send(htmlImage);
    }
  });
});

app.get("/createbucket", (req, res) => {
  s3.createBucket(bucketParams,
    function (err, data) {
      if (err) {
        res.send(err);
      } else {
        res.send(data);
      }
    }
  );
});

app.get("/listbucket", (req, res) => {
  s3.listBuckets(function (err, data) {
    if (err) {
      res.send(err);
    } else {
      res.send(data);
    }
  });
});

app.get("/department", (req, res, next) => {
  dbConn.query("SELECT * FROM department ", function (err, result, field) {
    res.json(result);
  });
});
app.get("/employee", (req, res, next) => {
  dbConn.query("SELECT * FROM employee", function (err, result, field) {
    res.json(result);
  });
});

const server = http.createServer(app);

dbConn.connect(function (err) {
  if (err) {
    console.log(err);
    process.exit(1);
  } else {
    server.listen(4000, "0.0.0.0", function () {
      if (server.listening) {
        console.log("server has been on at port 4000");
      }
    });
  }
});

server.on("error", (err) => {
  console.log(err);
});
