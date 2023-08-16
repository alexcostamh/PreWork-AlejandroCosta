-- 1. Crear tabla "Clientes"
CREATE TABLE Clientes (
    id INT,
    nombre TEXT
);

-- 2. Insertar cliente en tabla "Clientes"
INSERT INTO Clientes (id, nombre)
VALUES (1, 'John');

-- 3. Actualizar nombre de cliente en tabla "Clientes"
UPDATE Clientes
SET nombre = 'John Doe'
WHERE id = 1;

-- 4. Eliminar cliente de tabla "Clientes"
DELETE FROM Clientes
WHERE id = 1;

-- 5. Leer todos los clientes de tabla "Clientes"
SELECT * FROM Clientes;

-- 6. Crear tabla "Pedidos"
CREATE TABLE Pedidos (
    id INT,
    cliente_id INT
);

-- 7. Insertar pedido en tabla "Pedidos"
INSERT INTO Pedidos (id, cliente_id)
VALUES (1, 1);

-- 8. Actualizar cliente_id en pedido en tabla "Pedidos"
UPDATE Pedidos
SET cliente_id = 2
WHERE id = 1;

-- 9. Eliminar pedido de tabla "Pedidos"
DELETE FROM Pedidos
WHERE id = 1;

-- 10. Leer todos los pedidos de tabla "Pedidos"
SELECT * FROM Pedidos;

-- 11. Crear tabla "Productos"
CREATE TABLE Productos (
    id INT,
    nombre TEXT
);

-- 12. Insertar producto en tabla "Productos"
INSERT INTO Productos (id, nombre)
VALUES (1, 'Camisa');

-- 13. Actualizar nombre de producto en tabla "Productos"
UPDATE Productos
SET nombre = 'Pantalón'
WHERE id = 1;

-- 14. Eliminar producto de tabla "Productos"
DELETE FROM Productos
WHERE id = 1;

-- 15. Leer todos los productos de tabla "Productos"
SELECT * FROM Productos;

-- 16. Crear tabla "DetallesPedido"
CREATE TABLE DetallesPedido (
    pedido_id INT,
    producto_id INT
);

-- 17. Insertar detalle de pedido en tabla "DetallesPedido"
INSERT INTO DetallesPedido (pedido_id, producto_id)
VALUES (1, 1);

-- 18. Actualizar producto_id en detalle de pedido en tabla "DetallesPedido"
UPDATE DetallesPedido
SET producto_id = 2
WHERE pedido_id = 1;

-- 19. Eliminar detalle de pedido de tabla "DetallesPedido"
DELETE FROM DetallesPedido
WHERE pedido_id = 1;

-- 20. Leer todos los detalles de pedido de tabla "DetallesPedido"
SELECT * FROM DetallesPedido;

-- 21. Consulta con INNER JOIN para obtener clientes y sus pedidos
SELECT Clientes.*, Pedidos.*
FROM Clientes
INNER JOIN Pedidos ON Clientes.id = Pedidos.cliente_id;

-- 22. Consulta con LEFT JOIN para obtener clientes y sus pedidos
SELECT Clientes.*, Pedidos.*
FROM Clientes
LEFT JOIN Pedidos ON Clientes.id = Pedidos.cliente_id;

-- 23. Consulta con INNER JOIN para obtener productos y detalles de pedido
SELECT Productos.*, DetallesPedido.*
FROM Productos
INNER JOIN DetallesPedido ON Productos.id = DetallesPedido.producto_id;

-- 24. Consulta con LEFT JOIN para obtener productos y detalles de pedido
SELECT Productos.*, DetallesPedido.*
FROM Productos
LEFT JOIN DetallesPedido ON Productos.id = DetallesPedido.producto_id;

-- 25. Agregar columna "telefono" a tabla "Clientes"
ALTER TABLE Clientes
ADD telefono TEXT;

-- 26. Modificar columna "telefono" en tabla "Clientes" para cambiar tipo de datos
ALTER TABLE Clientes
ALTER COLUMN telefono INT;

-- 27. Eliminar columna "telefono" de tabla "Clientes"
ALTER TABLE Clientes
DROP COLUMN telefono;

-- 28. Cambiar nombre de tabla "Clientes" a "Usuarios"
ALTER TABLE Clientes
RENAME TO Usuarios;

-- 29. Cambiar nombre de columna "nombre" en tabla "Usuarios"
ALTER TABLE Usuarios
RENAME COLUMN nombre TO nombre_completo;

-- 30. Agregar restricción de clave primaria a columna "id" en tabla "Usuarios"
ALTER TABLE Usuarios
ADD CONSTRAINT pk_usuarios PRIMARY KEY (id);
