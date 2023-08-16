-- 1. Crear la tabla "Pedidos" con claves foráneas
CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    id_usuario INT,
    id_producto INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

-- 2. Insertar registros en la tabla "Pedidos"
INSERT INTO Pedidos (id, id_usuario, id_producto)
VALUES
    (1, 1, 2),
    (2, 2, 4),
    (3, 3, 1);

-- 3. Consulta con LEFT JOIN y COALESCE para nombres de usuarios y productos comprados
SELECT Usuarios.nombre AS nombre_usuario, COALESCE(Productos.nombre, 'Ninguno') AS nombre_producto
FROM Usuarios
LEFT JOIN Pedidos ON Usuarios.id = Pedidos.id_usuario
LEFT JOIN Productos ON Pedidos.id_producto = Productos.id;

-- 4. Consulta con LEFT JOIN para nombres de usuarios que han realizado o no un pedido
SELECT Usuarios.nombre AS nombre_usuario
FROM Usuarios
LEFT JOIN Pedidos ON Usuarios.id = Pedidos.id_usuario;

-- 5. Agregar columna "cantidad" y actualizar registros existentes en la tabla "Pedidos"
ALTER TABLE Pedidos
ADD cantidad INT;

UPDATE Pedidos
SET cantidad = 2
WHERE id IN (1, 2, 3);
