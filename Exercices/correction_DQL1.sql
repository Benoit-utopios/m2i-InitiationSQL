-- Initialisation du projet
SHOW DATABASES;
USE formation_sql;
SHOW TABLES;
SHOW COLUMNS FROM books;

-- Section 1
SELECT first_name, last_name
FROM users;

SELECT *
FROM users;

-- Section 2
SELECT *
FROM users
WHERE first_name = 'Alice';

SELECT *
FROM employees
WHERE age >= 30;

SELECT *
FROM products
WHERE price != 100;

-- Section 3
SELECT *
FROM users
WHERE first_name = "Bob" AND last_name = "Smith";

-- Section 4
SELECT title, author
FROM books
WHERE publication_year > 2000;

-- Section 5
SELECT *
FROM users
WHERE birth_location IN ("Paris", "London");

SELECT *
FROM users
WHERE age > 25 AND salary < 4000;

SELECT *
FROM users
WHERE NOT first_name = "Alice";

-- Section 6
SELECT *
FROM users
WHERE birth_location = "Paris"
AND salary BETWEEN 2000 AND 5000
AND NOT job = "Engineer";

SELECT *
FROM users
WHERE salary > 4000
AND NOT job IN ('Doctor', 'Lawyer');

-- Section 7
SELECT DISTINCT job_title
FROM jobs;

SELECT DISTINCT first_name, last_name
FROM users;

-- Section 8
SELECT *
FROM users
WHERE first_name IN ("Alice", "Bob", "Charlie");

SELECT *
FROM users
WHERE age BETWEEN 18 AND 25;

SELECT *
FROM users
WHERE age NOT BETWEEN 30 AND 40;

-- Section 9
SELECT *
FROM users
ORDER BY age DESC;

SELECT *
FROM users
ORDER BY last_name ASC, age ASC;

-- Section 10
SELECT *
FROM products
WHERE price IS NOT NULL
ORDER BY price ASC
LIMIT 5;





















