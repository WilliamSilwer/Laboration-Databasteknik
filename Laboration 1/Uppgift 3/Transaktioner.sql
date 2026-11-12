SELECT * FROM produktoversikt;

BEGIN TRANSACTION;

UPDATE products
SET unit_price = unit_price * 1.05
WHERE product_name IN ('Chai', 'Chang');

SELECT * FROM produktoversikt;

ROLLBACK;

SELECT * FROM produktoversikt;


BEGIN TRANSACTION;

UPDATE products
SET product_name = 'Honung'
WHERE product_name = 'Aniseed Syrup';

UPDATE products
SET produktland = 'Sverige'
WHERE product_name = 'Honung';

ROLLBACK;

SELECT * FROM produktoversikt;



