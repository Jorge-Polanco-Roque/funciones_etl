--- Recency, Frecuency and Monetary (RFM) Analysis ---
WITH base AS (
    SELECT 
        cliente_id,
        COUNT(*) AS frecuencia,
        SUM(monto_recarga) AS valor_monetario,
        AVG(monto_recarga) AS ticket_promedio,
        MAX(fecha_recarga) AS ultima_recarga,
        MIN(fecha_recarga) AS primera_recarga
    FROM recargas
    GROUP BY cliente_id
),
rfm AS (
    SELECT
        b.cliente_id AS Cliente,
        b.frecuencia AS Frecuencia,
        b.valor_monetario AS Total_Recargado,
        b.ticket_promedio AS Ticket_Promedio,
        CAST(JULIANDAY(CURRENT_DATE) - JULIANDAY(b.ultima_recarga) AS INT) AS Recencia_Dias,
        CAST(JULIANDAY(b.ultima_recarga) - JULIANDAY(b.primera_recarga) AS INT) AS Dias_Actividad,
        b.frecuencia * b.ticket_promedio AS Ingreso_Estimado,
        COUNT(DISTINCT r.canal) AS Num_Canales,
        COUNT(DISTINCT r.plan_tarifario) AS Num_Planes
    FROM base b
    JOIN recargas r ON r.cliente_id = b.cliente_id
    GROUP BY b.cliente_id, b.frecuencia, b.valor_monetario, 
             b.ticket_promedio, b.ultima_recarga, b.primera_recarga
)
SELECT * FROM rfm;
