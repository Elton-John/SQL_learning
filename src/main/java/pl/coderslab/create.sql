CREATE DATABASE repo_products_ex CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE repo_products_ex;
CREATE TABLE products (
    id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price NUMERIC(9,2) DEFAULT 0.00,
    PRIMARY KEY (id)
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT,
    description TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE clients (
    id INT AUTO_INCREMENT,
    name VARCHAR(255),
    surname VARCHAR(255),
    PRIMARY KEY (id)
);
CREATE DATABASE repo_cinemas_ex CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE repo_cinemas_ex;

CREATE TABLE cinemas (
    id INT AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE movies (
    id INT AUTO_INCREMENT,
    title VARCHAR(255),
    description TEXT,
    rating NUMERIC(9,2),
    PRIMARY KEY (id)
);

CREATE TABLE tickets (
    id INT AUTO_INCREMENT,
    quantity INT,
    price NUMERIC(9,2),
    status TINYINT DEFAULT 0,
    PRIMARY KEY (id)
);

CREATE TABLE payments (
  id INT AUTO_INCREMENT,
  type VARCHAR(10),
  payment_date DATETIME,
  PRIMARY KEY (id)
);
