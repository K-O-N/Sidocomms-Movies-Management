-- Create Tables 

CREATE TABLE category (
	category_id INTEGER,
	name VARCHAR(20) UNIQUE NOT NULL,
	last_update TIMESTAMP NOT NULL
);

CREATE TABLE actor_award (
	actor_award_id INTEGER, 
	actor_id INTEGER,
	first_name Varchar(60),
	last_name varchar(60),
	award TEXT,
	last_update TIMESTAMP
);

CREATE TABLE advisor(
	advisor_id INTEGER,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	is_chairman BIT
);

CREATE TABLE city (
	city_id INTEGER,
	city VARCHAR(30),
	country_id INTEGER,
	last_update TIMESTAMP
);

CREATE TABLE country (
	country_id INTEGER,
	country VARCHAR(100),
	last_update TIMESTAMP 
);

CREATE TABLE customer (
	customer_id INTEGER,
	store_id INTEGER,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	email VARCHAR(150),
	address_id INTEGER,
	active BIT,
	create_date TIMESTAMP,
	last_update TIMESTAMP
);

CREATE TABLE film(
	film_id INTEGER,
	title VARCHAR(60),
	description TEXT,
	release_year VARCHAR(4),
	language_id INTEGER,
    original_language_id INTEGER,
	rental_duration INTEGER,
	rental_rate FLOAT,
	length INTEGER,
	replacement_cost FLOAT,
	rating VARCHAR(10),
	special_features TEXT,
	last_update TIMESTAMP
);

CREATE TABLE film_actor (
	actor_id INTEGER,
	film_id INTEGER,
	last_update TIMESTAMP 
);

CREATE TABLE film_category (
	film_id INTEGER,
	category_id INTEGER,
	last_update TIMESTAMP
);

CREATE TABLE film_text (
	film_id INTEGER, 
	title VARCHAR(60),
	description TEXT
);

CREATE TABLE inventory (
	inventory_id INTEGER,
	film_id INTEGER,
	store_id INTEGER,
	last_update TIMESTAMP 
);

CREATE TABLE investor (
	investor_id INTEGER,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	company_name VARCHAR(60)
);

CREATE TABLE language (
	language_id INTEGER,
	NAME VARCHAR(15),
	last_update TIMESTAMP
);

CREATE TABLE payment (
	payment_id INTEGER,
	customer_id INTEGER,
	staff_id INTEGER,
	rental_id INTEGER,
	amount FLOAT,
	payment_date TIMESTAMP,
	last_update TIMESTAMP
);

CREATE TABLE rental(
	rental_id INTEGER,
	rental_date TIMESTAMP,
	inventory_id INTEGER,
	customer_id INTEGER,
	return_date VARCHAR(20),
	staff_id INTEGER,
	last_update TIMESTAMP
);

CREATE TABLE  staff(
	staff_id  INTEGER,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	address_id INTEGER,
	email VARCHAR(150),
	store_id INTEGER,
	active BIT,
	username VARCHAR(60),
	password VARCHAR(60),
	last_update TIMESTAMP
);

CREATE TABLE store (
	store_id INTEGER,
	manager_staff_id INTEGER,
	address_id INTEGER,
	last_update TIMESTAMP
);


CREATE TABLE actor (
	actor_id TEXT,
	first_name Varchar(60),
	last_name varchar(60),
	last_update TIMESTAMP 
);

CREATE TABLE address (
	address_id TEXT,
	address VARCHAR(255),
	address2 VARCHAR(255),
	district VARCHAR(60),
	city_id TEXT,
	postal_code VARCHAR(6),
	phone VARCHAR(12),
	last_update TIMESTAMP
);

INSERT INTO store 
(store_id, manager_staff_id, address_id, last_update) values 
(1,1,1,'2006-02-15 04:57:12'),
(2,2,2,'2006-02-15 04:57:12');
