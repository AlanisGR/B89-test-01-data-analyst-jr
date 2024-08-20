CREATE OR REPLACE
VIEW vw_remesas_no_procesadas_ultimo_mes as
SELECT
	m.id_merchant,
	m.razon_social,
	r.estado_remesa,
	COUNT(*) AS cantidad_remesas_no_procesadas
FROM
	remesas r
INNER JOIN merchant as m on
	r.id_merchant = m.id_merchant
WHERE
	EXTRACT(MONTH FROM r.fecha_recibido) = EXTRACT(MONTH FROM CURDATE() - INTERVAL 1 MONTH)
	AND UPPER (r.estado_remesa) LIKE 'DENEGADO'
GROUP BY
	m.id_merchant,
	m.razon_social,
	r.estado_remesa;
