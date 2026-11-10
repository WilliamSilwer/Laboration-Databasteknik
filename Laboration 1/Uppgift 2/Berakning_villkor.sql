SELECT product_name, unit_price, unit_price * 1.07 AS unit_price_increased
FROM products;

SELECT product_name, unit_price * units_in_stock AS lagervarde
FROM products;

SELECT product_name, units_in_stock, reorder_level FROM products
WHERE units_in_stock < reorder_level;

SELECT product_name, units_in_stock, units_on_order, reorder_level
FROM products
WHERE units_in_stock + units_on_order < reorder_level;


SELECT products.product_name, categories.category_name
FROM products
JOIN categories ON products.category_id = categories.category_id
WHERE products.product_name = 'Lakkalikööri';

SELECT products.product_name, suppliers.company_name
FROM products
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
WHERE products.product_name = 'Gravad lax';


SELECT order_details.order_id, products.product_name, suppliers.company_name
FROM order_details
JOIN products ON order_details.product_id = products.product_id
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
WHERE order_details.order_id = 10249;