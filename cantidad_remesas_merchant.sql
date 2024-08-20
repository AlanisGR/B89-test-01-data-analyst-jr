CREATE OR REPLACE VIEW vw_remesas_no_procesadas_ultimo_mes as
SELECT 
r.estado_remesa,
COUNT(*) AS  cantidad_remesas_no_procesadas
FROM 
remesas r
WHERE 
EXTRACT(MONTH FROM r.fecha_hora_recibido) = EXTRACT(MONTH FROM CURDATE() - INTERVAL 1 MONTH) 
AND UPPER (r.estado_remesa) LIKE 'DENEGADO' 
GROUP BY 
r.estado_remesa;
