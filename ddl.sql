CREATE DATABASE DB_B89;
USE DB_B89;
CREATE TABLE merchant
(
   id_merchant             INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   razon_social            VARCHAR(255) NOT NULL,
   fecha_creacion          DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   usuario_creacion        VARCHAR(45) NULL,
   fecha_modificacion      DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   usuario_modificacion    VARCHAR(45) NULL
);


CREATE TABLE remesas
(
   id_remesa                      INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   id_merchant                    INT NOT NULL,
   tipo_moneda                    VARCHAR(45) NOT NULL,
   monto                          DECIMAL(9, 2) NOT NULL,
   fecha_envio                    DATETIME NULL,
   fecha_recibido                 DATETIME NULL,
   beneficiario_nombres           VARCHAR(255) NOT NULL,
   beneficiario_tipo_documento    VARCHAR(45) NOT NULL,
   beneficiario_num_documento     VARCHAR(45) NOT NULL,
   beneficiario_email             VARCHAR(255) NULL,
   beneficiario_telefono          VARCHAR(15) NULL,
   beneficiario_cta_bancaria      VARCHAR(20) NOT NULL,
   remitente_nombres              VARCHAR(255) NOT NULL,
   remitente_tipo_documento       VARCHAR(45) NOT NULL,
   remitente_num_documento        VARCHAR(45) NOT NULL,
   remitente_email                VARCHAR(255) NULL,
   remitente_telefono             VARCHAR(15) NULL,
   estado_remesa                  VARCHAR(45) NOT NULL,
   fecha_creacion                 DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
   usuario_creacion               VARCHAR(45) NULL,
   fecha_modificacion             DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   usuario_modificacion           VARCHAR(45) NULL,
   FOREIGN KEY(id_merchant) REFERENCES merchant(id_merchant)
);