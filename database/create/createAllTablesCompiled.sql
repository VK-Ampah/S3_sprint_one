-- Purpose: Create all tables in the database.
-- This script is used to create all the tables in the database.

-- create database
CREATE DATABASE sideside_restaurant;

-- create employee table
CREATE TABLE public.employee (
    employee_id serial4 NOT NULL,
    manager_id int4 NULL,
    address_id int4 NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    "role" varchar(50) NOT NULL,
    hire_date timestamp NOT NULL,
    salary numeric(10, 2) NULL,
    employment_status varchar(20) NOT NULL,
    termination_date date NULL,
    termination_reason varchar(255) NULL,
    street varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    province varchar(50) NOT NULL,
    postal_code varchar(20) NOT NULL,
    CONSTRAINT employee_pkey PRIMARY KEY (employee_id),
    CONSTRAINT salary_check CHECK ((salary > (0)::numeric)),
    CONSTRAINT fkey_employee_manager FOREIGN KEY (manager_id) REFERENCES public.employee(employee_id)
);


-- create ingredients table
CREATE TABLE public.ingredients (
	ingredients_id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	total_quantity int4 NOT NULL,
	available_quantity int4 NOT NULL,
	unit varchar(20) NOT NULL,
	cost_per_unit numeric(10, 2) NOT NULL,
	availability bool NOT NULL,
	CONSTRAINT ingredients_pkey PRIMARY KEY (ingredients_id),
	CONSTRAINT unique_ingredient_name UNIQUE (name)
);

-- create menu category table
CREATE TABLE public.menu_category (
	category_id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	description varchar(255) NOT NULL,
	CONSTRAINT menu_category_pkey PRIMARY KEY (category_id)
);
-- create promotion table
CREATE TABLE public.promotion (
	promo_code bpchar(6) NOT NULL,
	discount numeric(5, 2) NOT NULL,
	begin_date timestamp NOT NULL,
	end_date timestamp NOT NULL,
	CONSTRAINT check_discount_range CHECK (((discount >= (0)::numeric) AND (discount <= (100)::numeric))),
	CONSTRAINT promotion_pkey PRIMARY KEY (promo_code)
);

-- create menu item table
CREATE TABLE public.menu_item (
	menu_item_id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	description varchar(255) NOT NULL,
	price numeric(10, 2) NOT NULL,
	availability bool NOT NULL,
	promo_code bpchar(6) NULL,
	category_id int4 NOT NULL,
	CONSTRAINT chk_price_positive CHECK ((price > (0)::numeric)),
	CONSTRAINT menu_item_pkey PRIMARY KEY (menu_item_id),
	CONSTRAINT fkey_category FOREIGN KEY (category_id) REFERENCES public.menu_category(category_id),
	CONSTRAINT fkey_promotion FOREIGN KEY (promo_code) REFERENCES public.promotion(promo_code)
);

-- create composite menu ingredients table
CREATE TABLE public.composite_menu_ingredients (
	ingredients_id int4 NOT NULL,
	menu_item_id int4 NOT NULL,
	quantity int4 NOT NULL,
	CONSTRAINT pkey_menu_ingredients PRIMARY KEY (ingredients_id, menu_item_id),
	CONSTRAINT fkey_ingredients FOREIGN KEY (ingredients_id) REFERENCES public.ingredients(ingredients_id),
	CONSTRAINT fkey_menu_item FOREIGN KEY (menu_item_id) REFERENCES public.menu_item(menu_item_id)
);

-- customer table
CREATE TABLE public.customer (
	customer_id serial4 NOT NULL,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	phone varchar(20) NOT NULL,
	email varchar(50) NULL,
	CONSTRAINT customer_pkey PRIMARY KEY (customer_id)
);

-- create shopping cart table
CREATE TABLE public.shopping_cart (
	cart_id serial4 NOT NULL,
	customer_id int4 NOT NULL,
	CONSTRAINT shopping_cart_pkey PRIMARY KEY (cart_id),
	CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id)
);

-- create shopping cart items table
CREATE TABLE public.shopping_cart_items (
	cart_item_id serial4 NOT NULL,
	cart_id int4 NOT NULL,
	menu_item_id int4 NOT NULL,
	price numeric(10, 2) NOT NULL,
	CONSTRAINT chk_price_positive CHECK ((price > (0)::numeric)),
	CONSTRAINT shopping_cart_items_pkey PRIMARY KEY (cart_item_id),
	CONSTRAINT fk_cart_id FOREIGN KEY (cart_id) REFERENCES public.shopping_cart(cart_id),
	CONSTRAINT fk_menu_item FOREIGN KEY (menu_item_id) REFERENCES public.menu_item(menu_item_id)
);

