### Database Metadata / Data Dictionary


#### List of Entities/Tables

1. employee
2. ingredients
3. menu_category
4. promotion
5. menu_item
6. composite_menu_ingredients
7. customer
8. shopping_cart
9. shopping_cart_items
10. delivery_address
11. orders
12. delivery_details
13. order_item
14. purchases
15. payment_details


### Table/Entity Description

1. **employee**: Stores employee information such as name, role, hire date, and address details for tracking employee records.
2. **ingredients**: Contains data on various ingredients used in menu items, including their quantity, cost, and availability status.
3. **menu_category**: Holds categories for menu items, providing a way to organize and classify different types of dishes.
4. **promotion**: Stores details about promotional offers, including the promo code, discount percentage, and validity period.
5. **menu_item**: Records information about menu items, including their name, description, price, availability, and associated category and promotion.
6. **composite_menu_ingredients**: Establishes the relationship between menu items and their constituent ingredients, including the quantity of each ingredient used in a menu item.
7. **customer**: Stores customer data such as name, contact information, and email address to maintain a record of customers.
8. **shopping_cart**: Represents shopping carts associated with customers, facilitating the management of items selected for purchase.
9. **shopping_cart_items**: Contains individual items added to shopping carts, including the item's price and the quantity selected by the customer.
10. **delivery_address**: Stores delivery addresses associated with customers, including details such as address type, city, province, and postal code.
11. **orders**: Records details about customer orders, including the order date, description, total amount, and the customer who placed the order.
12. **delivery_details**: Contains information about deliveries made to customers, including the delivery status, date, associated order, customer, and delivery address.
13. **order_item**: Stores details of individual items included in orders, such as the quantity, unit price, and menu item associated with each order.
14. **purchases**: Tracks purchases made by customers, including payment details, quantity purchased, total amount, and any discounts applied.
15. **payment_details**: Records payment details for orders, including the payment method, total amount, and associated customer and order.

### SALES REPORT VIEWS
1. **order_summary_view**: Stores details about total orders, customers and revenue by year and month
2. **customer_preference**: Stores details about customer's preferences  for menu items
3. **top_sold_menu_categories**: Stores details about the TOP 2 most ordered menu category
4. **top_menu_items_per_category**: Stores details about Top selling menu items within each menu category



### ENTITY SCHEMA
1. **employee**
   - `employee_id` (Serial): Primary key, unique identifier for an employee.
   - `manager_id` (Integer): ID of the manager for this employee, nullable.
   - `address_id` (Integer): ID of the address associated with the employee.
   - `first_name` (Varchar): First name of the employee.
   - `last_name` (Varchar): Last name of the employee.
   - `role` (Varchar): Role or position of the employee.
   - `hire_date` (Timestamp): Date when the employee was hired.
   - `salary` (Numeric): Salary of the employee.
   - `employment_status` (Varchar): Status of employment (e.g., active, terminated).
   - `termination_date` (Date): Date of termination, nullable.
   - `termination_reason` (Varchar): Reason for termination, nullable.
   - `street` (Varchar): Street address of the employee.
   - `city` (Varchar): City of the employee's address.
   - `province` (Varchar): Province of the employee's address.
   - `postal_code` (Varchar): Postal code of the employee's address.

2. **ingredients**
   - `ingredients_id` (Serial): Primary key, unique identifier for an ingredient.
   - `name` (Varchar): Name of the ingredient.
   - `total_quantity` (Integer): Total quantity of the ingredient.
   - `available_quantity` (Integer): Available quantity of the ingredient.
   - `unit` (Varchar): Unit of measurement for the ingredient.
   - `cost_per_unit` (Numeric): Cost per unit of the ingredient.
   - `availability` (Boolean): Availability status of the ingredient.

3. **menu_category**
   - `category_id` (Serial): Primary key, unique identifier for a menu category.
   - `name` (Varchar): Name of the menu category.
   - `description` (Varchar): Description of the menu category.

