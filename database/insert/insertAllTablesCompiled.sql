-- Insert 10 distinct records into the employee table
INSERT INTO employee (manager_id, address_id, first_name, last_name, role, hire_date, salary, employment_status, termination_date, termination_reason, street, city, province, postal_code)
VALUES

    -- today
    (NULL, 1, 'James', 'Doe', 'Manager', now(), 50000.00, 'active', NULL, NULL, '123 Main St', 'St. John''s', 'NL', 'A1B 2C3'),
    (NULL, 2, 'Jimmy', 'Smith', 'Manager', now(), 55000.00, 'active', NULL, NULL, '456 Elm St', 'Mt. Pearl', 'NL', 'X1Y 2Z3'),
    (3, 3, 'Albert', 'Johnson', 'Sales Associate', now(), 40000.00, 'active', NULL, NULL, '123 Main St', 'Paradise', 'NL', 'A1B 2C3'),
    (4, 4, 'Bobby', 'Smitzer', 'Cashier', now(), 35000.00, 'active', NULL, NULL, '123 Main St', 'St. John''s', 'NL', 'A1B 2C3'),
    (5, 5, 'Emmanuel', 'Doney', 'Sales Associate', now(), 38000.00, 'active', NULL, NULL, '456 Elm St', 'Paradise', 'NL', 'X1Y 2Z3'),
    -- Last week

    (NULL, 1, 'Jane', 'Doe', 'Manager', now() - INTERVAL '1 WEEK', 50000.00, 'active', NULL, NULL, '123 Main St', 'St. John''s', 'NL', 'A1B 2C3'),
    (NULL, 2, 'Jane', 'Smith', 'Manager', now() - INTERVAL '1 WEEK', 55000.00, 'active', NULL, NULL, '456 Elm St', 'Mt. Pearl', 'NL', 'X1Y 2Z3'),
    (3, 3, 'Alice', 'Johnson', 'Sales Associate', now() - INTERVAL '1 WEEK', 40000.00, 'active', NULL, NULL, '123 Main St', 'Paradise', 'NL', 'A1B 2C3'),
    (4, 4, 'Bob', 'Smith', 'Cashier', now() - INTERVAL '1 WEEK', 35000.00, 'active', NULL, NULL, '123 Main St', 'St. John''s', 'NL', 'A1B 2C3'),
    (5, 5, 'Emma', 'Davis', 'Sales Associate', now() - INTERVAL '1 WEEK', 38000.00, 'active', NULL, NULL, '456 Elm St', 'Paradise', 'NL', 'X1Y 2Z3'),
    -- A month ago
    (6, 6, 'Michael', 'Brown', 'Cashier', now() - INTERVAL '1 MONTH', 36000.00, 'active', NULL, NULL, '789 Oak St', 'Conception Bay St.', 'NL', 'Y3Z 4X1'),
    (7, 7, 'David', 'Wilson', 'Cashier', now() - INTERVAL '1 MONTH', 35000.00, 'active', NULL, NULL, '890 Maple St', 'St. Anthony', 'NL', 'A1B 2C3'),
    (8, 8, 'Jennifer', 'Clark', 'Sales Associate', now() - INTERVAL '1 MONTH', 42000.00, 'active', NULL, NULL, '567 Pine St', 'Mt. Pearl', 'NL', 'Y3Z 4X1'),
    (9, 9, 'William', 'Martinez', 'Cashier', now() - INTERVAL '1 MONTH', 37000.00, 'active', NULL, NULL, '890 Maple St', 'Mt. Pearl', 'NL', 'A1B 2C3'),
    (10, 10, 'Laura', 'Garcia', 'Store Standard Associate', now() - INTERVAL '1 MONTH', 38000.00, 'active', NULL, NULL, '123 Elm St', 'Goulds', 'NL', 'Y3Z 4X1'),
    -- Yesterday
    (NULL, 11, 'John', 'Smith', 'Manager', now() - INTERVAL '1 DAY', 55000.00, 'active', NULL, NULL, '456 Elm St', 'Mt. Pearl', 'NL', 'X1Y 2Z3'),
    (12, 12, 'Emma', 'Johnson', 'Sales Associate', now() - INTERVAL '1 DAY', 40000.00, 'active', NULL, NULL, '123 Main St', 'Paradise', 'NL', 'A1B 2C3'),
    (13, 13, 'Michael', 'Brown', 'Cashier', now() - INTERVAL '1 DAY', 36000.00, 'active', NULL, NULL, '789 Oak St', 'Conception Bay St.', 'NL', 'Y3Z 4X1'),
    (14, 14, 'David', 'Wilson', 'Cashier', now() - INTERVAL '1 DAY', 35000.00, 'active', NULL, NULL, '890 Maple St', 'St. Anthony', 'NL', 'A1B 2C3'),
    (15, 15, 'Jennifer', 'Clark', 'Sales Associate', now() - INTERVAL '1 DAY', 42000.00, 'active', NULL, NULL, '567 Pine St', 'Mt. Pearl', 'NL', 'Y3Z 4X1')
   RETURNING *;

-- insert data into ingredients table
INSERT INTO ingredients (name, total_quantity, available_quantity, unit, cost_per_unit, availability)
VALUES 
    ('Vegetable Oil', 50, 50, 'liters', 1.99, true),
    ('Potatoes', 100, 100, 'lbs', 0.99, true),
    ('Cod Fillets', 30, 30, 'lbs', 7.99, true),
    ('Shrimp', 30, 30, 'lbs', 12.99, true),
    ('Calamari Rings', 25, 25, 'lbs', 9.99, true),
    ('Crab Cakes', 20, 20, 'pcs', 5.99, true),
    ('Lobster Tails', 15, 15, 'pcs', 22.99, true),
    ('Tortillas', 50, 50, 'packs', 1.49, true),
    ('Rice', 40, 40, 'kg', 2.49, true),
    ('Beans', 30, 30, 'kg', 1.99, true),
    ('Cheese Curds', 20, 20, 'lbs', 6.99, true),
    ('Gravy Mix', 40, 40, 'packs', 0.79, true)
ON CONFLICT (name) DO NOTHING -- on conflict abort insertion
RETURNING *;
-- adding more ingredients
INSERT INTO ingredients (name, total_quantity, available_quantity, unit, cost_per_unit, availability)
VALUES 
    ('Lettuce', 100, 100, 'unit', 0.0, true),
    ('Tomato', 80, 80, 'unit', 0.0, true),
    ('Salsa', 50, 50, 'unit', 0.0, true),
    ('Fries', 200, 200, 'unit', 0.0, true),
    ('Fried Clam Strips', 150, 150, 'unit', 0.0, true),
    ('Clams', 120, 120, 'unit', 0.0, true),
    ('Mussels', 130, 130, 'unit', 0.0, true),
    ('Corn', 100, 100, 'unit', 0.0, true),
    ('Mashed Potatoes', 100, 100, 'unit', 0.0, true),
    ('Seasonal Vegetables', 100, 100, 'unit', 0.0, true),
    ('Crab Meat', 90, 90, 'unit', 0.0, true),
    ('Vegetable Stock', 80, 80, 'unit', 0.0, true),
    ('Marinara Sauce', 60, 60, 'unit', 0.0, true),
    ('Coconut Flakes', 70, 70, 'unit', 0.0, true),
    ('Sweet Chili Sauce', 40, 40, 'unit', 0.0, true),
    ('Oysters', 80, 80, 'unit', 0.0, true),
    ('Breadcrumbs', 100, 100, 'unit', 0.0, true),
    ('Cocktail Sauce', 60, 60, 'unit', 0.0, true),
    ('Tartar Sauce', 70, 70, 'unit', 0.0, true),
    ('French Baguette', 120, 120, 'unit', 0.0, true),
    ('Remoulade Sauce', 50, 50, 'unit', 0.0, true),
    ('Buttered Toast', 100, 100, 'unit', 0.0, true),
    ('Tuna Salad', 70, 70, 'unit', 0.0, true),
    ('Cheddar Cheese', 100, 100, 'unit', 0.0, true),
    ('Grilled Bread', 80, 80, 'unit', 0.0, true),
    ('Garlic Bread', 70, 70, 'unit', 0.0, true),
    ('Vegetables', 100, 100, 'unit', 0.0, true),
    ('Rice Pilaf', 90, 90, 'unit', 0.0, true)
ON CONFLICT (name) DO NOTHING -- on conflict abort insertion meaning name already exist
RETURNING *;

-- insert into menu_category table
INSERT INTO menu_category (name, description)
VALUES 
    ('Fish and Chips', 'Classic fish and chips served with fries and tartar sauce.'),
    ('Seafood Platters', 'Assorted seafood platters featuring shrimp, calamari, and fish.'),
    ('Fried Seafood Specials', 'Specialty fried seafood items like crispy calamari and shrimp.'),
    ('Seafood Sandwiches', 'Delicious seafood sandwiches served on fresh bread with lettuce and tomato.'),
    ('Seafood Combos', 'Combination seafood meals featuring a variety of fried and grilled options.')
   RETURNING *;

-- insert into promotion table

INSERT INTO promotion (promo_code, discount, begin_date, end_date) VALUES 
('PROMO1', 10.00, now(), now() + INTERVAL '1 WEEK'),
('PROMO2', 15.00, now(), now() + INTERVAL '1 MONTH'),
('PROMO3', 20.00, now(), now() + INTERVAL '2 WEEKS'),
('PROMO4', 25.00, now(), now() + INTERVAL '3 WEEKS'),
('PROMO5', 30.00, now(), now() + INTERVAL '1 MONTH')
RETURNING *;

