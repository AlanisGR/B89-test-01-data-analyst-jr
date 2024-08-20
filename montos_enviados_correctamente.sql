SELECT
    r.cliente_remitente_id,
    c.nombres as Remitente,
    DATE_FORMAT(r.fecha_hora_envio, '%m-%Y') AS mes_anio,
    SUM(r.monto) AS monto_total_enviado
FROM
    remesas r
INNER JOIN clientes c ON r.cliente_remitente_id = c.id_cliente
WHERE
    YEAR(r.fecha_hora_envio) = YEAR(CURDATE())  
    AND r.estado_remesa like 'ENTREGADO'
GROUP BY
    r.cliente_remitente_id,
    c.nombres ,
    DATE_FORMAT(r.fecha_hora_envio, '%m-%Y')
ORDER BY
    mes_anio, cliente_remitente_id;