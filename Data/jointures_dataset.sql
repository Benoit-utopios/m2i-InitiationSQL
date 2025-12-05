-- Création de la table "Customers" pour stocker les informations des clients
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT, -- Identifiant unique du client
    FirstName VARCHAR(50) NOT NULL,            -- Prénom du client
    LastName VARCHAR(50) NOT NULL,             -- Nom du client
    Email VARCHAR(100)                         -- Email du client
);

-- Insertion de données dans la table "Customers"
INSERT INTO Customers (FirstName, LastName, Email) VALUES
('Alice', 'Martin', 'alice.martin@example.com'),
('Bob', 'Dupont', 'bob.dupont@example.com'),
('Charlie', 'Durand', 'charlie.durand@example.com');

-- Création de la table "Orders" pour enregistrer les commandes passées par chaque client
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,    -- Identifiant unique de la commande
    OrderDate DATE NOT NULL,                   -- Date de la commande
    Amount DECIMAL(10, 2) NOT NULL,            -- Montant de la commande
    CustomerID INT,                            -- Référence du client ayant passé la commande
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) -- Clé étrangère liant l'ID du client
);

-- Insertion de données dans la table "Orders"
INSERT INTO Orders (OrderDate, Amount, CustomerID) VALUES
('2024-11-01', 100.50, 1),
('2024-11-02', 250.00, 2),
('2024-11-03', 80.75, 1),
('2024-11-04', 50.00, 3);