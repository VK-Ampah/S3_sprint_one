 -- create indexes on filter columns
 CREATE INDEX order_status_index 
   ON orders(order_status);
  
CREATE INDEX payment_status_index 
   ON payment_details (payment_status);
   
CREATE INDEX menu_item_index 
   ON menu_item(name);
   
CREATE INDEX menu_category_index 
   ON menu_category(name);