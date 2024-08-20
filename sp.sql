CREATE PROCEDURE sp_insertar_remesa(
  IN p_id_merchant INT,
  IN p_tipo_moneda VARCHAR(45),
  IN p_monto DECIMAL(9, 3),
  IN p_fecha_recibido DATETIME,
  IN p_beneficiario_nombres VARCHAR(255),
  IN p_beneficiario_tipo_documento VARCHAR(45),
  IN p_beneficiario_num_documento VARCHAR(45),
  IN p_beneficiario_email VARCHAR(255),
  IN p_beneficiario_telefono VARCHAR(15),
  IN p_beneficiario_cta_bancaria VARCHAR(20),
  IN p_remitente_nombres VARCHAR(255),
  IN p_remitente_tipo_documento VARCHAR(45),
  IN p_remitente_num_documento VARCHAR(45),
  IN p_remitente_email VARCHAR(255),
  IN p_remitente_telefono VARCHAR(15),
  IN p_usuario_creacion VARCHAR(45)
)
BEGIN


INSERT
	INTO
	remesas (
   id_merchant ,
	tipo_moneda ,
	monto ,
	fecha_recibido ,
	beneficiario_nombres ,
	beneficiario_tipo_documento ,
	beneficiario_num_documento ,
	beneficiario_email ,
	beneficiario_telefono ,
	beneficiario_cta_bancaria ,
	remitente_nombres ,
	remitente_tipo_documento ,
	remitente_num_documento ,
	remitente_email ,
	remitente_telefono ,
	estado_remesa ,
	usuario_creacion
  )
VALUES (                  
   p_id_merchant ,                  
   p_tipo_moneda ,                 
   p_monto ,                              
   p_fecha_recibido ,              
   p_beneficiario_nombres ,          
   p_beneficiario_tipo_documento,    
   p_beneficiario_num_documento ,   
   p_beneficiario_email ,  
   p_beneficiario_telefono , 
   p_beneficiario_cta_bancaria ,
   p_remitente_nombres ,
   p_remitente_tipo_documento ,
   p_remitente_num_documento ,
   p_remitente_email ,
   p_remitente_telefono ,
   'CREADO',
   p_usuario_creacion
  );
END ;