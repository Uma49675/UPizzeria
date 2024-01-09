--Creating Procedure for inserting values in table customer
CREATE PROCEDURE add_customers
@customer_name VARCHAR(30),
@phone_number VARCHAR(15),
@email VARCHAR(30),
@customer_username VARCHAR(30),
@password VARCHAR(30)
As
Begin
	BEGIN TRY
		INSERT INTO customers.customer(customer_name, phone_number, email, customer_username, password, create_dtm, update_dtm)
		Values (@customer_name, @phone_number, @email, @customer_username, @password, GETDATE(),  GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table customer_address
CREATE PROCEDURE add_customers_address
@customer_id int,
@address_1 VARCHAR(30),
@address_2 VARCHAR(30),
@address_3 VARCHAR(30),
@city VARCHAR(20),
@state VARCHAR(20),
@country VARCHAR(20),
@postalcode VARCHAR(20)
As
Begin
	BEGIN TRY
		INSERT INTO customers.customer_address(customer_id, address_1, address_2, address_3, city, state, country, postalcode, create_dtm, update_dtm)
		Values (@customer_id, @address_1, @address_2, @address_3, @city, @state, @country, @postalcode, GETDATE(),  GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table customer_login
CREATE PROCEDURE add_customers_login
@customer_id int
As
Begin
	BEGIN TRY
		INSERT INTO customers.customer_login(customer_id, login_time, create_dtm, update_dtm)
		Values (@customer_id, GETDATE(), GETDATE(),  GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table store
CREATE PROCEDURE add_stores
@store_name VARCHAR(20),
@store_address1 VARCHAR(30),
@store_address2 VARCHAR(30),
@store_address3 VARCHAR(30),
@city VARCHAR(20),
@state VARCHAR(20),
@country VARCHAR(20),
@postalcode VARCHAR(10),
@store_phone_num VARCHAR(20),
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO stores.store(store_name, store_address1, store_address2, store_address3, city, state, country, postalcode, store_phone_num, update_user_id, create_dtm, update_dtm)
		VALUES(@store_name, @store_address1, @store_address2, @store_address3, @city, @state, @country, @postalcode, @store_phone_num, @update_user_id,GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table staff
CREATE PROCEDURE add_staffs
@staff_name	VARCHAR(30),
@designation_id int,
@staff_username VARCHAR(30),
@password VARCHAR(30),
@staff_address1 VARCHAR(30),
@staff_address2 VARCHAR(30),
@staff_address3 VARCHAR(30),
@city VARCHAR(20),
@state VARCHAR(20),
@country VARCHAR(20),
@postalcode VARCHAR(20),
@phone_number VARCHAR(20),
@email VARCHAR(30),
@unique_id VARCHAR(30),
@age int,
@store_id int,
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO staffs.staff(staff_name, designation_id, staff_username, password, staff_address1, staff_address2, staff_address3, city, state, country, postalcode, phone_number, email, unique_id, age, store_id, update_user_id, create_dtm, update_dtm)
		VALUES(@staff_name, @designation_id, @staff_username, @password, @staff_address1, @staff_address2, @staff_address3, @city, @state, @country, @postalcode, @phone_number, @email, @unique_id, @age, @store_id, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table designation
CREATE PROCEDURE add_staffs_designation
@designation VARCHAR(20),
@salary MONEY,
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO staffs.designation(designation, salary, update_user_id, create_dtm, update_dtm)
		VALUES(@designation, @salary, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table staff_login
CREATE PROCEDURE add_staffs_login
@staff_id int,
@login_time TIME,
@logout_time TIME
As
Begin
	BEGIN TRY
		INSERT INTO staffs.staff_login(staff_id, login_time, logout_time, create_dtm, update_dtm)
		VALUES(@staff_id, @login_time, @logout_time, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table pizza
CREATE PROCEDURE add_pizza
@pizza_name VARCHAR(30),
@description VARCHAR(150),
@category VARCHAR(30),
@pizza_size VARCHAR(30),
@price MONEY,
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO menu.pizza(pizza_name, description, category, pizza_size, price, update_user_id, create_dtm, update_dtm)
		VALUES(@pizza_name, @description, @category, @pizza_size, @price, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table toppings
CREATE PROCEDURE add_topping
@topping_name VARCHAR(30),
@price MONEY,
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO menu.toppings(topping_name, price, update_user_id, create_dtm, update_dtm)
		VALUES(@topping_name, @price, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table pizza_base
CREATE PROCEDURE add_pizza_base
@pizza_base_name VARCHAR(30),
@price MONEY,
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO menu.pizza_base(pizza_base_name, price, update_user_id, create_dtm, update_dtm)
		VALUES(@pizza_base_name, @price, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table sides
CREATE PROCEDURE add_sides
@sides_name VARCHAR(30),
@description VARCHAR(150),
@category VARCHAR(30),
@sides_size VARCHAR(30),
@price MONEY,
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO menu.sides(sides_name, description, category, sides_size, price, update_user_id, create_dtm, update_dtm)
		VALUES(@sides_name, @description, @category, @sides_size, @price, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table beverages
CREATE PROCEDURE add_beverages
@beverage_name VARCHAR(30),
@beverage_size VARCHAR(30),
@price MONEY,
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO menu.beverages(beverage_name, beverage_size, price, update_user_id, create_dtm, update_dtm)
		VALUES(@beverage_name, @beverage_size, @price, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table desserts
CREATE PROCEDURE add_desserts
@dessert_name VARCHAR(30),
@description VARCHAR(100),
@price MONEY,
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO menu.desserts(dessert_name, description, price, update_user_id, create_dtm, update_dtm)
		VALUES(@dessert_name, @description, @price, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table orders
CREATE PROCEDURE add_orders
@customer_id int,
@staff_id int,
@store_id int,
@price MONEY,
@payment_type VARCHAR(30),
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO orders.orders(customer_id, staff_id, store_id, order_date, price, payment_type, update_user_id, create_dtm, update_dtm)
		VALUES(@customer_id, @staff_id, @store_id, GETDATE(), @price, @payment_type, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for inserting values in table items
CREATE PROCEDURE add_items
@order_id int,
@food_item VARCHAR(30),
@size VARCHAR(30),
@food_item_price MONEY,
@extra_topping VARCHAR(30),
@extra_topping_price MONEY,
@base VARCHAR(30),
@base_price MONEY,
@quantity int,
@total_amount MONEY,
@update_user_id int
As
Begin
	BEGIN TRY
		INSERT INTO orders.items(order_id, food_item, size, food_item_price, extra_topping, extra_topping_price , base, base_price, quantity, total_amount, update_user_id, create_dtm, update_dtm)
		VALUES(@order_id, @food_item, @size, @food_item_price, @extra_topping, @extra_topping_price, @base, @base_price, @quantity, @total_amount, @update_user_id, GETDATE(), GETDATE())
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for updating values in table customer
CREATE PROCEDURE update_customers
@customer_id int,
@customer_name VARCHAR(30),
@phone_number VARCHAR(15),
@email VARCHAR(30),
@customer_username VARCHAR(30),
@password VARCHAR(30)
As
Begin
	BEGIN TRY
		UPDATE customers.customer
		Set
		customer_name = @customer_name,
		phone_number = @phone_number,
		email = @email,
		customer_username = @customer_username,
		password = @password,
		update_dtm = GETDATE()
		Where customer_id = @customer_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for updating values in table customer_address
CREATE PROCEDURE update_customer_address
@address_id int,
@customer_id int,
@address_1 VARCHAR(30),
@address_2 VARCHAR(30),
@address_3 VARCHAR(30),
@city VARCHAR(20),
@state VARCHAR(20),
@country VARCHAR(20),
@postalcode VARCHAR(20)
As
Begin
	BEGIN TRY
		UPDATE customers.customer_address
		Set
		customer_id = @customer_id,
		address_1 = @address_1,
		address_2 = @address_2,
		address_3 = @address_3,
		city = @city,
		state = @state,
		country = @country,
		postalcode = @postalcode,
		update_dtm = GETDATE()
		Where address_id = @address_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for updating values in table customer_login
CREATE PROCEDURE update_customer_login
@customer_login_id int,
@customer_id int,
@login_time DATETIME
As
Begin
	BEGIN TRY
		UPDATE customers.customer_login
		Set
		customer_id = @customer_id,
		login_time = @login_time,
		update_dtm = GETDATE()
		Where customer_login_id = @customer_login_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for updating values in table store
CREATE PROCEDURE update_store
@store_id int,
@store_name VARCHAR(20),
@store_address1 VARCHAR(30),
@store_address2 VARCHAR(30),
@store_address3 VARCHAR(30),
@city VARCHAR(20),
@state VARCHAR(20),
@country VARCHAR(20),
@postalcode VARCHAR(10),
@store_phone_num VARCHAR(20),
@update_user_id int
As
Begin
	BEGIN TRY
		UPDATE stores.store
		Set
		store_name = @store_name,
		store_address1 = @store_address1,
		store_address2 = @store_address2,
		store_address3 = @store_address3,
		city = @city,
		state = @state,
		country = @country,
		postalcode = @postalcode,
		store_phone_num = @store_phone_num,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		Where store_id = @store_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for updating values in table staff
CREATE PROCEDURE update_staff
@staff_id int,
@staff_name	VARCHAR(30),
@designation_id int,
@staff_username VARCHAR(30),
@password VARCHAR(30),
@staff_address1 VARCHAR(30),
@staff_address2 VARCHAR(30),
@staff_address3 VARCHAR(30),
@city VARCHAR(20),
@state VARCHAR(20),
@country VARCHAR(20),
@postalcode VARCHAR(20),
@phone_number VARCHAR(20),
@email VARCHAR(30),
@unique_id VARCHAR(30),
@age int,
@store_id int,
@update_user_id int
As
Begin
	BEGIN TRY
		UPDATE staffs.staff
		Set
		staff_name = @staff_name,
		designation_id = @designation_id,
		staff_username = @staff_username,
		password = @password,
		staff_address1 = @staff_address1,
		staff_address2 = @staff_address2,
		staff_address3 = @staff_address3,
		city = @city,
		state = @state,
		country = @country,
		postalcode = @postalcode,
		phone_number = @phone_number,
		email = @email,
		unique_id = @unique_id,
		age = @age,
		store_id = @store_id,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		Where staff_id = @staff_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
End

--Creating Procedure for updating values in table designation
CREATE PROCEDURE update_designation
@designation_id int,
@designation VARCHAR(20),
@salary MONEY,
@update_user_id int
AS
BEGIN
	BEGIN TRY
		UPDATE staffs.designation
		SET
		designation = @designation,
		salary = @salary,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		WHERE designation_id = @designation_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for updating values in table staff_login
CREATE PROCEDURE update_staff_login
@staff_login_id int,
@staff_id int,
@login_time TIME,
@logout_time TIME
AS
BEGIN
	BEGIN TRY
		UPDATE staffs.staff_login
		SET
		staff_id = @staff_id,
		login_time = @login_time,
		logout_time = @logout_time,
		update_dtm = GETDATE()
		WHERE staff_login_id = @staff_login_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for updating values in table pizza
CREATE PROCEDURE update_pizza
@pizza_id int,
@pizza_name VARCHAR(30),
@description VARCHAR(150),
@category VARCHAR(30),
@pizza_size VARCHAR(30),
@price MONEY,
@update_user_id int
AS
BEGIN
	BEGIN TRY
		UPDATE menu.pizza
		SET
		pizza_name = @pizza_name,
		description = @description,
		category = @category,
		pizza_size = @pizza_size,
		price = @price,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		WHERE pizza_id = @pizza_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for updating values in table toppings
CREATE PROCEDURE update_toppping
@topping_id int,
@topping_name VARCHAR(30),
@price MONEY,
@update_user_id int
AS
BEGIN
	BEGIN TRY
		UPDATE menu.toppings
		SET
		topping_name = @topping_name,
		price = @price,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		WHERE topping_id = @topping_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for updating values in table pizza_base
CREATE PROCEDURE update_pizza_base
@pizza_base_id int,
@pizza_base_name VARCHAR(30),
@price MONEY,
@update_user_id int
AS
BEGIN
	BEGIN TRY
		UPDATE menu.pizza_base
		SET
		pizza_base_name = @pizza_base_name,
		price = @price,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		WHERE pizza_base_id = @pizza_base_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for updating values in table sides
CREATE PROCEDURE update_sides
@sides_id int,
@sides_name VARCHAR(30),
@description VARCHAR(150),
@category VARCHAR(30),
@sides_size VARCHAR(30),
@price MONEY,
@update_user_id int
AS
BEGIN
	BEGIN TRY
		UPDATE menu.sides
		SET
		sides_name = @sides_name,
		description = @description,
		category = @category,
		sides_size = @sides_size,
		price = @price,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		WHERE sides_id = @sides_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for updating values in table beverages
CREATE PROCEDURE update_beverage
@beverage_id int,
@beverage_name VARCHAR(30),
@beverage_size VARCHAR(30),
@price MONEY,
@update_user_id int
AS
BEGIN
	BEGIN TRY
		UPDATE menu.beverages
		SET
		beverage_name = @beverage_name,
		beverage_size = @beverage_size,
		price = @price,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		WHERE beverage_id = @beverage_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for updating values in table desserts
CREATE PROCEDURE update_desserts
@dessert_id int,
@dessert_name VARCHAR(30),
@description VARCHAR(100),
@price MONEY,
@update_user_id int
AS
BEGIN
	BEGIN TRY
		UPDATE menu.desserts
		SET
		dessert_name = @dessert_name,
		description = @description,
		price = @price,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		WHERE dessert_id = @dessert_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for updating values in table orders
CREATE PROCEDURE update_orders
@order_id int,
@customer_id int,
@staff_id int,
@store_id int,
@order_date DATETIME,
@price MONEY,
@payment_type VARCHAR(30),
@update_user_id int
AS
BEGIN
	BEGIN TRY
		UPDATE orders.orders
		SET
		customer_id = @customer_id,
		staff_id = @staff_id,
		store_id = @store_id,
		order_date = @order_date,
		price = @price,
		payment_type = @payment_type,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		WHERE order_id = @order_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for updating values in table items
CREATE PROCEDURE update_items
@item_id int,
@order_id int,
@food_item VARCHAR(30),
@size VARCHAR(30),
@food_item_price MONEY,
@extra_topping VARCHAR(30),
@extra_topping_price MONEY,
@base VARCHAR(30),
@base_price MONEY,
@quantity int,
@total_amount MONEY,
@update_user_id int
AS
BEGIN
	BEGIN TRY
		UPDATE orders.items
		SET
		order_id = @order_id,
		food_item = @food_item,
		size = @size,
		food_item_price = @food_item_price,
		extra_topping = @extra_topping,
		extra_topping_price = @extra_topping_price,
		base = @base,
		base_price = @base_price,
		quantity = @quantity,
		total_amount = @total_amount,
		update_user_id = @update_user_id,
		update_dtm = GETDATE()
		WHERE item_id = @item_id
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table customer
CREATE PROCEDURE delete_customer
@customer_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM customers.customer
		WHERE customer_id = @customer_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table customer_address
CREATE PROCEDURE delete_customer_address
@address_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM customers.customer_address
		WHERE address_id = @address_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table customer_login
CREATE PROCEDURE delete_customer_login
@customer_login_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM customers.customer_login
		WHERE customer_login_id = @customer_login_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table store
CREATE PROCEDURE delete_stores
@store_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM stores.store
		WHERE store_id = @store_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table staff
CREATE PROCEDURE delete_staffs
@staff_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM staffs.staff
		WHERE staff_id = @staff_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table desination
CREATE PROCEDURE delete_designation
@designation_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM staffs.designation
		WHERE designation_id = @designation_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table staff_login
CREATE PROCEDURE delete_staff_login
@staff_login_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM staffs.staff_login
		WHERE staff_login_id = @staff_login_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table pizza
CREATE PROCEDURE delete_pizza
@pizza_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM menu.pizza
		WHERE pizza_id = @pizza_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table toppings
CREATE PROCEDURE delete_toppings
@topping_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM menu.toppings
		WHERE topping_id = @topping_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table pizza_base
CREATE PROCEDURE delete_pizza_base
@pizza_base_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM menu.pizza_base
		WHERE pizza_base_id = @pizza_base_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table sides
CREATE PROCEDURE delete_sides
@sides_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM menu.sides
		WHERE sides_id = @sides_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table beverages
CREATE PROCEDURE delete_beverages
@beverage_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM menu.beverages
		WHERE beverage_id = @beverage_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table desserts
CREATE PROCEDURE delete_desserts
@dessert_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM menu.desserts
		WHERE dessert_id = @dessert_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table orders
CREATE PROCEDURE delete_orders
@order_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM orders.orders
		WHERE order_id = @order_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

--Creating Procedure for deleting values in table items
CREATE PROCEDURE delete_items
@item_id int
AS
BEGIN
	BEGIN TRY
		DELETE FROM orders.items
		WHERE item_id = @item_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

select * from customers.customer;
select * from customers.customer_address;
select * from customers.customer_login;
select * from stores.store;
select * from staffs.staff;
select * from staffs.staff_login;
select * from staffs.designation;
select * from menu.pizza;
select * from menu.sides;
select * from menu.desserts;
select * from menu.beverages;
select * from menu.pizza_base;
select * from menu.toppings;
select * from orders.orders;
select * from orders.items;

--customer membership platinum, gold and silver
CREATE PROCEDURE most_spending_customer
AS
BEGIN
	BEGIN TRY
		SELECT TOP 3 ord.customer_id, cust.customer_name, cust.phone_number, cust.email, cust.customer_username, sum(price) as total_price
		FROM 
		customers.customer cust 
		JOIN 
		orders.orders ord 
		ON 
		cust.customer_id = ord.customer_id 
		GROUP BY ord.customer_id, cust.customer_name, cust.phone_number, cust.email, cust.customer_username
		ORDER BY sum(price) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC most_spending_customer

--customer without sales - welcome coupon
CREATE PROCEDURE welcome_coupon
AS
BEGIN
	BEGIN TRY
		SELECT cust.customer_name, cust.phone_number, cust.email, cust.customer_id, cust.customer_username, ord.price
		FROM 
		customers.customer cust 
		FULL JOIN 
		orders.orders ord 
		ON 
		cust.customer_id = ord.customer_id
		WHERE ord.order_id IS NULL
		ORDER BY cust.customer_id ASC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC welcome_coupon;

--store high sales
CREATE PROCEDURE store_sales
AS
BEGIN
	BEGIN TRY
		SELECT st.store_id, st.store_name, st.store_address1, st.store_address2, st.store_address3, st.city, st.state, st.country, st.postalcode, st.store_phone_num, sum(ord.price) as total_price
		FROM 
		stores.store st
		FULL JOIN 
		orders.orders ord 
		ON 
		st.store_id = ord.store_id
		GROUP BY st.store_id, st.store_name, st.store_address1, st.store_address2, st.store_address3, st.city, st.state, st.country, st.postalcode, st.store_phone_num
		ORDER BY sum(price) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC store_sales;

--least sales store
CREATE PROCEDURE reverse_store_sales
AS
BEGIN
	BEGIN TRY
		SELECT st.store_id, st.store_name, st.store_address1, st.store_address2, st.store_address3, st.city, st.state, st.country, st.postalcode, st.store_phone_num, sum(ord.price) as total_price
		FROM 
		stores.store st
		FULL JOIN 
		orders.orders ord 
		ON 
		st.store_id = ord.store_id
		GROUP BY st.store_id, st.store_name, st.store_address1, st.store_address2, st.store_address3, st.city, st.state, st.country, st.postalcode, st.store_phone_num
		ORDER BY sum(price) ASC, st.store_id ASC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC reverse_store_sales;

--top 3 selling staff
CREATE PROCEDURE top3_most_selling_staff
AS
BEGIN
	BEGIN TRY
		SELECT TOP 3 ord.staff_id, stf.staff_name, stf.designation_id, stf.staff_username, stf.phone_number, stf.email, stf.store_id, sum(ord.price) as total_price
		FROM 
		staffs.staff stf
		JOIN 
		orders.orders ord 
		ON 
		ord.staff_id = stf.staff_id
		GROUP BY ord.staff_id, stf.staff_name, stf.designation_id, stf.staff_username, stf.phone_number, stf.email, stf.store_id
		ORDER BY sum(price) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC top3_most_selling_staff;

-- selling staffs
CREATE PROCEDURE selling_staffs
AS
BEGIN
	BEGIN TRY
		SELECT stf.staff_id, stf.staff_name, stf.designation_id, stf.staff_username, stf.phone_number, stf.email, stf.store_id, sum(ord.price) as total_price
		FROM 
		staffs.staff stf
		FULL JOIN 
		orders.orders ord 
		ON 
		ord.staff_id = stf.staff_id
		GROUP BY stf.staff_id, stf.staff_name, stf.designation_id, stf.staff_username, stf.phone_number, stf.email, stf.store_id
		HAVING stf.designation_id IN (2,5,6)
		ORDER BY sum(price) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC selling_staffs;

--reverse selling staff
CREATE PROCEDURE reverse_selling_staffs
AS
BEGIN
	BEGIN TRY
		SELECT stf.staff_id, stf.staff_name, stf.designation_id, stf.staff_username, stf.phone_number, stf.email, stf.store_id, sum(ord.price) as total_price
		FROM 
		staffs.staff stf
		FULL JOIN 
		orders.orders ord 
		ON 
		ord.staff_id = stf.staff_id
		GROUP BY stf.staff_id, stf.staff_name, stf.designation_id, stf.staff_username, stf.phone_number, stf.email, stf.store_id
		HAVING stf.designation_id IN (2,5,6)
		ORDER BY sum(price) ASC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC reverse_selling_staffs;

--most profitable food_item
CREATE PROCEDURE food_item_profit
AS
BEGIN
	BEGIN TRY
		SELECT itm.food_item, SUM(total_amount) as total_price 
		FROM 
		orders.items itm
		GROUP BY itm.food_item
		ORDER BY SUM(total_amount) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC food_item_profit;

--most selling dish
CREATE PROCEDURE most_selling_dish
AS
BEGIN
	BEGIN TRY
		SELECT itm.food_item, SUM(itm.quantity) as Quantity 
		FROM 
		orders.items itm
		GROUP BY itm.food_item
		ORDER BY SUM(itm.quantity) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC most_selling_dish

--most selling pizza
CREATE PROCEDURE most_selling_pizza
@category VARCHAR(30)
AS
BEGIN
    BEGIN TRY
        SELECT piz.pizza_name, piz.category, SUM(itm.quantity) AS Quantity 
        FROM orders.items itm
        FULL JOIN 
		menu.pizza piz 
		ON 
		itm.food_item = piz.pizza_name
        GROUP BY piz.pizza_name, piz.category
		HAVING (@category = 'All' OR piz.category = @category) AND piz.pizza_name IS NOT NULL
        ORDER BY SUM(itm.quantity) DESC;
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC most_selling_pizza 'Veg';

--most selling side
CREATE PROCEDURE most_selling_sides
@category varchar(30)
AS
BEGIN 
	BEGIN TRY
		SELECT si.sides_name, si.category, SUM(itm.quantity) AS Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.sides si
		ON
		itm.food_item = si.sides_name
		GROUP BY si.sides_name, si.category 
		HAVING si.sides_name IS NOT NULL AND (@category = 'All' or si.category = @category)
		ORDER BY SUM(itm.quantity) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC most_selling_sides 'Non-Veg';

--most selling dessert
CREATE PROCEDURE most_selling_dessert
AS
BEGIN
	BEGIN TRY
		SELECT de.dessert_name, SUM(itm.quantity) AS Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.desserts de
		ON
		itm.food_item = de.dessert_name
		GROUP BY de.dessert_name 
		HAVING de.dessert_name is not null
		ORDER BY SUM(itm.quantity) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC most_selling_dessert

--most selling beverage
CREATE PROCEDURE most_selling_beverage
AS
BEGIN
	BEGIN TRY
		SELECT b.beverage_name, SUM(itm.quantity) as Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.beverages b
		ON
		itm.food_item = b.beverage_name
		GROUP BY b.beverage_name
		HAVING b.beverage_name IS NOT NULL
		ORDER BY SUM(itm.quantity) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC most_selling_beverage;

--most selling topping
CREATE PROCEDURE most_selling_toppings
AS
BEGIN
	BEGIN TRY
		SELECT tp.topping_name, SUM(Quantity) as Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.toppings tp
		ON
		itm.extra_topping = tp.topping_name
		GROUP BY tp.topping_name
		HAVING tp.topping_name IS NOT NULL
		ORDER BY SUM(Quantity) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC most_selling_toppings;

--most selling base
CREATE PROCEDURE most_selling_base
AS
BEGIN
	BEGIN TRY
		SELECT pb.pizza_base_name, SUM(Quantity) as Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.pizza_base pb
		ON
		itm.base = pb.pizza_base_name
		GROUP BY pb.pizza_base_name
		HAVING pb.pizza_base_name IS NOT NULL
		ORDER BY SUM(Quantity) DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC most_selling_base;

--least selling pizza
CREATE PROCEDURE least_selling_pizza
@category varchar(30)
AS
BEGIN
	BEGIN TRY
		SELECT piz.pizza_name, piz.category, SUM(itm.quantity) AS Quantity 
        FROM orders.items itm
        FULL JOIN 
		menu.pizza piz 
		ON 
		itm.food_item = piz.pizza_name
        GROUP BY piz.pizza_name, piz.category
		HAVING (@category = 'All' OR piz.category = @category) AND piz.pizza_name IS NOT NULL
        ORDER BY SUM(itm.quantity) ASC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC least_selling_pizza 'All';

--least selling side
CREATE PROCEDURE least_selling_sides
@category varchar(30)
AS
BEGIN 
	BEGIN TRY
		SELECT si.sides_name, si.category, SUM(itm.quantity) AS Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.sides si
		ON
		itm.food_item = si.sides_name
		GROUP BY si.sides_name, si.category 
		HAVING si.sides_name IS NOT NULL AND (@category = 'All' or si.category = @category)
		ORDER BY SUM(itm.quantity) ASC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC least_selling_sides 'Non-Veg';

--least selling dessert
CREATE PROCEDURE least_selling_dessert
AS
BEGIN
	BEGIN TRY
		SELECT de.dessert_name, SUM(itm.quantity) AS Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.desserts de
		ON
		itm.food_item = de.dessert_name
		GROUP BY de.dessert_name 
		HAVING de.dessert_name is not null
		ORDER BY SUM(itm.quantity) ASC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC least_selling_dessert

--least selling beverage
CREATE PROCEDURE least_selling_beverage
AS
BEGIN
	BEGIN TRY
		SELECT b.beverage_name, SUM(itm.quantity) as Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.beverages b
		ON
		itm.food_item = b.beverage_name
		GROUP BY b.beverage_name
		HAVING b.beverage_name IS NOT NULL
		ORDER BY SUM(itm.quantity) ASC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC least_selling_beverage;

--least selling topping
CREATE PROCEDURE least_selling_toppings
AS
BEGIN
	BEGIN TRY
		SELECT tp.topping_name, SUM(Quantity) as Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.toppings tp
		ON
		itm.extra_topping = tp.topping_name
		GROUP BY tp.topping_name
		HAVING tp.topping_name IS NOT NULL
		ORDER BY SUM(Quantity) ASC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC least_selling_toppings;

--least selling base
CREATE PROCEDURE least_selling_base
AS
BEGIN
	BEGIN TRY
		SELECT pb.pizza_base_name, SUM(Quantity) as Quantity 
		FROM 
		orders.items itm
		FULL JOIN 
		menu.pizza_base pb
		ON
		itm.base = pb.pizza_base_name
		GROUP BY pb.pizza_base_name
		HAVING pb.pizza_base_name IS NOT NULL
		ORDER BY SUM(Quantity) ASC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC least_selling_base;

--most working staff
CREATE PROCEDURE staff_working_hours
AS
BEGIN
	BEGIN TRY
		SELECT st.staff_id, st.staff_name, st.designation_id, st.phone_number, st.email, st.staff_username, SUM(CAST(DATEPART(HOUR, stfl.logout_time) AS INT) - CAST(DATEPART(HOUR, stfl.login_time) AS INT)) AS Total_Working_Hours 
		FROM 
		staffs.staff_login stfl
		FULL JOIN
		staffs.staff st
		ON
		stfl.staff_id = st.staff_id
		GROUP BY st.staff_id, st.staff_name, st.designation_id, st.phone_number, st.email, st.staff_username
		HAVING st.staff_id IS NOT NULL AND st.designation_id IN (1,3,4,7)
		ORDER BY Total_Working_Hours DESC;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
		PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC staff_working_hours;

--viewing item in customer table
CREATE PROCEDURE customer_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM customers.customer
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM customers.customer
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM customers.customer
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC customer_list 25;

--viewing item in customer_address table
CREATE PROCEDURE customer_address_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM customers.customer_address
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM customers.customer_address
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM customers.customer_address
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC customer_address_list 50;

--viewing item in customer_login table
CREATE PROCEDURE customer_login_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM customers.customer_login
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM customers.customer_login
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM customers.customer_login
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC customer_login_list 100;

--viewing item in store table
CREATE PROCEDURE store_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM stores.store
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM stores.store
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM stores.store
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC store_list 25;

--viewing item in staff table
CREATE PROCEDURE staff_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM staffs.staff
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM staffs.staff
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM staffs.staff
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC staff_list 50;

--viewing item in staff_login table
CREATE PROCEDURE staff_login_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM staffs.staff_login
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM staffs.staff_login
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM staffs.staff_login
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC staff_login_list 50;

--viewing item in designation table
CREATE PROCEDURE designation_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM staffs.designation
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM staffs.designation
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM staffs.designation
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC designation_list 25;

--viewing item in pizza table
CREATE PROCEDURE pizza_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM menu.pizza
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM menu.pizza
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM menu.pizza
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC pizza_list 50;

--viewing item in sides table
CREATE PROCEDURE sides_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM menu.sides
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM menu.sides
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM menu.sides
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC sides_list 30;

--viewing item in desserts table
CREATE PROCEDURE dessert_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM menu.desserts
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM menu.desserts
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM menu.desserts
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC dessert_list 25;

--viewing item in beverages table
CREATE PROCEDURE beverage_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM menu.beverages
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM menu.beverages
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM menu.beverages
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC beverage_list 50;

--viewing item in toppings table
CREATE PROCEDURE topping_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM menu.toppings
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM menu.toppings
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM menu.toppings
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC topping_list 30;

--viewing item in base table
CREATE PROCEDURE base_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM menu.pizza_base
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM menu.pizza_base
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM menu.pizza_base
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC base_list 25;

--viewing item in orders table
CREATE PROCEDURE order_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM orders.orders
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM orders.orders
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM orders.orders
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC order_list 50;

--viewing item in items table
CREATE PROCEDURE items_list
    @list_values INT
AS
BEGIN
    BEGIN TRY
        IF @list_values = 25
            SELECT TOP 25 * FROM orders.items
        ELSE IF @list_values = 50
            SELECT TOP 50 * FROM orders.items
        ELSE IF @list_values = 100
            SELECT TOP 100 * FROM orders.items
        ELSE
            PRINT 'Invalid @list_values parameter. Please provide 25, 50, or 100.'
    END TRY
    BEGIN CATCH
        PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
    END CATCH
END

EXEC items_list 83;

--total bill including tips and taxes
CREATE PROCEDURE total_bill
@tax float,
@tip float,
@customer_id int
AS
BEGIN
	BEGIN TRY
		SELECT ord.price, (@tax/100)*ord.price AS Tax, (@tip/100)*ord.price AS Tip, ord.price + (@tax/100)*ord.price + (@tip/100)*ord.price AS Total_Bill
		FROM 
		orders.orders ord
		WHERE customer_id = @customer_id;
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC total_bill 5.00, 10.00, 1;

SELECT CAST(DATEPART(MINUTE, GETDATE()) AS INT)

CREATE PROCEDURE order_details_customer
@startdate datetime,
@enddate datetime
AS
BEGIN
	BEGIN TRY
		SELECT itm.order_id, ord.customer_id, itm.food_item, itm.base, itm.extra_topping,ord.order_date, ord.price
		FROM 
		orders.items itm 
		FULL JOIN
		orders.orders ord
		ON itm.order_id= ord.order_id
		WHERE ord.order_date BETWEEN @startdate and @enddate
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC order_details_customer '2024-01-01', '2024-01-11';

CREATE PROCEDURE order_details_store
@startdate datetime,
@enddate datetime
AS
BEGIN
	BEGIN TRY
		SELECT itm.order_id, ord.store_id, itm.food_item, itm.base, itm.extra_topping,ord.order_date, ord.price
		FROM 
		orders.items itm 
		FULL JOIN
		orders.orders ord
		ON itm.order_id= ord.order_id
		WHERE ord.order_date BETWEEN @startdate and @enddate
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
	END CATCH	
END

EXEC order_details_store'2024-01-01', '2024-01-11';

CREATE PROCEDURE order_details_staff
@startdate datetime,
@enddate datetime
AS
BEGIN
	BEGIN TRY
		SELECT itm.order_id, ord.staff_id, itm.food_item, itm.base, itm.extra_topping,ord.order_date, ord.price
		FROM 
		orders.items itm 
		FULL JOIN
		orders.orders ord
		ON itm.order_id= ord.order_id
		WHERE ord.order_date BETWEEN @startdate and @enddate
	END TRY
	BEGIN CATCH
		PRINT 'An error occurred';
        PRINT ERROR_MESSAGE();
	END CATCH
END

EXEC order_details_staff '2024-01-01', '2024-01-11';