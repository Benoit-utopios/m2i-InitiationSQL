-- Création de la Database "exo_dql_avance"
CREATE DATABASE IF NOT EXISTS exo_dql_avance;
USE exo_dql_avance;

-- Création de la table Employees
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    hire_date DATE,
    salary DECIMAL(10, 2),
    department VARCHAR(50),
    position VARCHAR(50),
    city VARCHAR(50)
);

-- Insertion des données pour Employees
INSERT INTO Employees (id, first_name, last_name, birth_date, hire_date, salary, department, position, city)
VALUES
    (1, 'Alice', 'Durand', '1985-12-10', '2015-06-15', 4000, 'Finance', 'Analyste', 'Paris'),
    (2, 'Bruno', 'Martin', '1990-05-23', '2017-03-18', 3800, 'Finance', 'Comptable', 'Lyon'),
    (3, 'Catherine', 'Moreau', '1983-12-25', '2012-11-02', 5000, 'RH', 'Manager', 'Paris'),
    (4, 'David', 'Dupont', '1978-04-12', '2008-09-24', 5500, 'IT', 'Chef de projet', 'Marseille'),
    (5, 'Emma', 'Bernard', '1995-08-17', '2021-01-05', 3200, 'IT', 'Développeur', 'Lyon'),
    (6, 'François', 'Giraud', '1989-09-05', '2016-07-01', 3700, 'Finance', 'Analyste', 'Marseille'),
    (7, 'Giselle', 'Roux', '1987-01-30', '2014-10-11', 4500, 'RH', 'Recruteur', 'Paris'),
    (8, 'Hugo', 'Lefevre', '1992-12-15', '2019-05-10', 3900, 'IT', 'Développeur', 'Paris');

-- Création de la table Projects
CREATE TABLE Projects (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    start_date DATE,
    end_date DATE
);

-- Insertion des données pour Projects
INSERT INTO Projects (id, name, start_date, end_date)
VALUES
    (1, 'Projet Alpha', '2020-01-01', '2022-12-15'),
    (2, 'Projet Beta', '2018-03-10', '2021-10-05'),
    (3, 'Projet Gamma', '2022-02-15', NULL),
    (4, 'Projet Delta', '2019-08-01', '2022-06-30');
    
-- Requete 1: Extraction basique des informations
SELECT first_name, last_name, birth_date
FROM Employees
WHERE MONTH(birth_date) = 12;

-- Requete 2: Formatage des dates
SELECT first_name, last_name, DATE_FORMAT(hire_date, '%W, %d %M %Y') AS formatted_hire_date
FROM Employees;

-- Requete 3: Calculs basés sur les dates
SELECT first_name, last_name, TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age
FROM Employees;

-- Requete 4: Requêtes filtrées
SELECT first_name, last_name, department, salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

-- Requete 5: Analyse des salaires
SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 3000;

-- Requete 6: Comparaison de dates
SELECT name, DATEDIFF(CURDATE(), end_date) AS days_since_end
FROM Projects
WHERE end_date < '2023-01-01';

-- Requete 7: Groupement de données
SELECT city, COUNT(*) AS employee_count, AVG(salary) AS avg_salary
FROM Employees
GROUP BY city
HAVING employee_count >= 5 AND avg_salary > 3500;

-- Requête 8: Sous-requête
SELECT first_name, last_name, department, salary
FROM Employees e1
WHERE salary > (SELECT AVG(salary) FROM Employees e2 WHERE e2.department = e1.department );


-- Requête 9: Opérations avec les dates

SELECT first_name, last_name, hire_date, DATE_ADD(hire_date, INTERVAL 6 MONTH) AS end_of_probation
FROM Employees
WHERE DATE_ADD(hire_date, INTERVAL 6 MONTH) < CURDATE();

-- Requête 10: Travail avec les formats de date en français
SET lc_time_names = 'fr_FR';

SELECT first_name, last_name, DATE_FORMAT(birth_date, '%e %M %Y') AS birth_date
FROM Employees;
   