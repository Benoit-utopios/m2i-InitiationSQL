-- Création de la base de données
CREATE DATABASE IF NOT EXISTS formation_sql;
USE formation_sql;

-- Supprime la table Users si elle existe déjà
DROP TABLE IF EXISTS users;

-- Création de la table Users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    job VARCHAR(100),
    birth_date DATE,
    birth_location VARCHAR(100)
);

-- Insertion de données dans la table Users
INSERT INTO users (first_name, last_name, job, birth_date, birth_location)
VALUES
    ('John', 'Doe', 'Developer', '1995-05-12', 'New York'),
    ('Alice', 'Smith', 'Designer', '1988-09-28', 'London'),
    ('Michael', 'Johnson', 'Engineer', '1977-02-05', 'Los Angeles'),
    ('Emily', 'Brown', 'Teacher', '1992-04-18', 'Paris'),
    ('David', 'Lee', 'Doctor', '1985-11-30', 'Tokyo'),
    ('Sarah', 'Wilson', 'Lawyer', '1990-06-08', 'Sydney'),
    ('Daniel', 'Anderson', 'Developer', '1983-12-21', 'Toronto'),
    ('Jessica', 'Taylor', 'Engineer', '1991-10-15', 'Berlin'),
    ('Christopher', 'Moore', 'Designer', '1997-01-04', 'Rome'),
    ('Olivia', 'Jackson', 'Teacher', '1994-08-22', 'Moscow'),
    ('James', 'Doe', 'Engineer', '1987-03-12', 'New York'),
    ('Sophia', 'Smith', 'Developer', '1993-07-28', 'London'),
    ('Emma', 'Johnson', 'Designer', '1980-09-05', 'Los Angeles'),
    ('Daniel', 'Brown', 'Doctor', '1992-02-18', 'Paris'),
    ('David', 'Lee', 'Lawyer', '1985-11-30', 'Tokyo'),
    ('Lucas', 'Clark', 'Data Analyst', '1982-10-14', 'Madrid'),
    ('Amelia', 'Miller', 'Architect', '1989-07-25', 'Toronto'),
    ('Ethan', 'Martinez', 'Photographer', '1991-11-11', 'Paris'),
    ('Mia', 'Garcia', 'Nurse', '1993-05-04', 'Mexico City'),
    ('William', 'Martinez', 'Scientist', '1985-03-22', 'New York'),
    ('Noah', 'White', 'Artist', '1990-12-03', 'Chicago'),
    ('Isabella', 'Davis', 'Chef', '1988-06-17', 'London'),
    ('Liam', 'Rodriguez', 'Developer', '1981-09-20', 'San Francisco'),
    ('Mason', 'Lopez', 'Engineer', '1986-04-05', 'Los Angeles'),
    ('Sophia', 'Hill', 'Teacher', '1992-01-16', 'Toronto'),
    ('Benjamin', 'Green', 'Developer', '1997-08-19', 'Berlin'),
    ('Lucas', 'Baker', 'Pilot', '1984-10-30', 'London'),
    ('Harper', 'Gonzalez', 'Scientist', '1989-12-10', 'Paris'),
    ('Henry', 'Phillips', 'Writer', '1983-11-25', 'New York'),
    ('Ella', 'Evans', 'Teacher', '1994-03-08', 'Berlin'),
    ('Elijah', 'Torres', 'Photographer', '1992-09-22', 'New York'),
    ('Ava', 'Young', 'Lawyer', '1986-07-09', 'Sydney'),
    ('Logan', 'Scott', 'Doctor', '1987-02-18', 'Melbourne'),
    ('Mason', 'Bennett', 'Designer', '1990-05-30', 'London'),
    ('Grace', 'Stewart', 'Engineer', '1992-07-19', 'Toronto'),
    ('Oliver', 'Hughes', 'Developer', '1989-12-25', 'New York'),
    ('Chloe', 'Reed', 'Doctor', '1985-11-30', 'Paris'),
    ('Jack', 'Cooper', 'Lawyer', '1990-04-14', 'Tokyo'),
    ('Lily', 'King', 'Teacher', '1983-09-27', 'Sydney'),
    ('Zoe', 'Wright', 'Designer', '1994-05-06', 'Los Angeles');
    
