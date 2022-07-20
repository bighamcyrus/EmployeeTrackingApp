DROP DATABASE IF EXISTS departments_db;
CREATE DATABASE departments_db;

USE departments_db; 

CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    names VARCHAR(30) NOT NULL,
    );

CREATE TABLE roles(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    title VARCHAR(30) NOT NULL, 
    salary DECIMAL NOT NULL,
    REFERENCES department(id) 
    );

CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    first_name VARCHAR(30) NOT NULL, 
    last_name VARCHAR(30) NOT NULL, 
    REFERENCES roles(id)
    -- NEEDS A MANAGER ID TIED TO id HERE--
    );