USE tienda;

-- SESION 2 - RETO 1: Busqueda de patrones mediante LIKE
-- ¿Qué artículos incluyen la palabra Pasta en su nombre?
SELECT nombre FROM articulo WHERE nombre LIKE '%pasta%';

-- ¿Qué artículos incluyen la palabra Cannelloni en su nombre?
SELECT nombre FROM articulo WHERE nombre LIKE '%cannelloni%';

-- ¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
SELECT nombre FROM articulo WHERE nombre LIKE '%-%';

-- ¿Qué puestos incluyen la palabra Designer?
SELECT nombre FROM puesto WHERE nombre LIKE '%designer%';

-- ¿Qué puestos incluyen la palabra Developer?
SELECT nombre FROM puesto WHERE nombre LIKE '%developer%';


