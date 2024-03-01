-- Total revenue, orders, customers by year and month 

--
CREATE OR REPLACE VIEW order_summary_view AS
SELECT 
	 TO_CHAR(order_date, 'YYYY') AS year,
	 TO_CHAR(order_date, 'Month') AS month,
	 COUNT(order_id) AS total_orders,
	 SUM(total_amount) AS total_revenue,
	 COUNT(DISTINCT customer_id) AS total_customers
FROM orders
GROUP BY  
      TO_CHAR(order_date, 'YYYY'),
      TO_CHAR(order_date, 'Month')
ORDER BY  total_revenue;

-- Get a customer's preferences  for menu items
CREATE OR REPLACE VIEW customer_preference AS
SELECT 
--   c.customer_id
     (c.first_name ||' '|| last_name) as customer_name
--    , m.menu_item_id
    ,m."name" AS menu_name
    , COUNT(*) AS total_orders_made
FROM 
	orders o
JOIN 
	customer c USING (customer_id) 
JOIN 
	order_item oi USING(order_id) 
JOIN 
	menu_item m USING (menu_item_id) 
GROUP BY 
--    c.customer_id
    (c.first_name ||' '|| last_name)
    , m.menu_item_id
ORDER BY total_orders_made DESC;

--DROP VIEW top_sold_menu_categories;
--- TOP 2 MOST ordered menu category
CREATE OR REPLACE VIEW top_sold_menu_categories AS
WITH best_selling_menu AS (
SELECT 
	mc."name" category_name
	, COUNT (*) total_orders
	, DENSE_RANK () OVER ( ORDER BY COUNT(*) DESC) category_rank
FROM 
	menu_item mi 
INNER JOIN 
	menu_category mc USING (category_id)
INNER JOIN 
	order_item oi USING (menu_item_id)
GROUP BY mc."name" 
)
SELECT 
category_name
,total_orders
, CASE 
	WHEN category_rank = 1 THEN 'Top Ordered Menu Category'
	WHEN category_rank = 2 THEN 'Second Ordered Menu Category'
  END AS sales_status

FROM best_selling_menu
WHERE category_rank <= 2
;

-- Top selling menu items
CREATE VIEW top_menu_items_per_category AS
WITH best_selling_menu AS (
    SELECT 
        mc.name AS menu_category
        ,mi.name AS menu_item
        ,COUNT(*) AS total_orders_made
    FROM 
        menu_item mi 
    INNER JOIN 
        menu_category mc ON mi.category_id = mc.category_id
    INNER JOIN 
        order_item oi ON mi.menu_item_id = oi.menu_item_id
    GROUP BY 
        mc.name, mi.name -- Group by category and menu item names
	ORDER BY 
   		menu_category
   		, total_orders_made DESC        
),
ranked_orders AS
(
SELECT 
   * 
   , RANK() OVER (PARTITION BY menu_category ORDER BY total_orders_made DESC) order_rankings
 FROM 
 	best_selling_menu
 )
 SELECT 
 		menu_category
        ,menu_item
        ,total_orders_made
        , CASE
        	WHEN order_rankings = 1 THEN 'Top Selling Menu'
        END AS order_status
 FROM 
 	ranked_orders
 WHERE 
   order_rankings = 1; -- Select the top 1 selling item withom each category

