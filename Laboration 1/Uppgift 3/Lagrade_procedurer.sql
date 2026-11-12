SELECT product_name, unit_price, unit_price * 1.05 AS nytt_pris
FROM products; 

CREATE PROCEDURE uppdatera_pris()
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE products
    SET unit_price = unit_price * 1.05;
END; 
$$;   

CALL uppdatera_pris();

SELECT product_name, unit_price FROM products;




CREATE PROCEDURE uppdatera_pris_kategori(p_category_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE products
    SET unit_price = unit_price * 1.05
    WHERE category_id = p_category_id;
END;
$$;    