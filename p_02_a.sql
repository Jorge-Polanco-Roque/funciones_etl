--- Crear una tabla para registrar recargas de clientes ---
CREATE TABLE recargas (
    cliente_id INT,
    fecha_recarga DATE,
    monto_recarga DECIMAL(10,2),
    canal VARCHAR(50),
    plan_tarifario VARCHAR(100)
);

--- Insertar datos de ejemplo ---
INSERT INTO recargas (cliente_id, fecha_recarga, monto_recarga, canal, plan_tarifario)
VALUES
(1001, '2025-05-10', 100, 'App', 'AT&T Más'),
(1002, '2025-05-12', 50, 'Tienda', 'Unefon Ilimitado 1.0'),
(1001, '2025-05-15', 100, 'App', 'AT&T Más');

--- ¿Hay nulos en las columnas? ---
SELECT 'cliente_id' AS columna, COUNT(*) - COUNT(cliente_id) AS nulos FROM recargas
UNION ALL
SELECT 'fecha_recarga', COUNT(*) - COUNT(fecha_recarga) FROM recargas
UNION ALL
SELECT 'monto_recarga', COUNT(*) - COUNT(monto_recarga) FROM recargas
UNION ALL
SELECT 'canal', COUNT(*) - COUNT(canal) FROM recargas
UNION ALL
SELECT 'plan_tarifario', COUNT(*) - COUNT(plan_tarifario) FROM recargas;

--- Conteo de duplicados por columna ---
SELECT 'cliente_id' AS columna, COUNT(*) - COUNT(DISTINCT cliente_id) AS duplicados FROM recargas
UNION ALL
SELECT 'fecha_recarga', COUNT(*) - COUNT(DISTINCT fecha_recarga) FROM recargas
UNION ALL
SELECT 'monto_recarga', COUNT(*) - COUNT(DISTINCT monto_recarga) FROM recargas
UNION ALL
SELECT 'canal', COUNT(*) - COUNT(DISTINCT canal) FROM recargas
UNION ALL
SELECT 'plan_tarifario',COUNT(*) - COUNT(DISTINCT plan_tarifario) FROM recargas;

--- Distribución de monto_recarga por cuartiles ---
WITH o AS (
  SELECT monto_recarga,
         CUME_DIST() OVER (ORDER BY monto_recarga) AS cd
  FROM recargas
)
SELECT
  'Min'     AS cuartil, MIN(monto_recarga) AS valor FROM o
UNION ALL
SELECT 'Q1 (25%)', MIN(monto_recarga) FROM o WHERE cd >= 0.25
UNION ALL
SELECT 'Q2 (50% - Mediana)', MIN(monto_recarga) FROM o WHERE cd >= 0.50
UNION ALL
SELECT 'Q3 (75%)', MIN(monto_recarga) FROM o WHERE cd >= 0.75
UNION ALL
SELECT 'Max', MAX(monto_recarga) FROM o;

--- Conteo de registros por plan_tarifario ---
SELECT 
    plan_tarifario,
    COUNT(*) AS total_registros
FROM recargas
GROUP BY plan_tarifario
ORDER BY total_registros DESC;

--- Registros con fecha_recarga en el futuro ---
SELECT *
FROM recargas
WHERE date(fecha_recarga) > date('now');

