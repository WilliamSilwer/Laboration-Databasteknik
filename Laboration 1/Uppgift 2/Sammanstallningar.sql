SELECT COUNT(*) AS antal FROM employees
WHERE title = 'Sales Representative';

SELECT SUM(order_details.quantity * order_details.unit_price) AS totalvarde
FROM orders
JOIN order_details ON orders.order_id = order_details.order_id
WHERE orders.order_date = '1996-12-12';

SELECT products.product_name, categories.category_name, SUM(order_details.quantity) AS totalsold
FROM products
JOIN categories ON products.category_id = categories.category_id
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_name, categories.category_name;

SELECT customers.company_name
FROM customers
LEFT JOIN orders ON (customers.customer_id = orders.customer_id)
WHERE orders.order_id IS NULL;

