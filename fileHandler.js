const multer = require("multer");
const path = require("path");
const moment = require("moment");

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, "./assets/images"));
  },
  filename: function (req, file, cb) {
    cb(null, moment().format("YYYY-MM-DD_HH-mm-ss") + ".jpeg");
  },
});

const fileFilterReq = (req, file, cb) => {
  if (file.mimetype === "image/jpeg" || file.mimetype === "image/png") {
    cb(null, true);
  } else {
    cb(new Error("Type of file is not valid"), false);
  }
};

const uploadHandler = multer({
  storage: storage,
  fileFilter: fileFilterReq,
});

module.exports = uploadHandler;