-- insert into menu_item table
INSERT INTO menu_item (name, description, price, availability,promo_code,category_id)
 VALUES 
    ('Classic Fish and Chips', 'Beer-battered cod served with fries and tartar sauce.', 10.99, true,'PROMO1', 1),
    ('Fisherman''s Platter', 'Assorted fried seafood including fish, shrimp, and calamari.', 15.99, true, null, 1),
    ('Shrimp Basket', 'Crispy fried shrimp served with coleslaw and fries.', 12.99, true,'PROMO2', 1),
    ('Fish Taco Plate', 'Grilled fish tacos served with rice, beans, and salsa.', 11.99, true, 1),
    ('Seafood Poutine', 'Fries topped with cheese curds, gravy, and fried clam strips.', 9.99, true, 1),

    -- Seafood Platters

    ('Seafood Sampler', 'Sampler platter featuring shrimp, calamari, and crab cakes.', 18.99, true, 2),
    ('Seafood Feast', 'A feast of grilled lobster, shrimp, and scallops served with garlic butter.', 25.99, true, 2),
    ('Clam Bake', 'Traditional clam bake featuring clams, mussels, corn, and potatoes.', 22.99, true, 2),
    ('Lobster Tail Dinner', 'Grilled lobster tail served with mashed potatoes and seasonal vegetables.', 29.99, true, 2),
    ('Seafood Risotto', 'Creamy risotto with shrimp, scallops, and crab meat.', 20.99, true, 2),

    -- Fried Seafood Specials

    ('Crispy Calamari', 'Golden-fried calamari rings served with marinara sauce.', 8.99, true, 3),
    ('Coconut Shrimp', 'Coconut-crusted shrimp served with sweet chili sauce.', 10.99, true, 3),
    ('Fried Oysters', 'Breaded and fried oysters served with cocktail sauce.', 12.99, true, 3),
    ('Fish Bites', 'Bite-sized pieces of fried fish served with tartar sauce.', 9.99, true, 3),
    ('Popcorn Shrimp', 'Popcorn-sized shrimp breaded and fried to perfection.', 7.99, true, 3),

    -- Seafood Sandwiches

    ('Shrimp Po'' Boy', 'Classic po'' boy sandwich filled with crispy fried shrimp and remoulade sauce.', 11.99, true, 4),
    ('Crab Cake Sandwich', 'Delicious crab cake sandwich served with lettuce, tomato, and tartar sauce.', 13.99, true, 4),
    ('Grilled Fish Sandwich', 'Grilled fish fillet served on a toasted bun with coleslaw and tartar sauce.', 10.99, true, 4),
    ('Lobster Roll', 'New England-style lobster roll served with buttered toast.', 15.99, true, 4),
    ('Tuna Melt', 'Tuna salad sandwich topped with melted cheddar cheese and served on grilled bread.', 9.99, true, 4),

    -- Seafood Combos

    ('Seafood Platter Combo', 'Choose two seafood platters and a side dish.', 29.99, true, 5),
    ('Surf and Turf Combo', 'A combination of grilled steak and shrimp served with mashed potatoes.', 24.99, true, 5),
    ('Fish and Shrimp Combo', 'Combo featuring a fish fillet and fried shrimp.', 18.99, true, 5),
    ('Seafood Pasta Combo', 'Pasta dish with shrimp, scallops, and crab meat served with garlic bread.', 21.99, true, 5),
    ('Seafood Skewers Combo', 'Grilled skewers with shrimp, scallops, and vegetables served with rice pilaf.', 23.99, true, 5)
	RETURNING *;
   
   -- Update menu items with promo codes for menu's on promotion
UPDATE menu_item
SET promo_code = 
    CASE name
        WHEN 'Classic Fish and Chips' THEN 'PROMO1'
        WHEN 'Fisherman''s Platter' THEN 'PROMO2'
        WHEN 'Seafood Sampler' THEN 'PROMO3'
        WHEN 'Seafood Feast' THEN 'PROMO4'
        WHEN 'Crispy Calamari' THEN 'PROMO5'
        WHEN 'Shrimp Po'' Boy' THEN 'PROMO4'
        WHEN 'Seafood Platter Combo' THEN 'PROMO2'
        ELSE NULL
    END
WHERE category_id IN (1, 2, 3, 4, 5);

-- insert into composite_menu_ingredients table
--- Insert into composite ingredients and menu

-- Insert statements for Classic Fish and Chips
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cod Fillets'), (SELECT menu_item_id FROM menu_item WHERE name = 'Classic Fish and Chips'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Potatoes'), (SELECT menu_item_id FROM menu_item WHERE name = 'Classic Fish and Chips'), 0.5),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Vegetable Oil'), (SELECT menu_item_id FROM menu_item WHERE name = 'Classic Fish and Chips'), 0.5)
ON CONFLICT DO NOTHING
RETURNING *;

-- Insert statements for Fisherman's Platter
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cod Fillets'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fisherman''s Platter'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fisherman''s Platter'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Calamari Rings'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fisherman''s Platter'), 1)
ON CONFLICT DO NOTHING
RETURNING *;

-- Insert statements for Shrimp Basket
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Shrimp Basket'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Potatoes'), (SELECT menu_item_id FROM menu_item WHERE name = 'Shrimp Basket'), 0.5),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Vegetable Oil'), (SELECT menu_item_id FROM menu_item WHERE name = 'Shrimp Basket'), 0.5)
ON CONFLICT DO NOTHING
RETURNING *;

-- Insert statements for Fish Taco Plate
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cod Fillets'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish Taco Plate'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Tortillas'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish Taco Plate'), 2),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Lettuce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish Taco Plate'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Tomato'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish Taco Plate'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Salsa'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish Taco Plate'), 1)
ON CONFLICT DO nothing 
RETURNING *;

-- Insert statements for Seafood Poutine
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Fries'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Poutine'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cheese Curds'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Poutine'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Gravy Mix'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Poutine'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Fried Clam Strips'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Poutine'), 1)
ON CONFLICT DO NOTHING
RETURNING *;

-- Insert statements for Seafood Sampler
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Sampler'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Calamari Rings'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Sampler'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Crab Cakes'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Sampler'), 1)
--    ((SELECT ingredients_id FROM ingredients WHERE name = 'Fried Oysters'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Sampler'), 1)
ON CONFLICT DO NOTHING
RETURNING *;


-- Insert statements for Seafood Feast
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Lobster Tails'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Feast'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Feast'), 1)
--    ((SELECT ingredients_id FROM ingredients WHERE name = 'Scallops'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Feast'), 1)
--    ((SELECT ingredients_id FROM ingredients WHERE name = 'Garlic Butter'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Feast'), 0.2)
ON CONFLICT DO NOTHING;

-- Insert statements for Clam Bake
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Clams'), (SELECT menu_item_id FROM menu_item WHERE name = 'Clam Bake'), 3),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Mussels'), (SELECT menu_item_id FROM menu_item WHERE name = 'Clam Bake'), 3),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Corn'), (SELECT menu_item_id FROM menu_item WHERE name = 'Clam Bake'), 2),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Potatoes'), (SELECT menu_item_id FROM menu_item WHERE name = 'Clam Bake'), 2)
ON CONFLICT DO NOTHING;

-- Insert statements for Lobster Tail Dinner
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Lobster Tails'), (SELECT menu_item_id FROM menu_item WHERE name = 'Lobster Tail Dinner'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Mashed Potatoes'), (SELECT menu_item_id FROM menu_item WHERE name = 'Lobster Tail Dinner'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Seasonal Vegetables'), (SELECT menu_item_id FROM menu_item WHERE name = 'Lobster Tail Dinner'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Seafood Risotto
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Rice'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Risotto'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Risotto'), 1),
--    ((SELECT ingredients_id FROM ingredients WHERE name = 'Scallops'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Risotto'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Crab Meat'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Risotto'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Vegetable Stock'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Risotto'), 0.2)
ON CONFLICT DO NOTHING;

-- Insert statements for Crispy Calamari
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Calamari Rings'), (SELECT menu_item_id FROM menu_item WHERE name = 'Crispy Calamari'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Marinara Sauce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Crispy Calamari'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Coconut Shrimp
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Coconut Shrimp'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Coconut Flakes'), (SELECT menu_item_id FROM menu_item WHERE name = 'Coconut Shrimp'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Sweet Chili Sauce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Coconut Shrimp'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Fried Oysters
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Oysters'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fried Oysters'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Breadcrumbs'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fried Oysters'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cocktail Sauce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fried Oysters'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Fish Bites
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cod Fillets'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish Bites'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Tartar Sauce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish Bites'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Popcorn Shrimp
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Popcorn Shrimp'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Tartar Sauce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Popcorn Shrimp'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Shrimp Po' Boy
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Shrimp Po'' Boy'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'French Baguette'), (SELECT menu_item_id FROM menu_item WHERE name = 'Shrimp Po'' Boy'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Remoulade Sauce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Shrimp Po'' Boy'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Crab Cake Sandwich
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Crab Cakes'), (SELECT menu_item_id FROM menu_item WHERE name = 'Crab Cake Sandwich'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Lettuce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Crab Cake Sandwich'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Tomato'), (SELECT menu_item_id FROM menu_item WHERE name = 'Crab Cake Sandwich'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Tartar Sauce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Crab Cake Sandwich'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Grilled Fish Sandwich
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cod Fillets'), (SELECT menu_item_id FROM menu_item WHERE name = 'Grilled Fish Sandwich'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Lettuce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Grilled Fish Sandwich'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Tomato'), (SELECT menu_item_id FROM menu_item WHERE name = 'Grilled Fish Sandwich'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Tartar Sauce'), (SELECT menu_item_id FROM menu_item WHERE name = 'Grilled Fish Sandwich'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Lobster Roll
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Lobster Tails'), (SELECT menu_item_id FROM menu_item WHERE name = 'Lobster Roll'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Buttered Toast'), (SELECT menu_item_id FROM menu_item WHERE name = 'Lobster Roll'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Tuna Melt
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Tuna Salad'), (SELECT menu_item_id FROM menu_item WHERE name = 'Tuna Melt'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cheddar Cheese'), (SELECT menu_item_id FROM menu_item WHERE name = 'Tuna Melt'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Grilled Bread'), (SELECT menu_item_id FROM menu_item WHERE name = 'Tuna Melt'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Seafood Platter Combo
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cod Fillets'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Platter Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Platter Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Lobster Tails'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Platter Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Potatoes'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Platter Combo'), 0.5),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Vegetable Oil'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Platter Combo'), 0.5)
ON CONFLICT DO NOTHING;

-- Insert statements for Surf and Turf Combo
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
--    ((SELECT ingredients_id FROM ingredients WHERE name = 'Grilled Steak'), (SELECT menu_item_id FROM menu_item WHERE name = 'Surf and Turf Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Surf and Turf Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Mashed Potatoes'), (SELECT menu_item_id FROM menu_item WHERE name = 'Surf and Turf Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Seasonal Vegetables'), (SELECT menu_item_id FROM menu_item WHERE name = 'Surf and Turf Combo'), 0.2)
ON CONFLICT DO NOTHING;

-- Insert statements for Fish and Shrimp Combo
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Cod Fillets'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish and Shrimp Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish and Shrimp Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Fries'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish and Shrimp Combo'), 1)
--    ((SELECT ingredients_id FROM ingredients WHERE name = 'Coleslaw'), (SELECT menu_item_id FROM menu_item WHERE name = 'Fish and Shrimp Combo'), 1)
ON CONFLICT DO NOTHING;

