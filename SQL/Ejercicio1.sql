-- 1. Crear tabla "Clientes"
CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nombre TEXT,
    email TEXT
);

-- 2. Insertar nuevo cliente
INSERT INTO Clientes (id, nombre, email)
VALUES (1, 'Juan', 'juan@example.com');

-- 3. Actualizar email del cliente con id=1
UPDATE Clientes
SET email = 'juan@gmail.com'
WHERE id = 1;

-- 4. Eliminar cliente con id=1
DELETE FROM Clientes
WHERE id = 1;

-- 5. Crear tabla "Pedidos"
CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    producto TEXT,
    cantidad INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

-- 6. Insertar nuevo pedido
INSERT INTO Pedidos (id, cliente_id, producto, cantidad)
VALUES (1, 1, 'Camiseta', 2);

-- 7. Actualizar cantidad del pedido con id=1
UPDATE Pedidos
SET cantidad = 3
WHERE id = 1;

-- 8. Eliminar pedido con id=1
DELETE FROM Pedidos
WHERE id = 1;

-- 9. Crear tabla "Productos"
CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre TEXT,
    precio DECIMAL
);

-- 10. Insertar varios productos
INSERT INTO Productos (id, nombre, precio)
VALUES
    (1, 'Producto A', 75.00),
    (2, 'Producto B', 120.50),
    (3, 'Producto C', 30.75);

-- 11. Consultar todos los clientes
SELECT * FROM Clientes;

-- 12. Consultar pedidos con nombres de clientes
SELECT Pedidos.id, Pedidos.cliente_id, Clientes.nombre AS nombre_cliente, Pedidos.producto, Pedidos.cantidad
FROM Pedidos
JOIN Clientes ON Pedidos.cliente_id = Clientes.id;

-- 13. Consultar productos con precio mayor a $50
SELECT * FROM Productos
WHERE precio > 50.00;

-- 14. Consultar pedidos con cantidad mayor o igual a 5
SELECT * FROM Pedidos
WHERE cantidad >= 5;

-- 15. Consultar clientes cuyo nombre empiece con "A"
SELECT * FROM Clientes
WHERE nombre LIKE 'A%';
