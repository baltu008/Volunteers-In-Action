DROP DATABASE IF EXISTS via_db;

CREATE DATABASE via_db;

USE via_db;

CREATE TABLE events (
    id INT NOT NULL AUTO_INCREMENT,
	event_name VARCHAR(200) NOT NULL,
	location VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    description varchar(500) NOT NULL,
    organizer VARCHAR(100) NOT NULL,
    contact VARCHAR(250) NOT NULL,
    createdAt TIMESTAMP NOT NULL default NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now(),
	PRIMARY KEY(id)
);

CREATE TABLE persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    contact VARCHAR(250) NOT NULL,
    CHECK (Age<19),
    PRIMARY KEY(id)
);

CREATE TABLE users (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    username varchar(255) NOT NULL,
    password VARCHAR(250) NOT NULL,
    PRIMARY KEY(id)
   
);

