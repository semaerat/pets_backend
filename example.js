const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql')

const server = express();

var db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: 'pets'
})

db.connect(function(err) {
  if(err) return console.log("ERROR",err);

  console.log("Bağlantı Başarılı!");
})

server.use(bodyParser.json());

server.post("/create-animal", (req, res) => {
  const reqBody = req.body;
  const query = "insert into pet_list (type, name, description, age) values (?, ?, ?, ?)";
  const params = [reqBody.type, reqBody.name, reqBody.description, reqBody.age]

  db.query(query, params, (err, result) => {
    if(err){
      res.send(err)
    } else {
      res.send({
        status: '200',
        message: reqBody.name + " adlı " + reqBody.type + " başarılı bir şekilde oluşturuldu."
      })
    }
  })
})

server.get("/animals-list", (req, res) => {
  const query = "select * from pet_list";

  db.query(query, (err, result) => {
    if(err){
      res.send(err)
    } else {
      res.send(result);
    }
  })
});

server.get("/animal-detail/:id", (req, res) => {
  const { id } = req.params;
  const query = "select * from pet_list where id = ?"

  db.query(query, id, (err, result) => {
    if(err){
      res.send(err);
    } else {
      res.send(result);
    }
  })
});

server.listen(3000, () => {
});