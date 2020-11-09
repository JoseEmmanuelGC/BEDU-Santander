USE tienda;

-- SESION 3 - RETO 2: Joins
-- ¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT v.clave, e.nombre, e.apellido_paterno, e.apellido_materno
FROM empleado AS e
JOIN venta AS v
    ON e.id_empleado = v.id_empleado
ORDER BY clave;

-- ¿Cuál es el nombre de los artículos que se han vendido?
SELECT DISTINCT(a.nombre)
FROM articulo AS a
JOIN venta AS v
    ON a.id_articulo = v.id_articulo;

-- ¿Cuál es el total de cada venta?
SELECT v.clave, ROUND(SUM(a.precio), 2) as total
FROM venta AS v
JOIN articulo AS a
    USING(id_articulo)
GROUP BY v.clave
ORDER BY v.clave;