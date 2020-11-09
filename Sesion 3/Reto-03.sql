USE tienda;

-- SESION 3 - RETO 3: Definición de vistas
-- Obtener el puesto de un empleado.
CREATE VIEW 132_empleado_puesto AS (
    SELECT 
        e.id_empleado,
        CONCAT(e.nombre, ' ', e.apellido_paterno) AS empleado, 
        p.id_puesto,
        p.nombre AS puesto
    FROM empleado AS e
    JOIN puesto AS p
        ON e.id_puesto = p.id_puesto
);
SELECT * FROM 132_empleado_puesto;
SELECT * FROM 132_empleado_puesto WHERE empleado = "Pieter Bolam";

-- Saber qué artículos ha vendido cada empleado.
CREATE VIEW 132_empleado_articulos AS (
    SELECT 
        e.id_empleado,
        CONCAT(e.nombre, ' ', e.apellido_paterno) AS empleado, 
        a.id_articulo,
        a.nombre AS articulo
    FROM empleado AS e
    JOIN venta AS v
        ON e.id_empleado = v.id_empleado
    JOIN articulo AS a
        ON v.id_articulo = a.id_articulo
    ORDER BY e.id_empleado
);
SELECT * FROM 132_empleado_articulos;
SELECT * FROM 132_empleado_articulos WHERE empleado = "Crissie Cleveley";

-- Saber qué puesto ha tenido más ventas.
CREATE VIEW 132_puesto_ventas AS (
    SELECT p.id_puesto, p.nombre, COUNT(v.clave) as ventas
    FROM venta v
    JOIN empleado e
        USING(id_empleado)
    JOIN puesto p
        USING(id_puesto)
    GROUP BY p.id_puesto
);
SELECT * FROM 132_puesto_ventas
ORDER BY ventas DESC
LIMIT 5;
