SELECT
	r.beneficiario_nombres as beneficiario,
	r.estado_remesa,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '01' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_enero,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '02' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_febrero,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '03' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_marzo,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '04' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_abril,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '05' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_mayo,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '06' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_junio,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '07' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_julio,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '08' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_agosto,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '09' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_septiembre,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '10' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_octubre,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '11' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_noviembre,
	SUM(
		CASE WHEN DATE_FORMAT(r.fecha_envio, '%m') = '12' 
			THEN r.monto 
			ELSE 0 
		END
		) AS montos_diciembre
FROM
	remesas r
WHERE
	YEAR(r.fecha_envio) = YEAR(CURDATE())
	AND r.estado_remesa = 'ENTREGADO'
GROUP BY
	r.beneficiario_nombres,
	r.estado_remesa;