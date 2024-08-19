DELIMITER $$
CREATE PROCEDURE sp_insertar_remesa(
  IN p_tipo_moneda VARCHAR(45),
  IN p_monto DECIMAL(9,3),
  IN p_cliente_beneficiario_id INT,
  IN p_cliente_remitente_id INT,
  IN p_estado_remesa VARCHAR(45),
  IN p_usuario_creacion VARCHAR(45)
)
BEGIN
  DECLARE exit handler for sqlexception
  BEGIN
    ROLLBACK;
    SELECT 'Error al insertar la remesa: ' AS mensaje, ERROR_MESSAGE() AS detalle;
  END;

  -- Validaciones básicas
  IF p_monto <= 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El monto debe ser mayor a cero.';
  END IF;

  -- Inserción de la remesa
  START TRANSACTION;
  INSERT INTO remesas (
    tipo_moneda,
    monto,
    cliente_beneficiario_id,
    cliente_remitente_id,
    estado_remesa,
    usuario_creacion
  ) VALUES (
    p_tipo_moneda,
    p_monto,
    p_cliente_beneficiario_id,
    p_cliente_remitente_id,
    p_estado_remesa,
    p_usuario_creacion
  );
  COMMIT;
END $$
DELIMITER ;

CALL sp_insertar_remesa('SOLES',1500.00,'3','2','EN VALIDACIÓN','user01');