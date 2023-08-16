-- 1. Crear la tabla "Productos"
CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre TEXT,
    precio NUMERIC
);

-- 2. Insertar registros en la tabla "Productos"
INSERT INTO Productos (id, nombre, precio)
VALUES
    (1, 'Producto A', 10.99),
    (2, 'Producto B', 25.50),
    (3, 'Producto C', 5.75),
    (4, 'Producto D', 15.00),
    (5, 'Producto E', 8.25);

-- 3. Actualizar el precio de un producto en la tabla "Productos"
UPDATE Productos
SET precio = 18.99
WHERE id = 1;

-- 4. Eliminar un producto de la tabla "Productos"
DELETE FROM Productos
WHERE id = 3;

-- 5. Consulta con INNER JOIN para nombres de usuarios y productos comprados
SELECT Usuarios.nombre AS nombre_usuario, Productos.nombre AS nombre_producto
FROM Usuarios
INNER JOIN Compras ON Usuarios.id = Compras.usuario_id
INNER JOIN Productos ON Compras.producto_id = Productos.id;
