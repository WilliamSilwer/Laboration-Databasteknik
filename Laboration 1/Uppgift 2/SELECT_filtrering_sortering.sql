SELECT last_name, first_name FROM employees;

SELECT home_phone FROM employees 
WHERE title = 'Vice President, Sales';

SELECT company_name, contact_name, contact_title 
FROM customers
WHERE company_name = 'Svensk Sjöföda AB';

SELECT company_name FROM customers
WHERE company_name = 'Svensk Sjöföda AB';

SELECT company_name FROM suppliers;

SELECT company_name, contact_name, contact_title
FROM suppliers
WHERE company_name = 'Svensk Sjöföda AB';

SELECT first_name, last_name, birth_date 
FROM employees
ORDER BY birth_date DESC;

SELECT company_name, country, city FROM customers
ORDER BY country ASC, city ASC;

SELECT last_name, first_name FROM employees
WHERE last_name LIKE '%an%';

SELECT first_name, last_name, title FROM employees
WHERE title LIKE '%Vice%'
OR title LIKE '%President%'
OR title LIKE '%Manager%';

