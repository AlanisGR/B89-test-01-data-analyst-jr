insert into clientes(nombres,tipo_documento,num_documento,email,telefono,cta_bancaria,usuario_creacion)
values ('JORGE HERNAN DAVILA VALDIVIEZO','PASAPORTE','A12345678B','JHDAVILA@GMAIL.COM','9015748896','00345645678912340000','user01'),
('JUAN ALBERTO PEREZ MACNO','DNI','12345678','JPEREZ@HOTMAIL.COM','963258741','12345645678912345698','user01'),
('MICHELL AGUSTIN BENITEZ CORRAL','DNI','87654321','MBENITEZ@HOTMAIL.COM','963254444','12345645678912000000','user01'),
('ROSA GAVILANO FUENTES','DNI','55588812','RGAVILANO@GMAIL.COM','015743512','74185296317894561233','user01');

insert into remesas(tipo_moneda,monto,cliente_beneficiario_id,cliente_remitente_id,estado_remesa,usuario_creacion)
values ('SOLES',1585080.99,1,3,'CREADO','user01'),
('EUROS',888888.58,3,2,'EN VALIDACIÓN','user01'),
('DOLAR',90008.95,2,1,'APROBADO','user01'),
('SOLES',888855.18,2,4,'DENEGADO','user01');


