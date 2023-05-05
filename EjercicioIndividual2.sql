CREATE DATABASE Ejercicio2;

CREATE USER 'usuario'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON nombre_de_la_base_de_datos.* TO 'usuario'@'localhost';

USE Ejercicio2;

CREATE TABLE OPERADORES (
  RUN VARCHAR(20) PRIMARY KEY,
  NOMBRE VARCHAR(50),
  APELLIDO VARCHAR(50),
  DIRECCION VARCHAR(100),
  CORREO_ELECTRONICO VARCHAR(100),
  FECHA_CREACION_CUENTA DATE
);

CREATE TABLE USUARIOS (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NOMBRE VARCHAR(50),
  APELLIDO VARCHAR(50),
  CORREO_ELECTRONICO VARCHAR(100),
  TELEFONO VARCHAR(20),
  FECHA_CREACION_CUENTA DATE
);

CREATE TABLE CAPACITACION (
  CODIGO_CURSO VARCHAR(20) PRIMARY KEY,
  NOMBRE VARCHAR(100),
  HORARIO VARCHAR(50),
  COSTO REAL,
  FECHA_REALIZACION DATE
);
-- Insertar datos en la tabla de operadores
INSERT INTO operadores (run, nombre, apellido, direccion, correo_electronico, fecha_creacion_cuenta)
VALUES
  ('123456789', 'Juan', 'Pérez', 'Av. Siempre Viva 123', 'juan.perez@gmail.com', '2023-04-01'),
  ('234567890', 'María', 'García', 'Calle Falsa 123', 'maria.garcia@gmail.com', '2023-04-02'),
  ('345678901', 'Pedro', 'López', 'Av. Libertador 456', 'pedro.lopez@gmail.com', '2023-04-03'),
  ('456789012', 'Ana', 'Martínez', 'Calle Real 456', 'ana.martinez@gmail.com', '2023-04-04'),
  ('567890123', 'Carlos', 'González', 'Av. Principal 789', 'carlos.gonzalez@gmail.com', '2023-04-05'),
  ('678901234', 'Laura', 'Hernández', 'Calle Peatonal 12', 'laura.hernandez@gmail.com', '2023-04-06'),
  ('789012345', 'Miguel', 'Díaz', 'Av. Central 456', 'miguel.diaz@gmail.com', '2023-04-07'),
  ('890123456', 'Luisa', 'Rojas', 'Calle del Sol 789', 'luisa.rojas@gmail.com', '2023-04-08'),
  ('901234567', 'Mario', 'Sánchez', 'Av. del Río 123', 'mario.sanchez@gmail.com', '2023-04-09'),
  ('012345678', 'Sofía', 'Gómez', 'Calle del Mar 456', 'sofia.gomez@gmail.com', '2023-04-10');

drop table usuarios;
-- Insertar datos en la tabla de usuarios
INSERT INTO usuarios (nombre, apellido, correo_electronico, telefono, fecha_creacion_cuenta)
VALUES
  ('Jorge', 'Fernández', 'jorge.fernandez@gmail.com', '12345678', '2023-04-01'),
  ('Carla', 'López', 'carla.lopez@gmail.com', '23456789', '2023-04-02'),
  ('Jose', 'Fernández', 'jose.fernandez@gmail.com', '34567890', '2023-04-03'),
  ('Mauricio', 'López', 'mauricio.lopez@gmail.com', '09876543', '2023-04-04'),
  ('Ricardo', 'Fernández', 'ricardo.fernandez@gmail.com', '98765433', '2023-04-05'),
  ('Camilo', 'López', 'camilo.lopez@gmail.com', '87654321', '2023-04-06'),
  ('Camila', 'Fernández', 'camila.fernandez@gmail.com', '43224322', '2023-04-07'),
  ('Ignacio', 'López', 'ignacio.lopez@gmail.com', '54323456', '2023-04-08'),
  ('Ignacia', 'Fernández', 'ignacia.fernandez@gmail.com', '76543456', '2023-04-09'),
  ('Karla', 'López', 'karla.lopez@gmail.com', '76543234', '2023-04-10');
  
-- Inserta datos en la tabla capacitacione

INSERT INTO CAPACITACION (codigo_curso, nombre, horario, costo, fecha_realizacion)
VALUES
(1, 'Introducción a la programación', '9:00 - 13:00', 100, '2023-05-10'),
(2, 'Programación orientada a objetos', '14:00 - 18:00', 120, '2023-05-12'),
(3, 'Desarrollo web con HTML y CSS', '9:00 - 13:00', 80, '2023-05-15'),
(4, 'Desarrollo web con JavaScript', '14:00 - 18:00', 150, '2023-05-17'),
(5, 'Bases de datos con MySQL', '9:00 - 13:00', 90, '2023-05-20'),
(6, 'Desarrollo de aplicaciones móviles', '14:00 - 18:00', 200, '2023-05-22'),
(7, 'Programación en Python', '9:00 - 13:00', 120, '2023-05-25'),
(8, 'Inteligencia artificial y machine learning', '14:00 - 18:00', 250, '2023-05-27'),
(9, 'Desarrollo de videojuegos', '9:00 - 13:00', 180, '2023-05-30'),
(10, 'Ciberseguridad', '14:00 - 18:00', 150, '2023-06-01');

-- Muestre los 5 operadores más recientemente registrados.
SELECT *
FROM OPERADORES
ORDER BY fecha_creacion_cuenta DESC
LIMIT 5;

-- Muestre los 5 usuarios más recientemente registrados.
SELECT *
FROM USUARIOS
ORDER BY fecha_creacion_cuenta DESC
LIMIT 5;

-- - Calcule cuántos días han transcurrido desde que se registró a operadores y clientes. Indague en la función DATEDIFF() de MySQL.
SELECT RUN, nombre, apellido, DATEDIFF(NOW(), fecha_creacion_cuenta) AS dias_transcurridos
FROM OPERADORES;
SELECT id, nombre, apellido, DATEDIFF(NOW(), fecha_creacion_cuenta) AS dias_transcurridos
FROM USUARIOS;

-- - Calcule cuántos días transcurrieron desde que se realizó el último curso de capacitación.
SELECT DATEDIFF(NOW(), MAX(fecha_realizacion)) AS dias_transcurridos_desde_ultimo_curso
FROM CAPACITACION;
-- Por último, indique cuál fue el curso de capacitación más costoso y el menos costoso.
SELECT MAX(costo_realizacion) AS costo_curso_mas_costoso,
       MIN(costo_realizacion) AS costo_curso_menos_costoso
FROM CAPACITACION;