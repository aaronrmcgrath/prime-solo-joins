—- Q1) SELECT * FROM customers 
JOIN addresses
ON customers.id = addresses.customer_id;

—- Q2) SELECT * FROM orders
JOIN line_items
ON orders.id = line_items.order_id;

—- Q3)	SELECT DISTINCT warehouse
FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON warehouse_product.product_id = 5;

—- Q4) SELECT DISTINCT warehouse
FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON warehouse_product.product_id = 6;

—- Q5) SELECT customers.last_name, customers.first_name, count(customers.id)
FROM customers
JOIN addresses
ON customers.id = addresses.customer_id
JOIN orders
ON addresses.id = orders.address_id
GROUP BY customers.last_name, customers.first_name;

—- Q6) SELECT count(customers.id)
FROM customers;

—- Q7) SELECT count(products.id)
FROM products;

—- Q8) SELECT sum(on_hand)
FROM warehouse_product
JOIN products
ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi';

