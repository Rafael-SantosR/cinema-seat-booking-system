CREATE DATABASE IF NOT EXISTS cinema_db;
USE cinema_db;USE cinema_db;

CREATE TABLE assentos (
	id INT auto_increment PRIMARY KEY,
    nome_assento VARCHAR (5) NOT NULL,
    disponivel BOOLEAN DEFAULT TRUE,
    preco DECIMAL(10,2) NOT NULL
);    

INSERT INTO assentos (nome_assento, disponivel, preco) VALUES
('A1', TRUE, 15.00),
('B1', TRUE, 15.00),
('C1', TRUE, 15.00),
('D1', TRUE, 15.00),
('E1', TRUE, 15.00),
('F1', TRUE, 15.00),
('A2', TRUE, 15.00),
('B2', TRUE, 15.00),
('C2', TRUE, 15.00),
('D2', TRUE, 15.00),
('E2', TRUE, 15.00),
('F2', TRUE, 15.00),
('A3', TRUE, 15.00),
('B3', TRUE, 15.00),
('C3', TRUE, 15.00),
('D3', TRUE, 15.00),
('E3', TRUE, 15.00),
('F3', TRUE, 15.00),
('A4', TRUE, 15.00),
('B4', TRUE, 15.00),
('C4', TRUE, 15.00),
('D4', TRUE, 15.00),
('E4', TRUE, 15.00),
('F4', TRUE, 15.00),
('A5', TRUE, 15.00),
('B5', TRUE, 15.00),
('C5', TRUE, 15.00),
('D5', TRUE, 15.00),
('E5', TRUE, 15.00),
('F5', TRUE, 15.00),
('A6', TRUE, 15.00),
('B6', TRUE, 15.00),
('C6', TRUE, 15.00),
('D6', TRUE, 15.00),
('E6', TRUE, 15.00),
('F6', TRUE, 15.00);

SELECT * FROM assentos;