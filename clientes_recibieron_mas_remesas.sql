CREATE OR REPLACE VIEW vw_clientes_que_recibieron_mas_remesas_ultimo_mes as
SELECT 
r.cliente_beneficiario_id as cb,
c.nombres,
COUNT(*) AS  cantidad_remesas
FROM 
remesas r
inner join clientes as c on r.cliente_beneficiario_id = c.id_cliente
WHERE 
EXTRACT(MONTH FROM r.fecha_hora_recibido) = EXTRACT(MONTH FROM CURDATE() - INTERVAL 1 MONTH) 
AND UPPER (r.estado_remesa) LIKE 'ENTREGADO' 
GROUP BY 
cb,
c.nombres
ORDER BY
    cantidad_remesas DESC
LIMIT 10;