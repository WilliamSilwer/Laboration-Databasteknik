SELECT product_name, unit_price FROM products
WHERE category_id = 4;

UPDATE products
SET unit_price = unit_price * 1.20
WHERE category_id = 4;

SELECT suppliers.company_name, products.product_name, products.unit_price
FROM products 
JOIN suppliers ON (suppliers.supplier_id = products.supplier_id);

UPDATE products
SET unit_price = unit_price * 1.10
FROM suppliers WHERE products.supplier_id = suppliers.supplier_id
AND suppliers.company_name = 'Tokyo Traders';