-- Insert statements for Seafood Pasta Combo
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
--    ((SELECT ingredients_id FROM ingredients WHERE name = 'Pasta'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Pasta Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Pasta Combo'), 1),
--    ((SELECT ingredients_id FROM ingredients WHERE name = 'Scallops'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Pasta Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Crab Meat'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Pasta Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Garlic Bread'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Pasta Combo'), 0.2)
ON CONFLICT DO NOTHING;

-- Insert statements for Seafood Skewers Combo
INSERT INTO composite_menu_ingredients (ingredients_id, menu_item_id, quantity)
VALUES 
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Shrimp'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Skewers Combo'), 1),
--    ((SELECT ingredients_id FROM ingredients WHERE name = 'Scallops'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Skewers Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Vegetables'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Skewers Combo'), 1),
    ((SELECT ingredients_id FROM ingredients WHERE name = 'Rice Pilaf'), (SELECT menu_item_id FROM menu_item WHERE name = 'Seafood Skewers Combo'), 0.2)
ON CONFLICT DO NOTHING;

-- CUSTOMERS
-- Insert customers
---
insert into customer (first_name, last_name, phone, email) values ('Billie', 'Readwood', '220-153-1503', 'breadwood0@vistaprint.com');
insert into customer (first_name, last_name, phone, email) values ('Camel', 'Ebbings', '243-634-1611', 'cebbings1@plala.or.jp');
insert into customer (first_name, last_name, phone, email) values ('Elbertine', 'Hammerson', '442-592-3746', 'ehammerson2@nsw.gov.au');
insert into customer (first_name, last_name, phone, email) values ('Kial', 'Zahor', '713-900-7550', 'kzahor3@photobucket.com');
insert into customer (first_name, last_name, phone, email) values ('Laurel', 'Gile', '732-455-2807', 'lgile4@xinhuanet.com');
insert into customer (first_name, last_name, phone, email) values ('Devora', 'Chiverstone', '404-813-3014', 'dchiverstone5@woothemes.com');
insert into customer (first_name, last_name, phone, email) values ('Ike', 'Leuchars', '286-708-1107', 'ileuchars6@cafepress.com');
insert into customer (first_name, last_name, phone, email) values ('Philip', 'Metheringham', '948-741-7092', 'pmetheringham7@bloglovin.com');
insert into customer (first_name, last_name, phone, email) values ('Jose', 'Aberdalgy', '447-149-3037', 'jaberdalgy8@paypal.com');
insert into customer (first_name, last_name, phone, email) values ('Morly', 'Nunnery', '769-309-1284', 'mnunnery9@hexun.com');
insert into customer (first_name, last_name, phone, email) values ('Gabbie', 'Cajkler', '756-621-5068', 'gcajklera@last.fm');
insert into customer (first_name, last_name, phone, email) values ('Dyan', 'Warland', '474-139-9567', 'dwarlandb@soundcloud.com');
insert into customer (first_name, last_name, phone, email) values ('Silvia', 'Baudains', '438-824-1933', 'sbaudainsc@businesswire.com');
insert into customer (first_name, last_name, phone, email) values ('Keelia', 'Caveau', '909-218-2877', 'kcaveaud@cisco.com');
insert into customer (first_name, last_name, phone, email) values ('Rozina', 'Bane', '240-654-5335', 'rbanee@msn.com');
insert into customer (first_name, last_name, phone, email) values ('Preston', 'Catchpole', '154-235-6168', 'pcatchpolef@webs.com');
insert into customer (first_name, last_name, phone, email) values ('Othello', 'Staining', '638-553-8627', 'ostainingg@comcast.net');
insert into customer (first_name, last_name, phone, email) values ('Gallard', 'Turle', '198-356-7041', 'gturleh@odnoklassniki.ru');
insert into customer (first_name, last_name, phone, email) values ('Micaela', 'Hince', '856-987-4440', 'mhincei@xinhuanet.com');
insert into customer (first_name, last_name, phone, email) values ('Tana', 'Carne', '667-117-8569', 'tcarnej@illinois.edu');
insert into customer (first_name, last_name, phone, email) values ('Lilly', 'Buxey', '746-951-7836', 'lbuxeyk@wp.com');
insert into customer (first_name, last_name, phone, email) values ('Roxie', 'Mackin', '615-616-9454', 'rmackinl@netvibes.com');
insert into customer (first_name, last_name, phone, email) values ('Irma', 'Vettore', '261-697-6507', 'ivettorem@squidoo.com');
insert into customer (first_name, last_name, phone, email) values ('Alf', 'Jiruch', '781-422-3197', 'ajiruchn@goodreads.com');
insert into customer (first_name, last_name, phone, email) values ('Frazer', 'Willicott', '220-183-8224', 'fwillicotto@ovh.net');
insert into customer (first_name, last_name, phone, email) values ('Jess', 'Boat', '554-102-2927', 'jboatp@baidu.com');
insert into customer (first_name, last_name, phone, email) values ('Gayel', 'Muccino', '963-651-8827', 'gmuccinoq@bandcamp.com');
insert into customer (first_name, last_name, phone, email) values ('Jaimie', 'Kimber', '396-760-4698', 'jkimberr@myspace.com');
insert into customer (first_name, last_name, phone, email) values ('Christiano', 'Muscott', '983-455-5186', 'cmuscotts@1688.com');
insert into customer (first_name, last_name, phone, email) values ('Bink', 'McAless', '564-380-0623', 'bmcalesst@vistaprint.com');
insert into customer (first_name, last_name, phone, email) values ('Kilian', 'Burdett', '101-981-9813', 'kburdettu@gnu.org');
insert into customer (first_name, last_name, phone, email) values ('Saree', 'Yurkin', '516-690-2203', 'syurkinv@plala.or.jp');
insert into customer (first_name, last_name, phone, email) values ('Cheslie', 'Bannon', '331-964-9292', 'cbannonw@cnn.com');
insert into customer (first_name, last_name, phone, email) values ('Catarina', 'Oger', '974-470-3193', 'cogerx@epa.gov');
insert into customer (first_name, last_name, phone, email) values ('Shellysheldon', 'Defrain', '622-190-1379', 'sdefrainy@ovh.net');
insert into customer (first_name, last_name, phone, email) values ('Uri', 'Breissan', '820-126-8050', 'ubreissanz@wikipedia.org');
insert into customer (first_name, last_name, phone, email) values ('Joly', 'Brounfield', '125-571-5131', 'jbrounfield10@networksolutions.com');
insert into customer (first_name, last_name, phone, email) values ('Nevile', 'O''Donnelly', '829-137-8407', 'nodonnelly11@feedburner.com');
insert into customer (first_name, last_name, phone, email) values ('Pippo', 'Chadd', '331-787-1850', 'pchadd12@angelfire.com');
insert into customer (first_name, last_name, phone, email) values ('Maegan', 'Adamovicz', '555-579-4590', 'madamovicz13@washingtonpost.com');
insert into customer (first_name, last_name, phone, email) values ('Lexi', 'Ethelstone', '786-570-4878', 'lethelstone14@hud.gov');
insert into customer (first_name, last_name, phone, email) values ('Carrol', 'Hazeldine', '750-949-9718', 'chazeldine15@princeton.edu');
insert into customer (first_name, last_name, phone, email) values ('Bernelle', 'Babar', '665-421-8913', 'bbabar16@mlb.com');
insert into customer (first_name, last_name, phone, email) values ('Lulita', 'Gillean', '608-627-6463', 'lgillean17@bloglovin.com');
insert into customer (first_name, last_name, phone, email) values ('Welsh', 'McCrone', '615-605-6764', 'wmccrone18@yelp.com');
insert into customer (first_name, last_name, phone, email) values ('Ashlin', 'Osipenko', '984-729-5340', 'aosipenko19@cisco.com');
insert into customer (first_name, last_name, phone, email) values ('Mignon', 'Dormon', '223-387-5925', 'mdormon1a@slashdot.org');
insert into customer (first_name, last_name, phone, email) values ('Gherardo', 'Gwyer', '414-783-2753', 'ggwyer1b@upenn.edu');
insert into customer (first_name, last_name, phone, email) values ('Noelani', 'Tireman', '132-179-3496', 'ntireman1c@imdb.com');
insert into customer (first_name, last_name, phone, email) values ('Buckie', 'Hunnywell', '496-786-3356', 'bhunnywell1d@cmu.edu');
insert into customer (first_name, last_name, phone, email) values ('Bale', 'Foresight', '783-381-0295', 'bforesight1e@pagesperso-orange.fr');
insert into customer (first_name, last_name, phone, email) values ('Dyanna', 'Antonsson', '893-987-9903', 'dantonsson1f@nbcnews.com');
insert into customer (first_name, last_name, phone, email) values ('Rozelle', 'Bridgens', '317-361-9909', 'rbridgens1g@storify.com');
insert into customer (first_name, last_name, phone, email) values ('Blair', 'Tatem', '145-174-6083', 'btatem1h@scribd.com');
insert into customer (first_name, last_name, phone, email) values ('Barris', 'McInulty', '329-502-2610', 'bmcinulty1i@tuttocitta.it');
insert into customer (first_name, last_name, phone, email) values ('Heloise', 'Austick', '844-205-0622', 'haustick1j@merriam-webster.com');
insert into customer (first_name, last_name, phone, email) values ('Stanfield', 'Rossander', '170-874-4738', 'srossander1k@geocities.com');
insert into customer (first_name, last_name, phone, email) values ('Eloise', 'Willers', '842-675-5806', 'ewillers1l@chronoengine.com');
insert into customer (first_name, last_name, phone, email) values ('Kirbie', 'Barwick', '292-554-3573', 'kbarwick1m@forbes.com');
insert into customer (first_name, last_name, phone, email) values ('Amalea', 'Jentin', '519-817-1480', 'ajentin1n@nydailynews.com');
insert into customer (first_name, last_name, phone, email) values ('Berkly', 'Krebs', '282-182-7052', 'bkrebs1o@woothemes.com');
insert into customer (first_name, last_name, phone, email) values ('Merralee', 'Winpenny', '509-176-3749', 'mwinpenny1p@skype.com');
insert into customer (first_name, last_name, phone, email) values ('Gavra', 'Rollett', '280-640-2812', 'grollett1q@statcounter.com');
insert into customer (first_name, last_name, phone, email) values ('Hersh', 'Caig', '381-405-6674', 'hcaig1r@netscape.com');
insert into customer (first_name, last_name, phone, email) values ('Minerva', 'Dionis', '514-777-8701', 'mdionis1s@hp.com');
insert into customer (first_name, last_name, phone, email) values ('Fleur', 'McRoberts', '185-464-8686', 'fmcroberts1t@artisteer.com');
insert into customer (first_name, last_name, phone, email) values ('Alric', 'MacDonagh', '420-260-4020', 'amacdonagh1u@hp.com');
insert into customer (first_name, last_name, phone, email) values ('Lorilee', 'Britee', '957-160-9655', 'lbritee1v@blogtalkradio.com');
insert into customer (first_name, last_name, phone, email) values ('Kaleena', 'Antonijevic', '424-241-9565', 'kantonijevic1w@symantec.com');
insert into customer (first_name, last_name, phone, email) values ('Harlene', 'Cawthron', '259-169-3776', 'hcawthron1x@seattletimes.com');
insert into customer (first_name, last_name, phone, email) values ('Bellanca', 'McIlherran', '996-555-2904', 'bmcilherran1y@artisteer.com');
insert into customer (first_name, last_name, phone, email) values ('Minni', 'Fitzgerald', '114-278-5348', 'mfitzgerald1z@rediff.com');
insert into customer (first_name, last_name, phone, email) values ('Josefa', 'Rayburn', '222-545-0652', 'jrayburn20@usda.gov');
insert into customer (first_name, last_name, phone, email) values ('Misty', 'Thursby', '927-849-2649', 'mthursby21@theglobeandmail.com');
insert into customer (first_name, last_name, phone, email) values ('Reinhold', 'Chittey', '898-156-2249', 'rchittey22@ycombinator.com');
insert into customer (first_name, last_name, phone, email) values ('Jerri', 'Manna', '182-798-8217', 'jmanna23@creativecommons.org');
insert into customer (first_name, last_name, phone, email) values ('Shalne', 'Plett', '178-175-6773', 'splett24@wsj.com');
insert into customer (first_name, last_name, phone, email) values ('Fidelity', 'Gerrett', '803-476-5340', 'fgerrett25@mac.com');
insert into customer (first_name, last_name, phone, email) values ('Lee', 'Kilgallen', '225-615-6783', 'lkilgallen26@reuters.com');
insert into customer (first_name, last_name, phone, email) values ('Callida', 'Kreuzer', '582-199-6637', 'ckreuzer27@thetimes.co.uk');
insert into customer (first_name, last_name, phone, email) values ('Bev', 'McCobb', '867-390-6668', 'bmccobb28@utexas.edu');
insert into customer (first_name, last_name, phone, email) values ('Thibaud', 'Turpey', '160-758-6829', 'tturpey29@biglobe.ne.jp');
insert into customer (first_name, last_name, phone, email) values ('Gerald', 'MacColgan', '485-962-0839', 'gmaccolgan2a@chicagotribune.com');
insert into customer (first_name, last_name, phone, email) values ('Flinn', 'O''Dwyer', '514-872-0176', 'fodwyer2b@edublogs.org');
insert into customer (first_name, last_name, phone, email) values ('Caryn', 'Alday', '683-615-0118', 'calday2c@time.com');
insert into customer (first_name, last_name, phone, email) values ('Staci', 'Starten', '528-974-9823', 'sstarten2d@wordpress.org');
insert into customer (first_name, last_name, phone, email) values ('Bonnie', 'Portal', '336-255-9465', 'bportal2e@mapquest.com');
insert into customer (first_name, last_name, phone, email) values ('Raina', 'Duester', '117-310-8186', 'rduester2f@altervista.org');
insert into customer (first_name, last_name, phone, email) values ('Judon', 'Winson', '664-440-3571', 'jwinson2g@w3.org');
insert into customer (first_name, last_name, phone, email) values ('Doti', 'Jurges', '818-264-0643', 'djurges2h@techcrunch.com');
insert into customer (first_name, last_name, phone, email) values ('Theodore', 'Trevains', '277-823-1465', 'ttrevains2i@telegraph.co.uk');
insert into customer (first_name, last_name, phone, email) values ('Van', 'Barnfather', '821-970-5047', 'vbarnfather2j@rakuten.co.jp');
insert into customer (first_name, last_name, phone, email) values ('Fonzie', 'Bortolotti', '118-649-3170', 'fbortolotti2k@homestead.com');
insert into customer (first_name, last_name, phone, email) values ('Kimble', 'Stayte', '865-686-8372', 'kstayte2l@skype.com');
insert into customer (first_name, last_name, phone, email) values ('Ame', 'De Wolfe', '242-139-9684', 'adewolfe2m@hp.com');
insert into customer (first_name, last_name, phone, email) values ('Pepita', 'Vasyutochkin', '237-201-4652', 'pvasyutochkin2n@vistaprint.com');
insert into customer (first_name, last_name, phone, email) values ('Wallace', 'Fahrenbach', '592-483-3664', 'wfahrenbach2o@angelfire.com');
insert into customer (first_name, last_name, phone, email) values ('Patrick', 'Magarrell', '850-766-5264', 'pmagarrell2p@moonfruit.com');
insert into customer (first_name, last_name, phone, email) values ('Hobey', 'Szymanowicz', '112-226-1445', 'hszymanowicz2q@unc.edu');
insert into customer (first_name, last_name, phone, email) values ('Merrile', 'Nickless', '814-892-3988', 'mnickless2r@sakura.ne.jp');
insert into customer (first_name, last_name, phone, email) values ('Genny', 'Toop', '310-465-4578', 'gtoop2s@ucla.edu');
insert into customer (first_name, last_name, phone, email) values ('Salomone', 'McKennan', '391-744-6266', 'smckennan2t@marriott.com');
insert into customer (first_name, last_name, phone, email) values ('Jesus', 'Scoggin', '335-444-0306', 'jscoggin2u@seattletimes.com');
insert into customer (first_name, last_name, phone, email) values ('Penni', 'Jancso', '136-444-2906', 'pjancso2v@jimdo.com');
insert into customer (first_name, last_name, phone, email) values ('Oran', 'Witard', '430-889-4875', 'owitard2w@dagondesign.com');
insert into customer (first_name, last_name, phone, email) values ('Jeannie', 'Roggeman', '342-577-9748', 'jroggeman2x@weather.com');
insert into customer (first_name, last_name, phone, email) values ('Sigmund', 'Cogswell', '349-953-4315', 'scogswell2y@ucoz.ru');
insert into customer (first_name, last_name, phone, email) values ('Marin', 'Gillies', '376-871-7253', 'mgillies2z@cbc.ca');
insert into customer (first_name, last_name, phone, email) values ('Ulysses', 'Mesnard', '854-370-2214', 'umesnard30@cnet.com');
insert into customer (first_name, last_name, phone, email) values ('Elton', 'Sawforde', '531-733-0865', 'esawforde31@hatena.ne.jp');
insert into customer (first_name, last_name, phone, email) values ('Katharyn', 'Cogin', '422-234-9267', 'kcogin32@woothemes.com');
insert into customer (first_name, last_name, phone, email) values ('Justis', 'Hatchette', '209-585-0621', 'jhatchette33@washington.edu');
insert into customer (first_name, last_name, phone, email) values ('Liam', 'Lawful', '985-305-5327', 'llawful34@joomla.org');
insert into customer (first_name, last_name, phone, email) values ('Hanny', 'Elcock', '438-102-7187', 'helcock35@hp.com');
insert into customer (first_name, last_name, phone, email) values ('Chicky', 'Bentke', '453-175-3105', 'cbentke36@topsy.com');
insert into customer (first_name, last_name, phone, email) values ('Zola', 'Vanin', '656-106-9459', 'zvanin37@cam.ac.uk');
insert into customer (first_name, last_name, phone, email) values ('Birch', 'O''Bruen', '617-886-8064', 'bobruen38@intel.com');
insert into customer (first_name, last_name, phone, email) values ('Dell', 'Parram', '745-934-7755', 'dparram39@hexun.com');
insert into customer (first_name, last_name, phone, email) values ('Dalt', 'Sapson', '975-737-3923', 'dsapson3a@youku.com');
insert into customer (first_name, last_name, phone, email) values ('Coop', 'Bleyman', '958-578-7930', 'cbleyman3b@seattletimes.com');
insert into customer (first_name, last_name, phone, email) values ('Meier', 'Ludwikiewicz', '632-550-6390', 'mludwikiewicz3c@nature.com');
insert into customer (first_name, last_name, phone, email) values ('Irene', 'Boutellier', '294-528-3375', 'iboutellier3d@gnu.org');
insert into customer (first_name, last_name, phone, email) values ('Brandtr', 'Redding', '599-999-7528', 'bredding3e@dailymotion.com');
insert into customer (first_name, last_name, phone, email) values ('Lalo', 'Jarvie', '186-926-2405', 'ljarvie3f@over-blog.com');
insert into customer (first_name, last_name, phone, email) values ('Devonne', 'Collis', '624-455-1723', 'dcollis3g@163.com');
insert into customer (first_name, last_name, phone, email) values ('Ric', 'Monelle', '815-324-8616', 'rmonelle3h@shareasale.com');
insert into customer (first_name, last_name, phone, email) values ('Gabe', 'Lyman', '912-408-0313', 'glyman3i@weather.com');
insert into customer (first_name, last_name, phone, email) values ('Garreth', 'Grace', '546-190-5798', 'ggrace3j@ed.gov');
insert into customer (first_name, last_name, phone, email) values ('Clara', 'Campo', '595-915-8511', 'ccampo3k@example.com');
insert into customer (first_name, last_name, phone, email) values ('Quintilla', 'Adamczyk', '126-393-4625', 'qadamczyk3l@berkeley.edu');
insert into customer (first_name, last_name, phone, email) values ('Griselda', 'Basnett', '301-135-6757', 'gbasnett3m@unblog.fr');
insert into customer (first_name, last_name, phone, email) values ('Raddie', 'Bootes', '437-452-2773', 'rbootes3n@vkontakte.ru');
insert into customer (first_name, last_name, phone, email) values ('Mignon', 'Chinn', '625-827-7379', 'mchinn3o@cbslocal.com');
insert into customer (first_name, last_name, phone, email) values ('Harmon', 'Godfroy', '913-428-0856', 'hgodfroy3p@discovery.com');
insert into customer (first_name, last_name, phone, email) values ('Liliane', 'Askwith', '402-684-2512', 'laskwith3q@woothemes.com');
insert into customer (first_name, last_name, phone, email) values ('Irwinn', 'Pilgrim', '153-213-4678', 'ipilgrim3r@blinklist.com');
insert into customer (first_name, last_name, phone, email) values ('Gennie', 'Wash', '740-668-7005', 'gwash3s@cpanel.net');
insert into customer (first_name, last_name, phone, email) values ('Idalia', 'Cotter', '486-168-0528', 'icotter3t@shutterfly.com');
insert into customer (first_name, last_name, phone, email) values ('Minette', 'Gert', '128-952-2390', 'mgert3u@wisc.edu');
insert into customer (first_name, last_name, phone, email) values ('Simonne', 'Stiven', '232-531-1168', 'sstiven3v@51.la');
insert into customer (first_name, last_name, phone, email) values ('Frederic', 'Clayhill', '877-428-5149', 'fclayhill3w@163.com');
insert into customer (first_name, last_name, phone, email) values ('Christy', 'Artiss', '263-463-1444', 'cartiss3x@last.fm');
insert into customer (first_name, last_name, phone, email) values ('Reynold', 'Jessen', '758-932-7851', 'rjessen3y@sun.com');
insert into customer (first_name, last_name, phone, email) values ('Leola', 'Rudsdale', '258-951-1242', 'lrudsdale3z@prweb.com');
insert into customer (first_name, last_name, phone, email) values ('Myles', 'MacElharge', '753-934-5499', 'mmacelharge40@engadget.com');
insert into customer (first_name, last_name, phone, email) values ('Brook', 'Tearle', '642-642-3155', 'btearle41@webeden.co.uk');
insert into customer (first_name, last_name, phone, email) values ('Hastings', 'Phippard', '321-171-7107', 'hphippard42@amazon.co.uk');
insert into customer (first_name, last_name, phone, email) values ('Tammi', 'Ibbotson', '348-312-3366', 'tibbotson43@theglobeandmail.com');
insert into customer (first_name, last_name, phone, email) values ('Gottfried', 'Verrico', '494-488-4509', 'gverrico44@ycombinator.com');
insert into customer (first_name, last_name, phone, email) values ('Faina', 'Baleine', '998-966-9368', 'fbaleine45@plala.or.jp');
insert into customer (first_name, last_name, phone, email) values ('Cyndi', 'Cansfield', '565-706-7713', 'ccansfield46@spotify.com');
insert into customer (first_name, last_name, phone, email) values ('Bernita', 'Todhunter', '575-216-4475', 'btodhunter47@cnn.com');
insert into customer (first_name, last_name, phone, email) values ('Lydon', 'Champkin', '411-620-0415', 'lchampkin48@ibm.com');
insert into customer (first_name, last_name, phone, email) values ('Dian', 'Laws', '180-675-2172', 'dlaws49@elpais.com');
insert into customer (first_name, last_name, phone, email) values ('Bertie', 'Matissoff', '656-885-4606', 'bmatissoff4a@businessinsider.com');
insert into customer (first_name, last_name, phone, email) values ('Burch', 'Iskowitz', '422-522-0096', 'biskowitz4b@a8.net');
insert into customer (first_name, last_name, phone, email) values ('Donaugh', 'Saye', '299-999-3906', 'dsaye4c@ask.com');
insert into customer (first_name, last_name, phone, email) values ('Nola', 'Matantsev', '280-576-0266', 'nmatantsev4d@over-blog.com');
insert into customer (first_name, last_name, phone, email) values ('Prince', 'Goldhawk', '269-336-1708', 'pgoldhawk4e@homestead.com');
insert into customer (first_name, last_name, phone, email) values ('Brody', 'Tilney', '911-918-5760', 'btilney4f@mediafire.com');
insert into customer (first_name, last_name, phone, email) values ('Ariel', 'Mc Dermid', '229-540-0132', 'amcdermid4g@walmart.com');
insert into customer (first_name, last_name, phone, email) values ('Ivy', 'Larcombe', '978-712-4443', 'ilarcombe4h@weebly.com');
insert into customer (first_name, last_name, phone, email) values ('Nickie', 'Rassell', '150-259-3533', 'nrassell4i@arizona.edu');
insert into customer (first_name, last_name, phone, email) values ('Nevin', 'Bilbrey', '984-222-3633', 'nbilbrey4j@pcworld.com');
insert into customer (first_name, last_name, phone, email) values ('Feliks', 'Karlowicz', '353-488-2895', 'fkarlowicz4k@ow.ly');
insert into customer (first_name, last_name, phone, email) values ('Kennan', 'Janz', '134-997-5296', 'kjanz4l@about.com');
insert into customer (first_name, last_name, phone, email) values ('Irwinn', 'Thumnel', '306-505-7986', 'ithumnel4m@ocn.ne.jp');
insert into customer (first_name, last_name, phone, email) values ('Garrek', 'Stocker', '927-473-0610', 'gstocker4n@princeton.edu');
insert into customer (first_name, last_name, phone, email) values ('Rodger', 'Dransfield', '918-797-6364', 'rdransfield4o@fastcompany.com');
insert into customer (first_name, last_name, phone, email) values ('Osbourne', 'Worster', '915-161-3667', 'oworster4p@e-recht24.de');
insert into customer (first_name, last_name, phone, email) values ('Raynell', 'Dregan', '823-663-8146', 'rdregan4q@imageshack.us');
insert into customer (first_name, last_name, phone, email) values ('Eba', 'Portwaine', '543-420-7446', 'eportwaine4r@163.com');
insert into customer (first_name, last_name, phone, email) values ('Loleta', 'Kiffin', '836-181-2401', 'lkiffin4s@usda.gov');
insert into customer (first_name, last_name, phone, email) values ('Else', 'Bende', '400-639-5997', 'ebende4t@gmpg.org');
insert into customer (first_name, last_name, phone, email) values ('Reade', 'Lyddyard', '897-825-3845', 'rlyddyard4u@yahoo.com');
insert into customer (first_name, last_name, phone, email) values ('Lucio', 'Vasquez', '274-719-7350', 'lvasquez4v@blogger.com');
insert into customer (first_name, last_name, phone, email) values ('Gav', 'Camin', '967-596-5295', 'gcamin4w@purevolume.com');
insert into customer (first_name, last_name, phone, email) values ('Jasmina', 'Kemmett', '963-350-1581', 'jkemmett4x@usa.gov');
insert into customer (first_name, last_name, phone, email) values ('Lu', 'Chasier', '470-692-1485', 'lchasier4y@samsung.com');
insert into customer (first_name, last_name, phone, email) values ('Briney', 'Winpenny', '606-957-5953', 'bwinpenny4z@networkadvertising.org');
insert into customer (first_name, last_name, phone, email) values ('Henrietta', 'Pollitt', '950-531-2824', 'hpollitt50@mlb.com');
insert into customer (first_name, last_name, phone, email) values ('Dreddy', 'Hanmore', '277-789-6371', 'dhanmore51@webnode.com');
insert into customer (first_name, last_name, phone, email) values ('Celine', 'Baine', '730-203-0053', 'cbaine52@mit.edu');
insert into customer (first_name, last_name, phone, email) values ('Valentine', 'Ashmore', '212-225-4201', 'vashmore53@oracle.com');
insert into customer (first_name, last_name, phone, email) values ('Bamby', 'Nealand', '566-388-0343', 'bnealand54@cisco.com');
insert into customer (first_name, last_name, phone, email) values ('Mason', 'Rembaud', '568-120-0630', 'mrembaud55@rediff.com');
insert into customer (first_name, last_name, phone, email) values ('Inger', 'Rockhill', '279-148-9555', 'irockhill56@ovh.net');
insert into customer (first_name, last_name, phone, email) values ('Clerkclaude', 'Pelerin', '223-336-0777', 'cpelerin57@bluehost.com');
insert into customer (first_name, last_name, phone, email) values ('Artie', 'Southerill', '792-730-7847', 'asoutherill58@telegraph.co.uk');
insert into customer (first_name, last_name, phone, email) values ('Wilhelmine', 'Jarmaine', '186-598-0977', 'wjarmaine59@ihg.com');
insert into customer (first_name, last_name, phone, email) values ('Toddie', 'Wibberley', '787-510-8923', 'twibberley5a@boston.com');
insert into customer (first_name, last_name, phone, email) values ('Carleton', 'Stanes', '411-818-6624', 'cstanes5b@abc.net.au');
insert into customer (first_name, last_name, phone, email) values ('Angil', 'Nares', '457-613-6513', 'anares5c@yellowbook.com');
insert into customer (first_name, last_name, phone, email) values ('Whittaker', 'Stuttman', '126-347-0108', 'wstuttman5d@mit.edu');
insert into customer (first_name, last_name, phone, email) values ('Ruthann', 'Wood', '767-673-5403', 'rwood5e@marriott.com');
insert into customer (first_name, last_name, phone, email) values ('Jennee', 'Clousley', '122-555-6118', 'jclousley5f@blogger.com');
insert into customer (first_name, last_name, phone, email) values ('Kaleena', 'Botterman', '433-293-4701', 'kbotterman5g@phoca.cz');
insert into customer (first_name, last_name, phone, email) values ('Hewet', 'Downing', '941-576-0210', 'hdowning5h@army.mil');
insert into customer (first_name, last_name, phone, email) values ('Odetta', 'Kondratowicz', '585-362-2451', 'okondratowicz5i@seesaa.net');
insert into customer (first_name, last_name, phone, email) values ('Lilly', 'Chaperlin', '872-167-3917', 'lchaperlin5j@deliciousdays.com');


-- insert customer id into shopping cart to generate cart id for each customer:
INSERT INTO shopping_cart (customer_id)
VALUES
(16),
(18),
(1),
(10),
(20),
(15),
(3),
(8),
(10),
(14),
(10),
(3),
(17),
(18),
(4),
(2),
(15),
(20),
(12),
(1),
(4),
(17),
(17),
(17),
(14),
(13),
(15),
(17),
(18),
(10),
(9),
(6),
(18),
(4),
(6),
(17),
(1),
(8),
(11),
(3),
(19),
(2),
(12),
(14),
(14),
(13),
(4),
(3),
(19),
(4),
(3),
(8),
(7),
(19),
(13),
(15),
(19),
(2),
(8),
(6),
(13),
(2),
(17),
(16),
(2),
(8),
(16),
(9),
(6),
(5),
(17),
(2),
(8),
(3),
(12),
(16),
(13),
(3),
(10),
(4),
(5),
(19),
(12),
(14),
(14),
(5),
(4),
(14),
(3),
(16),
(8),
(11),
(1),
(16),
(16),
(8),
(20),
(12),
(11),
(16),
(12),
(12),
(11),
(11),
(7),
(12),
(14),
(19),
(1),
(9),
(9),
(8),
(1),
(4),
(12),
(9),
(7),
(1),
(14),
(1),
(9),
(16),
(14),
(20),
(15),
(13),
(10),
(11),
(18),
(5),
(4),
(6),
(8),
(7),
(8),
(6),
(14),
(16),
(9),
(3),
(2),
(18),
(20),
(14),
(7),
(7),
(12),
(19),
(2),
(13),
(6),
(17),
(12),
(7),
(3),
(12),
(1),
(7),
(4),
(15),
(13),
(10),
(10),
(12),
(7),
(16),
(16),
(3),
(10),
(4),
(6),
(5),
(2),
(1),
(4),
(5),
(2),
(16),
(6),
(4),
(5),
(16),
(15),
(1),
(16),
(1),
(12),
(20),
(1),
(7),
(11),
(2),
(10),
(20),
(1),
(10),
(4),
(7),
(9),
(10),
(50),
(51),
(52),
(53),
(12)
   RETURNING *;
  
  
  -- insert cart items

----
----
INSERT INTO shopping_cart_items (cart_id, menu_item_id, price) 
VALUES 
(57, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(57, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(28, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(6, 10, (SELECT price FROM menu_item WHERE menu_item_id = 10)),
(105, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(90, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(58, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(163, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(152, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(67, 10, (SELECT price FROM menu_item WHERE menu_item_id = 10)),
(62, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(196, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(77, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(84, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(181, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(75, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(51, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(90, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(22, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(131, 23, (SELECT price FROM menu_item WHERE menu_item_id = 23)),
(13, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(7, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(4, 12, (SELECT price FROM menu_item WHERE menu_item_id = 12)),
(92, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(90, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(177, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(140, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(146, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(107, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(152, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(43, 1, (SELECT price FROM menu_item WHERE menu_item_id = 1)),
(58, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(195, 24, (SELECT price FROM menu_item WHERE menu_item_id = 24)),
(127, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(32, 23, (SELECT price FROM menu_item WHERE menu_item_id = 23)),
(121, 14, (SELECT price FROM menu_item WHERE menu_item_id = 14)),
(89, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(165, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(163, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(193, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(22, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(166, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(139, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(69, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(151, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(8, 10, (SELECT price FROM menu_item WHERE menu_item_id = 10)),
(25, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(30, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(117, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(102, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(142, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(86, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(15, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(165, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(10, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(115, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(122, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(104, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(21, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(71, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(81, 12, (SELECT price FROM menu_item WHERE menu_item_id = 12)),
(173, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(127, 10, (SELECT price FROM menu_item WHERE menu_item_id = 10)),
(121, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(56, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(52, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(168, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(171, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(121, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(202, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(28, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(97, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(103, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(112, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(28, 23, (SELECT price FROM menu_item WHERE menu_item_id = 23)),
(52, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(151, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(144, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(185, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(162, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(65, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(146, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(84, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(75, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(169, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(197, 23, (SELECT price FROM menu_item WHERE menu_item_id = 23)),
(22, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(76, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(152, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(38, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(129, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(182, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(158, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(189, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(200, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(45, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(69, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(72, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(127, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(182, 12, (SELECT price FROM menu_item WHERE menu_item_id = 12)),
(48, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(5, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(140, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(147, 12, (SELECT price FROM menu_item WHERE menu_item_id = 12)),
(112, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(122, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(2, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(176, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(86, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(12, 10, (SELECT price FROM menu_item WHERE menu_item_id = 10)),
(124, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(144, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(20, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(59, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(22, 24, (SELECT price FROM menu_item WHERE menu_item_id = 24)),
(175, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(16, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(25, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(37, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(88, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(1, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(162, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(14, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(108, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(15, 1, (SELECT price FROM menu_item WHERE menu_item_id = 1)),
(174, 10, (SELECT price FROM menu_item WHERE menu_item_id = 10)),
(56, 12, (SELECT price FROM menu_item WHERE menu_item_id = 12)),
(137, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(72, 1, (SELECT price FROM menu_item WHERE menu_item_id = 1)),
(94, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(69, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(159, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(163, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(35, 12, (SELECT price FROM menu_item WHERE menu_item_id = 12)),
(117, 1, (SELECT price FROM menu_item WHERE menu_item_id = 1)),
(33, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(152, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(88, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(152, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(21, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(96, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(170, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(190, 23, (SELECT price FROM menu_item WHERE menu_item_id = 23)),
(171, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(122, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(50, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(153, 10, (SELECT price FROM menu_item WHERE menu_item_id = 10)),
(168, 24, (SELECT price FROM menu_item WHERE menu_item_id = 24)),
(2, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(98, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(141, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(47, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(104, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(19, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(68, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(22, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(78, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(119, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(131, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(121, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(198, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(31, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(58, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(114, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(192, 24, (SELECT price FROM menu_item WHERE menu_item_id = 24)),
(157, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(123, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(29, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(178, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(92, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(89, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(39, 10, (SELECT price FROM menu_item WHERE menu_item_id = 10)),
(38, 24, (SELECT price FROM menu_item WHERE menu_item_id = 24)),
(74, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(200, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(142, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(67, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(199, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(202, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(36, 24, (SELECT price FROM menu_item WHERE menu_item_id = 24)),
(204, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(194, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(172, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(94, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(158, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(195, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(14, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(12, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(97, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(151, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(9, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(103, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(76, 14, (SELECT price FROM menu_item WHERE menu_item_id = 14)),
(81, 1, (SELECT price FROM menu_item WHERE menu_item_id = 1)),
(74, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(74, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(13, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(63, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(123, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(44, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),  
(197, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(18, 23, (SELECT price FROM menu_item WHERE menu_item_id = 23)),
(42, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(55, 23, (SELECT price FROM menu_item WHERE menu_item_id = 23)),
(135, 14, (SELECT price FROM menu_item WHERE menu_item_id = 14)),
(106, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(165, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(126, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(61, 4, (SELECT price FROM menu_item WHERE menu_item_id = 4)),
(144, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(80, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(9, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(144, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(3, 23, (SELECT price FROM menu_item WHERE menu_item_id = 23)),
(110, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(131, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(145, 24, (SELECT price FROM menu_item WHERE menu_item_id = 24)),
(165, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(195, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(106, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(21, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(44, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(147, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(102, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(116, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(66, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(104, 12, (SELECT price FROM menu_item WHERE menu_item_id = 12)),
(15, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(103, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(14, 14, (SELECT price FROM menu_item WHERE menu_item_id = 14)),
(55, 15, (SELECT price FROM menu_item WHERE menu_item_id = 15)),
(192, 1, (SELECT price FROM menu_item WHERE menu_item_id = 1)),
(127, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(100, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(107, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(39, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(83, 14, (SELECT price FROM menu_item WHERE menu_item_id = 14)),
(18, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(40, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(16, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(112, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(10, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(137, 23, (SELECT price FROM menu_item WHERE menu_item_id = 23)),
(26, 14, (SELECT price FROM menu_item WHERE menu_item_id = 14)),
(202, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(185, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(198, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(167, 1, (SELECT price FROM menu_item WHERE menu_item_id = 1)),
(177, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(79, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(172, 1, (SELECT price FROM menu_item WHERE menu_item_id = 1)),
(127, 14, (SELECT price FROM menu_item WHERE menu_item_id = 14)),
(46, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(111, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(68, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(89, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(164, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(77, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(79, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(107, 2, (SELECT price FROM menu_item WHERE menu_item_id = 2)),
(159, 12, (SELECT price FROM menu_item WHERE menu_item_id = 12)),
(52, 1, (SELECT price FROM menu_item WHERE menu_item_id = 1)),
(51, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(31, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(51, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(68, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(62, 10, (SELECT price FROM menu_item WHERE menu_item_id = 10)),
(147, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(77, 5, (SELECT price FROM menu_item WHERE menu_item_id = 5)),
(144, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(94, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(192, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(72, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(198, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(44, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(14, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(49, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(103, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(164, 25, (SELECT price FROM menu_item WHERE menu_item_id = 25)),
(201, 14, (SELECT price FROM menu_item WHERE menu_item_id = 14)),
(62, 14, (SELECT price FROM menu_item WHERE menu_item_id = 14)),
(148, 20, (SELECT price FROM menu_item WHERE menu_item_id = 20)),
(182, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(182, 16, (SELECT price FROM menu_item WHERE menu_item_id = 16)),
(114, 8, (SELECT price FROM menu_item WHERE menu_item_id = 8)),
(62, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(62, 7, (SELECT price FROM menu_item WHERE menu_item_id = 7)),
(204, 18, (SELECT price FROM menu_item WHERE menu_item_id = 18)),
(75, 19, (SELECT price FROM menu_item WHERE menu_item_id = 19)),
(56, 6, (SELECT price FROM menu_item WHERE menu_item_id = 6)),
(79, 13, (SELECT price FROM menu_item WHERE menu_item_id = 13)),
(132, 22, (SELECT price FROM menu_item WHERE menu_item_id = 22)),
(203, 9, (SELECT price FROM menu_item WHERE menu_item_id = 9)),
(112, 17, (SELECT price FROM menu_item WHERE menu_item_id = 17)),
(147, 3, (SELECT price FROM menu_item WHERE menu_item_id = 3)),
(174, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(163, 24, (SELECT price FROM menu_item WHERE menu_item_id = 24)),
(144, 11, (SELECT price FROM menu_item WHERE menu_item_id = 11)),
(23, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21)),
(76, 21, (SELECT price FROM menu_item WHERE menu_item_id = 21))
RETURNING *;




-- Insert delivery addresses for customers
--INSERT INTO delivery_address (customer_id, address_type, city, province, street, postal_code)


insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (121, 'Home', 'New York City', 'NY', '2 Myrtle Terrace', '10029');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (20, 'Home', 'Rochester', 'NY', '77395 Algoma Lane', '14609');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (121, 'Work', 'San Jose', 'CA', '04 Prairie Rose Hill', '95150');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (150, 'Home', 'Charleston', 'SC', '191 Linden Center', '29403');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (189, 'Home', 'Amarillo', 'TX', '585 Farragut Circle', '79105');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (184, 'Work', 'Norwalk', 'CT', '957 Utah Hill', '06859');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (196, 'Home', 'Jacksonville', 'FL', '9 Moose Pass', '32215');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (137, 'Work', 'Charleston', 'WV', '665 Loeprich Center', '25321');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (191, 'Work', 'Albany', 'NY', '43310 Elka Road', '12205');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (167, 'Work', 'Fort Worth', 'TX', '60525 Vermont Trail', '76147');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (25, 'Home', 'Portland', 'OR', '9181 Vera Plaza', '97271');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (192, 'Work', 'Washington', 'DC', '48 Maryland Park', '20073');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (164, 'Home', 'Greensboro', 'NC', '55 Fuller Lane', '27455');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (112, 'Work', 'Salem', 'OR', '9923 Red Cloud Street', '97306');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (102, 'Work', 'Memphis', 'TN', '60 International Crossing', '38197');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (58, 'Work', 'Columbus', 'OH', '6255 Sycamore Avenue', '43210');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (132, 'Home', 'Albany', 'NY', '247 Kings Court', '12242');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (4, 'Work', 'Newark', 'NJ', '693 Browning Pass', '07195');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (37, 'Home', 'Charleston', 'WV', '5 Weeping Birch Place', '25305');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (177, 'Work', 'San Francisco', 'CA', '6714 Redwing Point', '94105');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (26, 'Work', 'Helena', 'MT', '711 Goodland Road', '59623');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (57, 'Work', 'Chicago', 'IL', '1 Swallow Trail', '60624');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (10, 'Home', 'Rochester', 'NY', '2 Muir Pass', '14614');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (45, 'Work', 'Boulder', 'CO', '2 Armistice Drive', '80328');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (183, 'Home', 'Atlanta', 'GA', '416 Lukken Parkway', '30301');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (83, 'Work', 'Norfolk', 'VA', '45 Redwing Avenue', '23520');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (164, 'Home', 'Charlotte', 'NC', '391 Grim Crossing', '28256');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (193, 'Work', 'Hartford', 'CT', '29127 Butterfield Trail', '06105');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (46, 'Work', 'San Antonio', 'TX', '0091 Sutherland Circle', '78260');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (160, 'Home', 'Houston', 'TX', '7870 Coleman Road', '77045');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (47, 'Work', 'Indianapolis', 'IN', '53 Springs Lane', '46226');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (74, 'Work', 'Apache Junction', 'AZ', '47892 Packers Trail', '85219');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (168, 'Work', 'Houston', 'TX', '52347 Jenifer Court', '77245');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (36, 'Home', 'Champaign', 'IL', '3616 Waubesa Lane', '61825');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (173, 'Work', 'Hattiesburg', 'MS', '78 Wayridge Avenue', '39404');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (184, 'Work', 'Fort Smith', 'AR', '8027 Warner Place', '72905');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (20, 'Work', 'Huntsville', 'AL', '66575 Laurel Court', '35895');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (89, 'Work', 'Grand Rapids', 'MI', '6743 Valley Edge Park', '49510');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (142, 'Home', 'Washington', 'DC', '26 Anderson Hill', '20310');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (180, 'Home', 'Amarillo', 'TX', '827 Gulseth Pass', '79118');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (195, 'Work', 'Long Beach', 'CA', '7752 Granby Point', '90831');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (147, 'Home', 'Topeka', 'KS', '31672 Clove Point', '66642');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (130, 'Work', 'Charleston', 'WV', '3 Kennedy Street', '25331');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (27, 'Work', 'Washington', 'DC', '813 Rutledge Park', '20337');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (85, 'Home', 'Birmingham', 'AL', '43 Meadow Valley Plaza', '35215');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (199, 'Work', 'Hamilton', 'OH', '41 Daystar Crossing', '45020');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (172, 'Home', 'Detroit', 'MI', '616 Boyd Trail', '48275');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (39, 'Work', 'Migrate', 'KY', '13085 Bellgrove Junction', '41905');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (182, 'Home', 'Phoenix', 'AZ', '182 Anzinger Hill', '85030');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (32, 'Work', 'Columbus', 'OH', '145 Helena Court', '43215');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (29, 'Work', 'Milwaukee', 'WI', '96 Bluestem Trail', '53210');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (146, 'Home', 'Ann Arbor', 'MI', '93 Troy Place', '48107');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (147, 'Home', 'Salt Lake City', 'UT', '53587 1st Junction', '84152');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (165, 'Home', 'San Jose', 'CA', '34048 Crownhardt Center', '95108');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (12, 'Work', 'Memphis', 'TN', '70988 Maywood Circle', '38126');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (193, 'Home', 'San Francisco', 'CA', '3775 Dryden Terrace', '94142');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (86, 'Home', 'Amarillo', 'TX', '2 Summer Ridge Park', '79171');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (18, 'Home', 'Lynchburg', 'VA', '7059 Roth Place', '24503');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (80, 'Home', 'Silver Spring', 'MD', '3887 Vahlen Point', '20910');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (106, 'Home', 'Los Angeles', 'CA', '0824 Sauthoff Place', '90101');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (82, 'Home', 'Shreveport', 'LA', '55387 Bartillon Street', '71151');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (168, 'Work', 'Johnstown', 'PA', '85435 Lillian Avenue', '15906');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (106, 'Home', 'Anchorage', 'AK', '0130 Warbler Plaza', '99517');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (129, 'Work', 'Gulfport', 'MS', '8 Garrison Road', '39505');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (196, 'Work', 'Hayward', 'CA', '883 Pennsylvania Lane', '94544');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (104, 'Work', 'Memphis', 'TN', '85 Eliot Road', '38143');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (172, 'Home', 'Washington', 'DC', '526 Coolidge Avenue', '20057');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (40, 'Home', 'Hampton', 'VA', '61 Hanover Point', '23663');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (134, 'Work', 'Albany', 'NY', '1774 Merrick Trail', '12222');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (24, 'Work', 'Fort Worth', 'TX', '9308 Butternut Road', '76129');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (22, 'Home', 'Long Beach', 'CA', '85 Hermina Hill', '90831');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (46, 'Home', 'Tucson', 'AZ', '94 Superior Place', '85743');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (165, 'Work', 'Springfield', 'IL', '019 Sage Street', '62718');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (112, 'Home', 'Tampa', 'FL', '076 Crest Line Point', '33625');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (34, 'Work', 'Memphis', 'TN', '7 Rusk Park', '38181');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (17, 'Home', 'Cincinnati', 'OH', '0 Pleasure Parkway', '45238');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (200, 'Work', 'Evansville', 'IN', '4 Almo Plaza', '47737');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (102, 'Work', 'Tulsa', 'OK', '4 Upham Park', '74149');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (198, 'Home', 'El Paso', 'TX', '91016 Cordelia Road', '88589');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (60, 'Work', 'Abilene', 'TX', '55610 Fallview Avenue', '79699');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (194, 'Home', 'Toledo', 'OH', '7 Stuart Trail', '43605');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (37, 'Home', 'Dallas', 'TX', '45 Kropf Park', '75372');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (178, 'Work', 'Portland', 'OR', '2 Marquette Crossing', '97211');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (57, 'Work', 'Phoenix', 'AZ', '6048 Luster Junction', '85030');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (95, 'Work', 'Winston Salem', 'NC', '7 Delladonna Street', '27105');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (143, 'Home', 'Los Angeles', 'CA', '769 Armistice Trail', '90015');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (130, 'Work', 'Manassas', 'VA', '39 Texas Crossing', '22111');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (23, 'Home', 'North Las Vegas', 'NV', '22 Haas Parkway', '89036');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (184, 'Work', 'San Jose', 'CA', '2 Kinsman Center', '95155');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (5, 'Work', 'Gainesville', 'FL', '70339 Grover Parkway', '32605');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (37, 'Home', 'El Paso', 'TX', '872 Delladonna Circle', '88530');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (161, 'Work', 'Jackson', 'MS', '5861 Dovetail Drive', '39282');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (7, 'Work', 'Charlotte', 'NC', '71585 Forest Trail', '28263');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (131, 'Work', 'Jamaica', 'NY', '3 Basil Point', '11436');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (13, 'Work', 'Boston', 'MA', '15393 Novick Junction', '02203');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (55, 'Work', 'Washington', 'DC', '7 Glendale Hill', '20520');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (167, 'Work', 'Minneapolis', 'MN', '3 Ilene Crossing', '55458');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (141, 'Home', 'Colorado Springs', 'CO', '2567 David Alley', '80925');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (25, 'Work', 'Fort Smith', 'AR', '39 Dapin Park', '72916');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (2, 'Work', 'Newark', 'DE', '881 Clove Drive', '19725');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (139, 'Work', 'Dallas', 'TX', '316 Corben Lane', '75241');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (65, 'Home', 'Fort Worth', 'TX', '924 Hauk Circle', '76121');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (141, 'Work', 'Charlotte', 'NC', '19516 Corscot Plaza', '28230');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (94, 'Work', 'Salem', 'OR', '22331 Park Meadow Point', '97306');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (197, 'Home', 'Fort Myers', 'FL', '96 8th Road', '33913');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (192, 'Home', 'Rochester', 'NY', '3556 Corben Alley', '14619');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (55, 'Work', 'Raleigh', 'NC', '34 Moose Street', '27615');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (21, 'Home', 'Richmond', 'VA', '38 Schiller Court', '23228');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (98, 'Work', 'Grand Rapids', 'MI', '90 Forest Dale Lane', '49510');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (135, 'Home', 'Fort Wayne', 'IN', '3 Mifflin Alley', '46896');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (138, 'Home', 'Sparks', 'NV', '46 Orin Center', '89436');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (88, 'Home', 'Corona', 'CA', '946 Fremont Park', '92878');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (96, 'Work', 'Panama City', 'FL', '0 Oxford Hill', '32412');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (89, 'Work', 'New York City', 'NY', '53 Tennessee Crossing', '10249');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (86, 'Home', 'Milwaukee', 'WI', '4432 Ilene Point', '53220');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (189, 'Home', 'Toledo', 'OH', '3212 Fieldstone Parkway', '43635');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (163, 'Home', 'Tucson', 'AZ', '93672 Dixon Plaza', '85732');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (80, 'Home', 'Lexington', 'KY', '14 Quincy Hill', '40505');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (25, 'Home', 'Chesapeake', 'VA', '764 Fordem Trail', '23324');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (159, 'Home', 'Washington', 'DC', '7673 Shopko Street', '20404');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (73, 'Work', 'Young America', 'MN', '6168 Browning Park', '55573');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (41, 'Home', 'Ocala', 'FL', '098 Springs Street', '34474');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (55, 'Home', 'Dayton', 'OH', '8532 Muir Court', '45440');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (199, 'Work', 'Maple Plain', 'MN', '0 Warbler Circle', '55572');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (189, 'Home', 'Huntington', 'WV', '5 Moulton Alley', '25705');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (8, 'Work', 'Fairbanks', 'AK', '755 Bultman Place', '99790');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (116, 'Work', 'Fresno', 'CA', '2 Cascade Drive', '93786');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (172, 'Work', 'Memphis', 'TN', '4062 Lerdahl Circle', '38197');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (6, 'Home', 'New York City', 'NY', '57067 Shoshone Parkway', '10029');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (100, 'Home', 'Indianapolis', 'IN', '8342 Transport Street', '46221');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (128, 'Work', 'Fresno', 'CA', '699 Hallows Road', '93794');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (45, 'Work', 'Concord', 'CA', '5254 Sullivan Drive', '94522');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (23, 'Home', 'Amarillo', 'TX', '3518 Magdeline Point', '79171');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (119, 'Home', 'Helena', 'MT', '0 Jay Junction', '59623');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (185, 'Work', 'Springfield', 'IL', '6 Walton Lane', '62764');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (186, 'Home', 'Arlington', 'TX', '80 Myrtle Alley', '76004');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (110, 'Home', 'Baton Rouge', 'LA', '225 Grayhawk Hill', '70883');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (37, 'Home', 'Pensacola', 'FL', '391 Meadow Vale Lane', '32505');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (68, 'Work', 'Springfield', 'IL', '9353 Declaration Hill', '62756');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (134, 'Home', 'Baltimore', 'MD', '2 Oak Way', '21239');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (151, 'Home', 'East Saint Louis', 'IL', '00 Forest Terrace', '62205');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (47, 'Home', 'Vancouver', 'WA', '71 Grayhawk Pass', '98664');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (106, 'Work', 'Seattle', 'WA', '40060 3rd Place', '98104');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (103, 'Work', 'Buffalo', 'NY', '79749 Westerfield Parkway', '14263');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (102, 'Work', 'Kansas City', 'KS', '64821 Red Cloud Parkway', '66112');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (49, 'Work', 'Joliet', 'IL', '9 Kim Junction', '60435');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (50, 'Home', 'Hialeah', 'FL', '40 Hudson Avenue', '33018');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (176, 'Home', 'San Jose', 'CA', '060 Hudson Plaza', '95160');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (185, 'Home', 'Akron', 'OH', '6967 Calypso Hill', '44393');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (14, 'Home', 'Sioux Falls', 'SD', '7 Anniversary Street', '57188');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (131, 'Home', 'Washington', 'DC', '593 Merchant Plaza', '20503');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (80, 'Home', 'Springfield', 'IL', '729 Farmco Circle', '62794');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (70, 'Work', 'Augusta', 'GA', '1 Old Shore Place', '30919');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (191, 'Home', 'Wichita', 'KS', '09 Manley Way', '67260');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (173, 'Home', 'Sacramento', 'CA', '21191 Maple Wood Center', '94280');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (109, 'Home', 'Orlando', 'FL', '31121 Kennedy Junction', '32830');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (66, 'Work', 'Austin', 'TX', '6 Petterle Terrace', '78703');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (103, 'Work', 'Tucson', 'AZ', '7 Arapahoe Plaza', '85705');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (64, 'Home', 'Washington', 'DC', '9 Ridge Oak Road', '20551');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (82, 'Home', 'New York City', 'NY', '6 Dahle Road', '10270');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (5, 'Home', 'Columbus', 'OH', '8 Steensland Alley', '43220');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (10, 'Home', 'Spartanburg', 'SC', '04 Homewood Road', '29305');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (155, 'Work', 'Houston', 'TX', '012 Little Fleur Avenue', '77201');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (30, 'Home', 'Mobile', 'AL', '20 Coolidge Park', '36670');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (76, 'Home', 'Southfield', 'MI', '36105 Ridgeview Court', '48076');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (161, 'Home', 'Topeka', 'KS', '78 Browning Park', '66611');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (82, 'Work', 'Honolulu', 'HI', '22 Washington Parkway', '96810');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (56, 'Home', 'Rochester', 'NY', '6233 Hoepker Lane', '14624');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (1, 'Work', 'Arlington', 'VA', '481 Norway Maple Way', '22225');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (87, 'Home', 'Washington', 'DC', '8 Alpine Terrace', '20397');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (127, 'Work', 'Colorado Springs', 'CO', '2 David Park', '80915');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (130, 'Work', 'Little Rock', 'AR', '1 Banding Court', '72231');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (128, 'Home', 'Lexington', 'KY', '4127 Katie Lane', '40581');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (116, 'Work', 'Las Vegas', 'NV', '8345 High Crossing Parkway', '89155');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (163, 'Work', 'Apache Junction', 'AZ', '1 Kensington Junction', '85219');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (149, 'Work', 'Lexington', 'KY', '0035 3rd Drive', '40596');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (193, 'Home', 'Minneapolis', 'MN', '551 Monument Road', '55446');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (28, 'Work', 'Kansas City', 'MO', '7945 Melody Hill', '64144');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (99, 'Home', 'Winston Salem', 'NC', '389 Merrick Crossing', '27116');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (146, 'Home', 'Metairie', 'LA', '15715 Lighthouse Bay Road', '70033');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (48, 'Work', 'Peoria', 'IL', '88 Oak Center', '61614');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (10, 'Home', 'Bronx', 'NY', '5 Basil Court', '10474');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (178, 'Home', 'Paterson', 'NJ', '447 Transport Crossing', '07544');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (27, 'Home', 'Washington', 'DC', '43 Miller Road', '20226');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (112, 'Work', 'Tacoma', 'WA', '8632 Bay Pass', '98405');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (173, 'Home', 'San Rafael', 'CA', '58144 Barnett Way', '94913');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (200, 'Work', 'Austin', 'TX', '50 Moulton Park', '78783');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (198, 'Work', 'San Jose', 'CA', '6882 South Road', '95160');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (98, 'Work', 'Asheville', 'NC', '68 Hagan Crossing', '28815');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (195, 'Work', 'Boston', 'MA', '25858 Rutledge Drive', '02104');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (193, 'Home', 'San Antonio', 'TX', '25693 Gateway Drive', '78210');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (158, 'Home', 'Paterson', 'NJ', '8 Larry Drive', '07505');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (130, 'Work', 'Sioux Falls', 'SD', '9 Upham Plaza', '57105');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (160, 'Work', 'Texarkana', 'TX', '414 4th Drive', '75507');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (134, 'Work', 'San Diego', 'CA', '72 Meadow Ridge Park', '92137');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (27, 'Home', 'Milwaukee', 'WI', '362 Duke Crossing', '53220');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (196, 'Home', 'Boca Raton', 'FL', '95249 Cherokee Alley', '33499');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (34, 'Home', 'Charleston', 'SC', '21203 Lillian Terrace', '29424');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (69, 'Work', 'Wilmington', 'DE', '50 Oriole Center', '19805');
insert into delivery_address (customer_id, address_type, city, province, street, postal_code) values (157, 'Home', 'Richmond', 'VA', '6 Rowland Center', '23203');


--  Insert into orders table
-- step 1: create a cte that selects from shopping_cart_items and perform joins to get customer_id and menu_item_name  
--select count(*) from shopping_cart_items sci ;
WITH cart_items AS (
    SELECT 
        sc.customer_id
        ,sc.cart_id
        ,s.menu_item_id
        ,s.price
        ,m.name AS menu_item_name
        ,CASE 
            WHEN sc.cart_id % 3 = 0 THEN 'Processed'
            WHEN sc.cart_id % 2 = 0 THEN 'Cancelled'
            ELSE 'Pending'
        END AS order_status
    FROM 
        shopping_cart_items s
    INNER JOIN 
        shopping_cart sc ON s.cart_id = sc.cart_id
    INNER JOIN 
        menu_item m ON s.menu_item_id = m.menu_item_id
),
cart_items_total AS 
(
    SELECT 
        CURRENT_DATE + (FLOOR(RANDOM() * 30) || ' days')::INTERVAL AS order_date,
        STRING_AGG(menu_item_name, ', ') AS description,
        SUM(price) AS total_amount,
        customer_id,
        cart_id,
        order_status
    FROM cart_items
    GROUP BY cart_id, customer_id, order_status
)
--SELECT * FROM cart_items_total;
-- insert results from the cte into orders table
INSERT INTO orders (customer_id, order_date, description, order_status, total_amount)  
SELECT 
	 customer_id
	,order_date
	,CONCAT('You ordered for: ', description) description -- concatenate a customized message to order description
	,order_status
	,total_amount
FROM cart_items_total
RETURNING *;


-- insert into delivery details

WITH delivery_data AS (
    SELECT 
        o.order_id,
        c.customer_id,
        a.delivery_address_id,
        CASE order_status
        	WHEN Processed THEN 'S'
        CASE 
            WHEN o.order_id % 3 = 0 THEN 'Shipped'
            WHEN o.order_id % 2 = 0 THEN 'Processing'
            ELSE 'Delivered'
        END AS delivery_status,
        CURRENT_TIMESTAMP - INTERVAL '1 day' * (o.order_id % 5) AS delivery_date -- Vary delivery dates
    FROM 
        orders o
    JOIN 
        customer c ON o.customer_id = c.customer_id
    JOIN 
        delivery_address a ON c.customer_id = a.customer_id
)
INSERT INTO public.delivery_details (delivery_address_id, order_id, customer_id, delivery_status, delivery_date)
SELECT 
    dd.delivery_address_id,
    dd.order_id,
    dd.customer_id,
    dd.delivery_status,
    dd.delivery_date
FROM 
    delivery_data dd;

-- Insert order items into order-items table
-- step 1: create a cte that selects from shopping_cart_items and perform joins to get customer_id and menu_item_name
-- quantity and unit price
 WITH order_items AS
 (
 SELECT 
        sc.customer_id
        ,o.order_id
        ,o.customer_id
        ,sc.cart_id
        ,s.menu_item_id
        ,s.price
        ,m.description AS menu_description
 FROM shopping_cart_items s
  	INNER JOIN shopping_cart sc 
    	USING (cart_id) 
    INNER JOIN menu_item m
    	USING (menu_item_id)
  	inner join orders o 
 		USING (customer_id)
 )
-- select count(*) from order_items
 , 
 order_items_count AS 
(
SELECT 
    order_id
    --, cart_id
    , menu_item_id
    , COUNT (menu_item_id) AS quantity -- each order item corresponds to one menu item
    , MAX (price) AS unit_price -- get the unit price since there is only one price for each menu item
    , menu_description AS menu_details
FROM order_items
GROUP BY menu_item_id, order_id, cart_id, menu_description
)
--select count(*) from order_items_count
--select * from order_items_count
-- insert into order_items table
INSERT INTO order_item (order_id, menu_item_id, quantity, unit_price, menu_details)
SELECT * 
FROM order_items_count
RETURNING *
;

-- insert into purchases enitity
WITH order_items AS
(
SELECT 
    o.order_id
--    ,o.order_status
    ,oi.order_item
    ,o.customer_id
    ,o.order_date
    ,o.total_amount total_order_amount
   
    ,COALESCE (m.promo_code, '0')
    ,m.menu_item_id
    , CASE 
        m.promo_code
        WHEN 'PROMO1' THEN	10.00
		WHEN 'PROMO2' THEN	15.00
		WHEN 'PROMO3' THEN	20.00
		WHEN 'PROMO4' THEN	25.00
		WHEN 'PROMO5' THEN	30.00
		ELSE 0
      END AS discount_percent
    ,oi.quantity
    , oi.unit_price
    , oi.unit_price * oi.quantity price_by_quantity

FROM orders o
  	INNER JOIN order_item oi
    	USING (order_id) 
    INNER JOIN menu_item m
    	USING (menu_item_id)
WHERE lower(o.order_status) = lower('Processed')-- payments are only made for processed orders
 ), 
 calculate_discount AS 
(
SELECT
 *
	  ,(price_by_quantity * discount_percent/100) AS calculated_discount -- compute discount as a percentage of the item price, some items appear more than one so use the  price by quantity
	  ,price_by_quantity - ((price_by_quantity * discount_percent/100)) AS discount_price 
	  ,(price_by_quantity - ((price_by_quantity * discount_percent/100))) * 0.15 hst -- compute hst on unit price after discount
FROM order_items
 ),
calculate_payment AS 
(
SELECT 
	* 
	, (discount_price + hst) as payment
FROM calculate_discount
)
INSERT INTO purchases 
( 
	order_id
	, customer_id
	, payment_date
	, quantity_purchased
	, total_order_amount
	, discount_applied
	, discount_price
	, total_hst
	, payment_amount
)
SELECT 
	order_id
	, customer_id
	, order_date payment_date
	, SUM(quantity) AS quantity_purchased
	, SUM(total_order_amount)  AS total_order_amount
	, SUM(calculated_discount) discount_applied
	, SUM(discount_price ) AS discount_price
	, SUM(hst) as total_hst
	, SUM(payment) AS payment_amount
FROM calculate_payment
GROUP BY 
	order_id
	, customer_id
	, order_date
;



-- Insert into payment details
INSERT INTO payment_details 
(
    customer_id
    ,order_id
    ,total_amount
    ,payment_method
    ,payment_date
    ,payment_status
)
SELECT 
    customer_id
    ,order_id
    ,payment_amount
    ,CASE 
        -- use random function to assign payments methods to purchases
        WHEN random() < 0.3 THEN 'Credit Card'
        WHEN random() < 0.6 THEN 'Interac'
        ELSE 'PayPal'
    	END AS payment_method
    ,payment_date
    , CASE 
    	WHEN payment_amount <=0 THEN 'Processing'
    	WHEN payment_amount is null THEN 'Unsuccessful Payment'
    	ELSE 'Sucessfully Paid'
    END payment_status   
FROM purchases;
