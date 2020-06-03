const express = require("express");
const app = express();
const http = require("http");
const dbConn = require("./dbConn");
const AWS = require("aws-sdk");
const dotenv = require("dotenv");

dotenv.config();

const id = process.env.AWS_KEYID;
const secretKey = process.env.AWS_SECRETKEY;

const s3 = new AWS.S3({
  accessKeyId: id,
  secretAccessKey: secretKey,
});

var bucketParams = {
  Bucket: 'teguh-bucket-triprasetya'
};

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
