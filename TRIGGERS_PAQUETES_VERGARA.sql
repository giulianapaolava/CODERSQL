DELIMITER $$

-- Trigger BEFORE para paquetes
DROP TRIGGER IF EXISTS tr_update_paquetes_before $$

CREATE TRIGGER tr_update_paquetes_before
BEFORE UPDATE ON paquetes
FOR EACH ROW
BEGIN
    -- Acción anterior a la actualización (BEFORE)
    -- Registra los valores originales antes de la actualización
    INSERT INTO log_paquetes (usuario_realizador, id_paquete, tipo_operacion, descripcion)
    VALUES (CURRENT_USER(), OLD.id, 'UPDATE_BEFORE', CONCAT('Titulo: ', OLD.titulo, ' check_in ', OLD.check_in,' check_out ', OLD.check_out,' precio ', OLD.precio ));
END $$

-- Trigger AFTER para paquetes
DROP TRIGGER IF EXISTS tr_update_paquetes_after $$

CREATE TRIGGER tr_update_paquetes_after
AFTER UPDATE ON paquetes
FOR EACH ROW
BEGIN
    -- Acción posterior a la actualización (AFTER)
    -- Registra los valores actualizados después de la actualización
    INSERT INTO log_paquetes (usuario_realizador, id_paquete, tipo_operacion, descripcion)
    VALUES (CURRENT_USER(), NEW.id, 'UPDATE_AFTER',CONCAT('Titulo: ', NEW.titulo, ' --check_in: ', NEW.check_in,' --check_out: ', NEW.check_out,' -- precio: ', NEW.precio ));
END $$

DELIMITER ;