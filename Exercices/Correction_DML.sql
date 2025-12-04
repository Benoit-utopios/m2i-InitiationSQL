-- Création et utilisation de la BDD
CREATE DATABASE exo_dml;
USE exo_dml;

-- Création de la table "Students"
CREATE TABLE Students(
	student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade VARCHAR(10)
);

SELECT * FROM Students;

-- INSERT INTO
-- Ajouter trois étudiants
INSERT INTO Students (student_id, first_name, last_name, age, grade)
VALUES
	(1, 'Maria', 'Rodriguez', 21, 'B'),
    (2, 'Ahmed', 'Khan', 19, 'A'),
    (3, 'Emily', 'Baker', 22, 'C');
    
-- UPDATE

-- Désactivation du SAFE UPDATE MODE
SET SQL_SAFE_UPDATES = 0;

-- MAJ de la note de Maria
UPDATE Students
SET grade = 'A'
WHERE first_name = 'Maria';

-- MAJ de l'âge de tous les étudiants
UPDATE Students
SET age = age +1;

-- DELETE
-- Suppression de l'étudiante "Emily"
DELETE FROM Students
WHERE first_name = "Emily";

-- Suppression des étudiants de moins de 20ans
DELETE FROM Students
WHERE age < 20;

-- Suppression totale de la table (TRUNCATE)
TRUNCATE TABLE Students;

-- Réactivation du SAFE UPDATE MODE
SET SQL_SAFE_UPDATES = 1;
