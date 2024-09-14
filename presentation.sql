CREATE DATABASE spare_parts_shop;

USE spare_parts_shop;

CREATE TABLE parts (
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    category VARCHAR(100),
    manufacturer VARCHAR(100),
    stock INT,
    price DECIMAL, # In Ksh
    warranty INT
);