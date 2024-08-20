SELECT
    r.cliente_beneficiario_id,
    c.nombres AS Beneficiario,
    DATE_FORMAT(r.fecha_hora_envio, '%m-%Y') AS mes_anio,
    r.estado_remesa,
    SUM(r.monto) AS monto_total_recibido
FROM
    remesas r
INNER JOIN clientes c ON r.cliente_remitente_id = c.id_cliente
WHERE
r.estado_remesa LIKE 'ENTREGADO'
GROUP BY
    r.cliente_beneficiario_id, c.nombres, DATE_FORMAT(r.fecha_hora_envio, '%m-%Y'),r.estado_remesa
ORDER BY
    mes_anio, r.cliente_beneficiario_id;