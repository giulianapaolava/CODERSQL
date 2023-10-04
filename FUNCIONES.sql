
-- PRIMERA FUNTION

DELIMITER //
CREATE FUNCTION buscar_paquete_por_titulo(titulo_paquete VARCHAR(255))
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE resultado VARCHAR(255);
    SELECT CONCAT('Título: ', TITULO, ', Precio: $', PRECIO)
    INTO resultado
    FROM paquetes
    WHERE TITULO = titulo_paquete;

    RETURN resultado;
END;
//
DELIMITER ;
SELECT buscar_paquete_por_titulo('BARILOCHE') AS informacion_paquete;

-- SEGUNDA FUNTION
DELIMITER //

CREATE FUNCTION buscar_paquetes_por_servicio(servicio_nombre VARCHAR(255))
RETURNS VARCHAR(2000)
READS SQL DATA
BEGIN
    DECLARE resultado VARCHAR(2000);

    SELECT GROUP_CONCAT(p.titulo SEPARATOR ', ') INTO resultado
    FROM paquetes p
    JOIN paquetes_servicios ps ON p.id = ps.paquete_id
    JOIN servicios s ON ps.servicios_id = s.id
    WHERE s.nombre = servicio_nombre;

    RETURN resultado;
END;
//

DELIMITER ;

SELECT buscar_paquetes_por_servicio('Wifi') AS paquetes_con_servicio;







