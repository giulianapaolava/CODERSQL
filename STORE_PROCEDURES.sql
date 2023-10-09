DELIMITER //
CREATE PROCEDURE ModificarDescuentoPromocion(
    IN id_promocion INT,
    IN porcentaje_descuento DECIMAL(5, 2)
)
BEGIN
    -- Declarar una variable para almacenar el mensaje de resultado
    DECLARE mensaje VARCHAR(255);

    -- Verificar si la promoción existe
    IF EXISTS (SELECT 1 FROM promociones WHERE id = id_promocion) THEN
        -- Actualizar el porcentaje de descuento de la promoción
        UPDATE promociones
        SET porcentaje = porcentaje_descuento
        WHERE id = id_promocion;

        -- Asignar un mensaje de éxito
        SET mensaje = 'Descuento de promoción actualizado correctamente';
    ELSE
        -- Asignar un mensaje de error si la promoción no existe
        SET mensaje = 'Promoción no encontrada';
    END IF;

    -- Devolver el mensaje como resultado
    SELECT mensaje AS resultado;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE AplicarDescuentoReserva(
    IN id_reserva INT,
    IN descuento DECIMAL(10, 2)
)
BEGIN
    -- Declarar una variable para almacenar el mensaje de resultado
    DECLARE mensaje VARCHAR(255);

    -- Verificar si la reserva existe
    IF EXISTS (SELECT 1 FROM reservas WHERE id = id_reserva) THEN
        -- Aplicar el descuento a la reserva
        UPDATE reservas
        SET precio = precio - descuento
        WHERE id = id_reserva;

        -- Asignar un mensaje de éxito
        SET mensaje = 'Descuento aplicado correctamente';
    ELSE
        -- Asignar un mensaje de error si la reserva no existe
        SET mensaje = 'Reserva no encontrada';
    END IF;

    -- Devolver el mensaje como resultado
    SELECT mensaje AS resultado;
END //