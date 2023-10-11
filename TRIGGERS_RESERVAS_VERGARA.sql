DELIMITER $$

-- Trigger BEFORE para reservas
DROP TRIGGER IF EXISTS tr_update_reservas_before $$

CREATE TRIGGER tr_update_reservas_before
BEFORE UPDATE ON reservas
FOR EACH ROW
BEGIN
    -- Acción anterior a la actualización (BEFORE)
    -- Registra los valores originales antes de la actualización
    INSERT INTO log_reservas (usuario_realizador, id_reserva, tipo_operacion, descripcion)
    VALUES (CURRENT_USER(), OLD.id, 'UPDATE_BEFORE', CONCAT('Precio: ', OLD.precio, ' check_in ', OLD.check_in,' check_out ', OLD.check_out ));
END $$

-- Trigger AFTER para reservas
DROP TRIGGER IF EXISTS tr_update_reservas_after $$

CREATE TRIGGER tr_update_reservas_after
AFTER UPDATE ON reservas
FOR EACH ROW
BEGIN
    -- Acción posterior a la actualización (AFTER)
    -- Registra los valores actualizados después de la actualización
    INSERT INTO log_reservas (usuario_realizador, id_paquete, tipo_operacion, descripcion)
    VALUES (CURRENT_USER(), NEW.id, 'UPDATE_AFTER',CONCAT('Precio: ', NEW.precio, ' --check_in: ', NEW.check_in,' --check_out: ', NEW.check_out ));
END $$

DELIMITER ;