4. **promotion**
   - `promo_code` (Character): Primary key, unique promotion code.
   - `discount` (Numeric): Discount percentage for the promotion.
   - `begin_date` (Timestamp): Start date of the promotion.
   - `end_date` (Timestamp): End date of the promotion.

5. **menu_item**
   - `menu_item_id` (Serial): Primary key, unique identifier for a menu item.
   - `name` (Varchar): Name of the menu item.
   - `description` (Varchar): Description of the menu item.
   - `price` (Numeric): Price of the menu item.
   - `availability` (Boolean): Availability status of the menu item.
   - `promo_code` (Character): Promotion code for the menu item, nullable.
   - `category_id` (Integer): ID of the menu category to which the item belongs.

6. **composite_menu_ingredients**
   - `ingredients_id` (Integer): Foreign key referencing `ingredients.ingredients_id`.
   - `menu_item_id` (Integer): Foreign key referencing `menu_item.menu_item_id`.
   - `quantity` (Integer): Quantity of the ingredient in the menu item.

7. **customer**
   - `customer_id` (Serial): Primary key, unique identifier for a customer.
   - `first_name` (Varchar): First name of the customer.
   - `last_name` (Varchar): Last name of the customer.
   - `phone` (Varchar): Phone number of the customer.
   - `email` (Varchar): Email address of the customer.

8. **shopping_cart**
   - `cart_id` (Serial): Primary key, unique identifier for a shopping cart.
   - `customer_id` (Integer): Foreign key referencing `customer.customer_id`.

9. **shopping_cart_items**
   - `cart_item_id` (Serial): Primary key, unique identifier for a shopping cart item.
   - `cart_id` (Integer): Foreign key referencing `shopping_cart.cart_id`.
   - `menu_item_id` (Integer): Foreign key referencing `menu_item.menu_item_id`.
   - `price` (Numeric): Price of the item in the shopping cart.

10. **delivery_address**
    - `delivery_address_id` (Serial): Primary key, unique identifier for a delivery address.
    - `customer_id` (Integer): Foreign key referencing `customer.customer_id`.
    - `address_type` (Varchar): Type of address (e.g., home, work).
    - `city` (Varchar): City of the delivery address.
    - `province` (Varchar): Province of the delivery address.
    - `street` (Varchar): Street address of the delivery.
    - `postal_code` (Varchar): Postal code of the delivery address.

11. **orders**
    - `order_id` (Serial): Primary key, unique identifier for an order.
    - `customer_id` (Integer): Foreign key referencing `customer.customer_id`.
    - `order_date` (Timestamp): Date and time when the order was placed.
    - `description` (Varchar): Description of the order.
    - `total_amount` (Numeric): Total amount of the order.

12. **delivery_details**
    - `delivery_id` (Serial): Primary key, unique identifier for a delivery.
    - `delivery_address_id` (Integer): Foreign key referencing `delivery_address.delivery_address_id`.
    - `order_id` (Integer): Foreign key referencing `orders.order_id`.
    - `customer_id` (Integer): Foreign key referencing `customer.customer_id`.
    - `delivery_status` (Varchar): Status of the delivery (e.g., shipped, processing).
    - `delivery_date` (Timestamp): Date and time of the delivery.

13. **order_item**
    - `order_item` (Serial): Primary key, unique identifier for an order item.
    - `order_id` (Integer): Foreign key referencing `orders.order_id`.
    - `menu_item_id` (Integer): Foreign key referencing `menu_item.menu_item_id`.
    - `quantity` (Integer): Quantity of the item in the order.
    - `unit_price` (Numeric): Unit price of the item.
    - `menu_details` (Varchar): Details of the menu item in the order.

