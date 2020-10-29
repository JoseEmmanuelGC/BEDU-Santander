USE tienda;

-- SESION 2 - RETO 3: Agrupamientos
-- ¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, COUNT(*) AS total_registros FROM puesto GROUP BY nombre;

-- ¿Cuánto dinero se paga en total por puesto?
SELECT nombre, SUM(salario) AS total_pagado FROM puesto GROUP BY nombre;

-- ¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, COUNT(clave) AS total_ventas FROM venta GROUP BY id_empleado;

-- ¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, COUNT(id_venta) AS total_ventas FROM venta GROUP BY id_articulo;