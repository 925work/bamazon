DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;
USE bamazon_DB;

CREATE TABLE products (
    product_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(35) NOT NULL,
    department_name VARCHAR(35) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    PRIMARY KEY (product_id)
);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Coffee Mug", "Kitchen", 5.00, 30);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Tent", "Outdoors", 50.00, 7);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Ring Pops", "Candy", 1.30, 200);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Macbook Pro 15 inch 2019", "Computers", 3000.00, 1);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Toaster", "Kitchen", 30.00, 20);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Bug Spray", "Outdoors", 10.00, 70);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("DELL XPS 13 2019", "Computers", 2000.00, 2);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Gum Ball", "Candy", 0.25, 2000);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Hamburger", "Food", 4.25, 400);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Men's Tank Top", "Clothes", 15.00, 60);

SELECT * FROM products;