-- create delivery address table
CREATE TABLE public.delivery_address (
	delivery_address_id serial4 NOT NULL,
	customer_id int4 NOT NULL,
	address_type varchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	province varchar(50) NOT NULL,
	street varchar(50) NOT NULL,
	postal_code varchar(20) NOT NULL,
	CONSTRAINT delivery_address_pkey PRIMARY KEY (delivery_address_id),
	CONSTRAINT fkey_customer FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id)
);

-- create orders table
CREATE TABLE public.orders (
	order_id serial4 NOT NULL,
	customer_id int4 NOT NULL,
	order_date timestamp NOT NULL,
	description varchar(255) NOT NULL,
	order_status varchar(50) NOT NULL,
	total_amount numeric(10, 2) NOT NULL,
	CONSTRAINT chk_price_positive CHECK ((total_amount > (0)::numeric)),
	CONSTRAINT orders_pkey PRIMARY KEY (order_id),
	CONSTRAINT fkey_customer_id FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id)
);
-- create delivery details table
CREATE TABLE public.delivery_details (
	delivery_id serial4 NOT NULL,
	delivery_address_id int4 NOT NULL,
	order_id int4 NOT NULL,
	customer_id int4 NOT NULL,
	delivery_status varchar(50) NOT NULL,
	delivery_date timestamp NOT NULL,
	CONSTRAINT delivery_details_pkey PRIMARY KEY (delivery_id),
	CONSTRAINT fkey_customer FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id),
	CONSTRAINT fkey_delivery_address FOREIGN KEY (delivery_address_id) REFERENCES public.delivery_address(delivery_address_id),
	CONSTRAINT fkey_order FOREIGN KEY (order_id) REFERENCES public.orders(order_id)
);


-- create order item table
CREATE TABLE public.order_item (
	order_item serial4 NOT NULL,-- this could be order_item_id , it was an oversight
	order_id int4 NOT NULL,
	menu_item_id int4 NOT NULL,
	quantity int4 NOT NULL,
	unit_price numeric(10, 2) NOT NULL,
	menu_details varchar(255) NULL,
	CONSTRAINT chk_price_positive CHECK ((unit_price > (0)::numeric)),
	CONSTRAINT chk_qty_positive CHECK ((quantity > 0)),
	CONSTRAINT order_item_pkey PRIMARY KEY (order_item),
	CONSTRAINT fkey_menu_item FOREIGN KEY (menu_item_id) REFERENCES public.menu_item(menu_item_id),
	CONSTRAINT fkey_order FOREIGN KEY (order_id) REFERENCES public.orders(order_id)
);

-- create purchases table
CREATE TABLE public.purchases (
	purchase_id serial4 NOT NULL,
	order_id int4 NOT NULL,
	customer_id int4 NOT NULL,
	payment_date timestamp NOT NULL,
	quantity_purchased int4 NOT NULL,
	total_order_amount numeric(10, 2) NOT NULL,
	discount_applied numeric(10, 2) NULL,
	discount_price numeric(10, 2) NULL,
	total_hst numeric(10, 2) NOT NULL,
	payment_amount numeric(10, 2) NOT NULL,
	CONSTRAINT purchases_pkey PRIMARY KEY (purchase_id),
	CONSTRAINT fkey_customer FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id),
	CONSTRAINT fkey_orders FOREIGN KEY (order_id) REFERENCES public.orders(order_id)
);

-- create payment details table
CREATE TABLE public.payment_details (
	payment_id serial4 NOT NULL,
	customer_id int4 NOT NULL,
	order_id int4 NOT NULL,
	total_amount numeric(10, 2) NULL,
	payment_method varchar(50) NULL,
	payment_date timestamp NOT NULL,
	payment_status varchar(50) NULL,
	CONSTRAINT payment_details_pkey PRIMARY KEY (payment_id),
	CONSTRAINT fkey_customer FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id),
	CONSTRAINT fkey_orders FOREIGN KEY (order_id) REFERENCES public.orders(order_id)
);