14. **purchases**
    - `purchase_id` (Serial): Primary key, unique identifier for a purchase.
    - `order_id` (Integer): Foreign key referencing `orders.order_id`.
    - `customer_id` (Integer): Foreign key referencing `customer.customer_id`.
    - `payment_date` (Timestamp): Date and time when the payment was made.
    - `quantity_purchased` (Integer): Quantity of items purchased.
    - `total_order_amount` (Numeric): Total amount of the purchase.
    - `discount_applied` (Numeric): Discount amount applied to the purchase.
    - `discount_price` (Numeric): Discounted price after applying the discount.
    - `total_hst` (Numeric): Total Harmonized Sales Tax (HST) for the purchase.
    - `payment_amount` (Numeric): Amount paid for the purchase.

15. **payment_details**
    - `payment_id` (Serial): Primary key, unique identifier for a payment.
    - `customer_id` (Integer): Foreign key referencing `customer.customer_id`.
    - `order_id` (Integer): Foreign key referencing `orders.order_id`.
    - `total_amount` (Numeric): Total amount of the payment.
    - `payment_method` (Varchar): Payment method used (e.g., credit card, cash).
    - `payment_date` (Timestamp): Date and time of the payment.

#### Constraints

- **Primary Keys:**
  - `employee_pkey` on `employee.employee_id`
  - `ingredients_pkey` on `ingredients.ingredients_id`
  - `menu_category_pkey` on `menu_category.category_id`
  - `promotion_pkey` on `promotion.promo_code`
  - `menu_item_pkey` on `menu_item.menu_item_id`
  - `composite_menu_ingredients_pkey` on `composite_menu_ingredients.ingredients_id`, `composite_menu_ingredients.menu_item_id`
  - `customer_pkey` on `customer.customer_id`
  - `shopping_cart_pkey` on `shopping_cart.cart_id`
  - `shopping_cart_items_pkey` on `shopping_cart_items.cart_item_id`
  - `delivery_address_pkey` on `delivery_address.delivery_address_id`
  - `orders_pkey` on `orders.order_id`
  - `delivery_details_pkey` on `delivery_details.delivery_id`
  - `order_item_pkey` on `order_item.order_item`
  - `purchases_pkey` on `purchases.purchase_id`
  - `payment_details_pkey` on `payment_details.payment_id`

- **Foreign Keys:**
  - `fkey_customer` on `delivery_address.customer_id` referencing `customer.customer_id`
  - `fkey_delivery_address` on `delivery_details.delivery_address_id` referencing `delivery_address.delivery_address_id`
  - `fkey_order` on `delivery_details.order_id` referencing `orders.order_id`
  - `fkey_customer` on `orders.customer_id` referencing `customer.customer_id`
  - `fkey_customer_id` on `shopping_cart.customer_id` referencing `customer.customer_id`
  - `fkey_cart_id` on `shopping_cart_items.cart_id` referencing `shopping_cart.cart_id`
  - `fkey_menu_item` on `shopping_cart_items.menu_item_id` referencing `menu_item.menu_item_id`
  - `fkey_category` on `menu_item.category_id` referencing `menu_category.category_id`
  - `fkey_promotion` on `menu_item.promo_code` referencing `promotion.promo_code`
  - `fkey_ingredients` on `composite_menu_ingredients.ingredients_id` referencing `ingredients.ingredients_id`
  - `fkey_menu_item` on `composite_menu_ingredients.menu_item_id` referencing `menu_item.menu_item_id`
  - `fkey_menu_item` on `order_item.menu_item_id` referencing `menu_item.menu_item_id`
  - `fkey_order` on `order_item.order_id` referencing `orders.order_id`
  - `fkey_customer` on `purchases.customer_id` referencing `customer.customer_id`
  - `fkey_orders` on `purchases.order_id` referencing `orders.order_id`
  - `fkey_customer` on `payment_details.customer_id` referencing `customer.customer_id`
  - `fkey_orders` on `payment_details.order_id` referencing `orders.order_id`

- **Created Indexes**
- `pkey_menu_ingredients`
- `unique_ingredient_name`
- `menu_category_index`
- `menu_item_index`
- `order_status_index`
- `payment_status_index`
