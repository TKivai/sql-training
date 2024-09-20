CREATE DATABASE spare_parts_shop;

USE spare_parts_shop;

CREATE TABLE parts (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category_id INT,
    manufacturer_id INT,
    stock INT,
    price DECIMAL, # In Ksh
#   -------------ADDITIONAL CONSTRAINTS-----------------------
    FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id)
);

CREATE TABLE categories (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE manufacturers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    warranty_period INT
);

create TABLE purchases (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    date DATE
);

create TABLE purchase_details (
    purchase_id INT,
    part_id INT,
    quantity INT,
#   ----------ADDITIONAL CONSTRAINTS------------------
    PRIMARY KEY (purchase_id, part_id),
    FOREIGN KEY (purchase_id) REFERENCES purchases(id),
    FOREIGN KEY (part_id) REFERENCES parts(id)
);