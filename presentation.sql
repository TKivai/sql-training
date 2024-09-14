CREATE DATABASE spare_parts_shop;

USE spare_parts_shop;

CREATE TABLE parts (
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    category INT,
    manufacturer INT,
    stock INT,
    price DECIMAL # In Ksh
);

CREATE TABLE category (
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100)
);

CREATE TABLE manufacturer (
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    warranty_period INT
);