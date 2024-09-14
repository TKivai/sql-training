CREATE DATABASE spare_parts_shop;

USE spare_parts_shop;

CREATE TABLE parts (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category INT,
    manufacturer INT,
    stock INT,
    price DECIMAL # In Ksh
);

CREATE TABLE category (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE manufacturer (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    warranty_period INT
);

create TABLE purchase (
    id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    date DATE
);

create TABLE purchase_detail (
    purchase_id INT,
    part_id INT,
    quantity INT
);