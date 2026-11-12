SELECT products.product_name, categories.category_name, products.unit_price
FROM products
JOIN categories ON products.category_id = categories.category_id;

CREATE VIEW produktoversikt AS 
SELECT products.product_name AS produktnamn,
categories.category_name AS kategorinamn,
products.unit_price AS enhetspris
FROM products
JOIN categories ON (categories.category_id = products.category_id);

SELECT * FROM produktoversikt;


s