-- Création de la table books
CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publication_year INT NOT NULL,
    price DECIMAL(10, 2),
    genre VARCHAR(100)
);

-- Insertion de données dans books
INSERT INTO books (title, author, publication_year, price, genre) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 15.99, 'Fiction'),
('To Kill a Mockingbird', 'Harper Lee', 1960, 18.50, 'Fiction'),
('1984', 'George Orwell', 1949, 14.99, 'Dystopian'),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 1997, 22.99, 'Fantasy'),
('The Da Vinci Code', 'Dan Brown', 2003, 19.99, 'Thriller'),
('The Hunger Games', 'Suzanne Collins', 2008, 17.50, 'Science Fiction'),
('The Hobbit', 'J.R.R. Tolkien', 1937, 16.99, 'Fantasy'),
('Pride and Prejudice', 'Jane Austen', 1813, 12.99, 'Romance'),
('The Catcher in the Rye', 'J.D. Salinger', 1951, 13.99, 'Fiction'),
('Life of Pi', 'Yann Martel', 2001, 20.99, 'Adventure'),
('The Alchemist', 'Paulo Coelho', 1988, 14.50, 'Fiction'),
('Gone Girl', 'Gillian Flynn', 2012, 21.99, 'Thriller'),
('The Girl with the Dragon Tattoo', 'Stieg Larsson', 2005, 18.99, 'Mystery'),
('The Fault in Our Stars', 'John Green', 2012, 16.50, 'Young Adult'),
('Educated', 'Tara Westover', 2018, 24.99, 'Memoir');

-- Création de la table employees
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    job VARCHAR(100),
    city VARCHAR(100),
    hire_date DATE
);

-- Insertion de données dans employees
INSERT INTO employees (first_name, last_name, age, salary, job, city, hire_date) VALUES
('Alice', 'Smith', 28, 3500.00, 'Developer', 'Paris', '2020-03-15'),
('Bob', 'Johnson', 35, 4500.00, 'Engineer', 'London', '2018-07-22'),
('Charlie', 'Williams', 42, 5500.00, 'Manager', 'New York', '2015-01-10'),
('David', 'Brown', 29, 3800.00, 'Developer', 'Berlin', '2021-05-18'),
('Emma', 'Jones', 31, 4200.00, 'Designer', 'Paris', '2019-09-30'),
('Frank', 'Garcia', 45, 6000.00, 'Director', 'Madrid', '2012-11-05'),
('Grace', 'Martinez', 26, 3200.00, 'Analyst', 'London', '2022-02-14'),
('Henry', 'Rodriguez', 38, 5000.00, 'Engineer', 'Tokyo', '2017-06-20'),
('Iris', 'Lee', 33, 4700.00, 'Doctor', 'Seoul', '2016-08-12'),
('Jack', 'Walker', 27, 3600.00, 'Developer', 'Sydney', '2021-10-01'),
('Karen', 'Hall', 40, 5200.00, 'Lawyer', 'Toronto', '2014-04-25'),
('Leo', 'Allen', 22, 2800.00, 'Intern', 'Paris', '2023-01-15'),
('Maria', 'Young', 36, 4800.00, 'Consultant', 'Rome', '2018-12-03'),
('Nathan', 'King', 30, 4000.00, 'Engineer', 'Amsterdam', '2020-07-08'),
('Olivia', 'Scott', 25, 3300.00, 'Designer', 'London', '2022-05-22');

-- Désactiver le Safe Update Mode
SET SQL_SAFE_UPDATES = 0;

-- Ajouter la colonne "age" et "salary" à la table "Users"
ALTER TABLE users
ADD COLUMN age INT,
ADD COLUMN salary INT NOT NULL DEFAULT 0;

-- Mettre à jour la colonne "age" avec les âges calculés à partir de la date de naissance
UPDATE users
SET age = TIMESTAMPDIFF(YEAR, birth_date, CURDATE());

-- Mettre à jour la colonne "salaire" avec des valeurs aléatoires entre 2000 et 3500
UPDATE users
SET salary = FLOOR(2000 + RAND() * (3500 - 2000));

-- Activer le Safe Update Mode
SET SQL_SAFE_UPDATES = 1;
