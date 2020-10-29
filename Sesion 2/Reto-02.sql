USE tienda;

-- SESION 2 - RETO 2: Funciones de agrupamiento
-- ¿Cuál es el promedio de salario de los puestos?
SELECT AVG(salario) AS promedio_salario FROM puesto;

-- ¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT COUNT(*) AS cantidad_articulos FROM articulo WHERE nombre LIKE '%pasta%';

-- ¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario) AS salario_minimo, MAX(salario) AS salario_maximo  FROM puesto;

-- ¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT SUM(salario) FROM puesto WHERE id_puesto > (SELECT MAX(id_puesto) - 5 FROM puesto);