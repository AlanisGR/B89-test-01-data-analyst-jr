CREATE OR REPLACE
VIEW vw_clientes_que_recibieron_mas_remesas_ultimo_mes as
SELECT
	r.beneficiario_nombres as cliente,
	m.id_merchant,
	m.razon_social,
	COUNT(*) AS cantidad_remesas
FROM
	remesas r
INNER JOIN 
merchant as m on
	r.id_merchant = m.id_merchant
WHERE
	EXTRACT(MONTH FROM r.fecha_recibido) = EXTRACT(MONTH FROM CURDATE() - INTERVAL 1 MONTH)
	AND r.estado_remesa= 'ENTREGADO'
GROUP BY
	r.beneficiario_nombres,
	m.id_merchant,
	m.razon_social
ORDER BY
	cantidad_remesas DESC
LIMIT 10;