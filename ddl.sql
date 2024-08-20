create database DB_B89;
use DB_B89;
create table clientes(
  id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombres VARCHAR(255) NOT NULL,
  tipo_documento VARCHAR(45) NOT NULL,
  num_documento VARCHAR(45) NOT NULL,
  email VARCHAR(255) NULL,
  telefono VARCHAR(15) NULL,
  cta_bancaria VARCHAR(20) NOT NULL,
  fecha_creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_creacion VARCHAR(45) NULL,
  fecha_modificacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario_modificacion VARCHAR(45) NULL
  ) ;
create table remesas (
  id_remesa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tipo_moneda VARCHAR(45) NOT NULL,
  monto DECIMAL(9,2) NOT NULL,
  fecha_hora_envio DATETIME NULL,
  fecha_hora_recibido DATETIME NULL,
  cliente_beneficiario_id INT NOT NULL,
  cliente_remitente_id INT NOT NULL,
  estado_remesa VARCHAR(45) NOT NULL,
  fecha_creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  usuario_creacion VARCHAR(45) NULL,
  fecha_modificacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usuario_modificacion VARCHAR(45) NULL,
  FOREIGN KEY (cliente_beneficiario_id) REFERENCES clientes(id_cliente),
  FOREIGN KEY (cliente_remitente_id) REFERENCES clientes(id_cliente)
);