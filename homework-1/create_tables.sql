-- SQL-команды для создания таблиц
CREATE TABLE customer
(
	customer_id varchar(10) PRIMARY KEY,
	company_name text NOT NULL,
	contact_name text NOT NULL
);


CREATE TABLE employee
(
	employee_id int PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	title varchar(150) NOT NULL,
	birth_date DATE,
	notes int NOT NULL
);

CREATE TABLE orders
(
	orders_id int PRIMARY KEY,
	customber_id varchar(10) REFERENCES customer(customer_id),
	employee_id int REFERENCES employee(employee_id),
	order_date DATE,
	ship_city varchar(50)
)