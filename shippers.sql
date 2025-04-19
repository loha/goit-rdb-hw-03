CREATE TABLE Shippers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20)
);

-- Вставка записів
INSERT INTO Shippers (id, name, phone) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');