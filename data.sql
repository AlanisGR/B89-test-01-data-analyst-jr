INSERT INTO merchant(razon_social,usuario_creacion) 
VALUES 
("INCAK S.A.C","USER1"),
("PEPITOS S.A.C","USER1"),
("HAVRL S.A.C","USER1");

CALL sp_insertar_remesa(1,'SOLES', 1500, '2024-01-10 13:00', 'JUAN PEREZ', 'DNI', '41256398', 'jperez@gmail.com', '985632211',  '110023654855','ANA DIAZ', 'DNI', '25698866', 'adiaz@gmail.com', '875236991','USER01');
CALL sp_insertar_remesa(2,'EUROS', 10500, '2024-07-10 13:15','MARIA TORRES PALOMINO', 'DNI', '123456000', 'mtorres@gmail.com', '987654321', '123456789012','ANGEL DIAZ RAMOS', 'DNI', '55698866', 'adiazr@gmail.com', '975236991','USER01');
CALL sp_insertar_remesa(3,'EUROS', 19970.50, '2024-08-01 13:15','JORGE HERNAN DAVILA VALDIVIEZO','PASAPORTE','A12345678B','JHDAVILA@@gmail.com','9015748896','00345645678912340000','ANGEL DIAZ RAMOS', 'DNI', '55698866', 'adiazr@gmail.com', '975236991','USER01');