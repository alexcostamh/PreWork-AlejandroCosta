-- 1. Crear la base de datos "MiBaseDeDatos"
CREATE DATABASE MiBaseDeDatos;

-- Cambiar a la base de datos recién creada
USE MiBaseDeDatos;

-- 2. Crear la tabla "Usuarios"
CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombre TEXT,
    edad INT
);

-- 3. Insertar registros en la tabla "Usuarios"
INSERT INTO Usuarios (id, nombre, edad)
VALUES
    (1, 'Usuario 1', 25),
    (2, 'Usuario 2', 30);

-- 4. Actualizar la edad de un usuario en la tabla "Usuarios"
UPDATE Usuarios
SET edad = 28
WHERE id = 1;

-- 5. Eliminar un usuario de la tabla "Usuarios"
DELETE FROM Usuarios
WHERE id = 2;

-- 1. Crear la tabla "Ciudades"
CREATE TABLE Ciudades (
    id INT PRIMARY KEY,
    nombre TEXT,
    pais TEXT
);

-- 2. Insertar registros en la tabla "Ciudades"
INSERT INTO Ciudades (id, nombre, pais)
VALUES
    (1, 'Ciudad A', 'País A'),
    (2, 'Ciudad B', 'País B'),
    (3, 'Ciudad C', 'País C');

-- 3. Agregar foreign key en la tabla "Usuarios"
ALTER TABLE Usuarios
ADD COLUMN ciudad_id INT,
ADD FOREIGN KEY (ciudad_id) REFERENCES Ciudades(id);

-- 4. Consulta con LEFT JOIN para nombres de usuarios, ciudades y países
SELECT Usuarios.nombre, Ciudades.nombre AS ciudad, Ciudades.pais
FROM Usuarios
LEFT JOIN Ciudades ON Usuarios.ciudad_id = Ciudades.id;

-- 5. Consulta con INNER JOIN para usuarios con ciudades asociadas
SELECT Usuarios.nombre, Ciudades.nombre AS ciudad, Ciudades.pais
FROM Usuarios
INNER JOIN Ciudades ON Usuarios.ciudad_id = Ciudades.id;
