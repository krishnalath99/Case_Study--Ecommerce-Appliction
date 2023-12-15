CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(60),
    password VARCHAR(15)
);
ALTER TABLE customers AUTO_INCREMENT=1;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    description varchar(150),
    stockQuantity INT
);
ALTER TABLE products AUTO_INCREMENT=1;
ALTER TABLE products modify COLUMN price float;

CREATE TABLE cart (
    cart_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE,
    quantity INT
);
ALTER TABLE cart AUTO_INCREMENT=1;

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    order_date DATE,
    total_price float,
    shipping_address varchar(150)
);
ALTER TABLE orders AUTO_INCREMENT=101;

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE,
    quantity INT
);
ALTER TABLE order_items AUTO_INCREMENT=1001;

Select * From customers;
Select * From products;
Select * From orders;
Select * From cart;
Select * From order_items;