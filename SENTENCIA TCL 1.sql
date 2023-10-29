-- Iniciar la transacción
START TRANSACTION;

-- Eliminar el registro con ID 2 en la tabla paquetes

-- Establecer a NULL la referencia en log_paquetes
UPDATE log_paquetes SET id_paquete = NULL WHERE id_paquete = 2;

-- Establecer a NULL la referencia en paquetes_promociones
UPDATE paquetes_promociones SET paquete_id = NULL WHERE paquete_id = 2;

-- Establecer a NULL la referencia en paquetes_servicios
UPDATE paquetes_servicios SET paquete_id = NULL WHERE paquete_id = 2;

-- Luego, eliminar el registro en paquetes
DELETE FROM paquetes WHERE id = 2;

-- Comentar la sentencia ROLLBACK (no se ejecutará)
-- ROLLBACK;

-- Confirmar la transacción (descomentar para ejecutar)
-- COMMIT;

-- Para volver a insertar el registro
-- INSERT INTO paquetes (ID, TITULO, CHECK_IN, CHECK_OUT, DESCRIPCION, PRECIO)
-- VALUES ('2', 'LOSROQUES', '2023-12-01 14:30:00', '2023-12-20 14:30:00', 'ESTE ES EL PAQUETE CON MAS PLAYAS PARADISIACAS', '40')