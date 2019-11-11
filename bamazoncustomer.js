var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "",
    database: "bamazon_DB"
});

connection.connect(function(err){
    if (err) throw err;
    start();
});

function start() {
    connection.query("SELECT * FROM products", function(err, results) {
      if (err) throw err;
      inquirer
        .prompt([
          {
            name: "id_selection",
            type: "rawlist",
            choices: function() {
              var idArray = [];
              for (var i = 0; i < results.length; i++) {
                idArray.push(results[i].product_name);
              }
              return idArray;
            },
            message: "What would you like to buy?"
          },
          {
            name: "quantity",
            type: "input",
            message: "How many would you like to buy?"
          }
        ])
        .then(function(answer) {
          var chosenItem;
          for (var i = 0; i < results.length; i++) {
            if (results[i].product_name === answer.id_selection) {
              chosenItem = results[i];
            }
          }
  
          if (chosenItem.stock >= parseInt(answer.quantity)) {
            connection.query(
              "UPDATE products SET ? WHERE ?",
              [
                {
                  stock: chosenItem.stock - answer.quantity
                },
                {
                  product_id: chosenItem.product_id
                }
              ],
              function(error) {
                if (error) throw err;
                console.log("Congratulations! The product is in stock. Placing your order now...");
                console.log("The cost of your order is $" + answer.quantity * chosenItem.price);
                connection.end();
              }
            );
          }
          else {
            console.log("There was not enough stock to fulfill your order. Please try again.");
            start();
          }
        });
    });
  }