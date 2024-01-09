--Creating schema customers
CREATE SCHEMA customers;

--Creating table customer in schema customers
CREATE TABLE customers.customer(
	customer_id int PRIMARY KEY IDENTITY(1,1),
	customer_name VARCHAR(30) NOT NULL,
	phone_number VARCHAR(15) NOT NULL UNIQUE,
	email VARCHAR(30) NOT NULL UNIQUE,
	customer_username VARCHAR(30) NOT NULL UNIQUE,
	password VARCHAR(30) NOT NULL,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL
);


--Creating table customer_login in schema customers
CREATE TABLE customers.customer_login(
	customer_login_id int PRIMARY KEY IDENTITY(1,1),
	customer_id int NOT NULL,
	login_time DATETIME NOT NULL,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers.customer(customer_id) ON DELETE CASCADE
);

--Creating table customer_address in schema customers
CREATE TABLE customers.customer_address(
	address_id int PRIMARY KEY IDENTITY(1,1),
	customer_id int NOT NULL,
	address_1 VARCHAR(30) NOT NULL,
	address_2 VARCHAR(30),
	address_3 VARCHAR(30),
	city VARCHAR(20) NOT NULL,
	state VARCHAR(20) NOT NULL,
	country VARCHAR(20) NOT NULL,
	postalcode VARCHAR(20) NOT NULL,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers.customer(customer_id) ON DELETE CASCADE
);

--Creating schema stores
CREATE SCHEMA stores;

--Creating table store in schema stores
CREATE TABLE stores.store(
	store_id int PRIMARY KEY IDENTITY(1,1),
	store_name VARCHAR(20) NOT NULL,
	store_address1 VARCHAR(30) NOT NULL,
	store_address2 VARCHAR(30),
	store_address3 VARCHAR(30),
	city VARCHAR(20) NOT NULL,
	state VARCHAR(20) NOT NULL,
	country VARCHAR(20) NOT NULL,
	postalcode VARCHAR(10) NOT NULL,
	store_phone_num VARCHAR(20) NOT NULL UNIQUE,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL
);

--Creating schema staffs
CREATE SCHEMA staffs;

--Creating table staff in schema staffs
CREATE TABLE staffs.staff(
	staff_id int PRIMARY KEY IDENTITY(1,1),
	staff_name VARCHAR(30) NOT NULL,
	designation_id int NOT NULL,
	staff_username VARCHAR(30) NOT NULL UNIQUE,
	password VARCHAR(30) NOT NULL,
	staff_address1 VARCHAR(30) NOT NULL,
	staff_address2 VARCHAR(30),
	staff_address3 VARCHAR(30),
	city VARCHAR(20) NOT NULL,
	state VARCHAR(20) NOT NULL,
	country VARCHAR(20) NOT NULL,
	postalcode VARCHAR(20) NOT NULL,
	phone_number VARCHAR(20) NOT NULL UNIQUE,
	email VARCHAR(30) NOT NULL UNIQUE,
	unique_id VARCHAR(30) NOT NULL UNIQUE,
	age int NOT NULL,
	store_id int NOT NULL,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL,
	FOREIGN KEY (designation_id) REFERENCES staffs.designation(designation_id) ON DELETE CASCADE,
	FOREIGN KEY (store_id) REFERENCES stores.store(store_id) ON DELETE CASCADE
);


--Creating table designation in schema staffs
CREATE TABLE staffs.designation(
	designation_id int PRIMARY KEY IDENTITY(1,1),
	designation	VARCHAR(20) NOT NULL UNIQUE,
	salary MONEY NOT NULL,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL
);

--Creating table staff_login in schema staffs
CREATE TABLE staffs.staff_login(
	staff_login_id int PRIMARY KEY IDENTITY(1,1),
	staff_id int NOT NULL,
	login_time TIME NOT NULL,
	logout_time TIME NOT NULL,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL,
	FOREIGN KEY (staff_id) REFERENCES staffs.staff(staff_id) ON DELETE CASCADE
);

--Creating schema menu
CREATE SCHEMA menu;

--Creating table pizza in schema menu
CREATE TABLE menu.pizza(
	pizza_id int PRIMARY KEY IDENTITY(1,1),
	pizza_name VARCHAR(30) NOT NULL,
	description VARCHAR(150) NOT NULL,
	category VARCHAR(30) NOT NULL,
	pizza_size VARCHAR(30) NOT NULL,
	price MONEY NOT NULL,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL,
);

--Creating table toppings in schema menu
CREATE TABLE menu.toppings(
	topping_id int PRIMARY KEY IDENTITY(1,1),
	topping_name VARCHAR(30) NOT NULL UNIQUE,
	price MONEY NOT NULL,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL
);

--Creating table pizza_base in schema menu
CREATE TABLE menu.pizza_base(
	pizza_base_id int PRIMARY KEY IDENTITY(1,1),
	pizza_base_name VARCHAR(30) NOT NULL UNIQUE,
	price MONEY NOT NULL,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL
);

--Creating table sides in schema menu
CREATE TABLE menu.sides(
	sides_id int PRIMARY KEY IDENTITY(1,1),
	sides_name VARCHAR(30) NOT NULL,
	description VARCHAR(150) NOT NULL,
	category VARCHAR(30) NOT NULL,
	sides_size VARCHAR(30) NOT NULL,
	price MONEY NOT NULL,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL
);

--Creating table beverages in schema menu
CREATE TABLE menu.beverages(
	beverage_id int PRIMARY KEY IDENTITY(1,1),
	beverage_name VARCHAR(30) NOT NULL,
	beverage_size VARCHAR(30) NOT NULL,
	price MONEY NOT NULL,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL
);

--Creating table desserts in schema menu
CREATE TABLE menu.desserts(
	dessert_id int PRIMARY KEY IDENTITY(1,1),
	dessert_name VARCHAR(30) NOT NULL UNIQUE,
	description VARCHAR(100) NOT NULL,
	price MONEY NOT NULL,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL
);

--Creating schema orders
CREATE SCHEMA orders;

--Creating table orders in schema orders
CREATE TABLE orders.orders(
	order_id int PRIMARY KEY IDENTITY(1,1),
	customer_id int NOT NULL,
	staff_id int NOT NULL,
	store_id int NOT NULL,
	order_date DATETIME NOT NULL,
	price MONEY,
	payment_type VARCHAR(30),
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers.customer(customer_id) ON DELETE NO ACTION,
	FOREIGN KEY (staff_id) REFERENCES staffs.staff(staff_id) ON DELETE NO ACTION,
	FOREIGN KEY (store_id) REFERENCES stores.store(store_id) ON DELETE NO ACTION
);

--Creating table items in schema orders
CREATE TABLE orders.items(
	item_id int PRIMARY KEY IDENTITY(1,1),
	order_id int NOT NULL,
	food_item VARCHAR(30) NOT NULL,
	size VARCHAR(30),
	food_item_price MONEY NOT NULL,
	extra_topping VARCHAR(30),
	extra_topping_price MONEY NOT NULL,
	base VARCHAR(30),
	base_price MONEY NOT NULL,
	quantity int NOT NULL,
	total_amount MONEY NOT NULL,
	update_user_id int,
	create_dtm DATETIME NOT NULL,
	update_dtm DATETIME NOT NULL,
	FOREIGN KEY (order_id) REFERENCES orders.orders(order_id) ON DELETE NO ACTION,
	FOREIGN KEY (extra_topping) REFERENCES menu.toppings(topping_name) ON DELETE NO ACTION,
	FOREIGN KEY (base) REFERENCES menu.pizza_base(pizza_base_name) ON DELETE NO ACTION
);