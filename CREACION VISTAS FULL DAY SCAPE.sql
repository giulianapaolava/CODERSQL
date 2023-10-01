-- vista uno
CREATE OR REPLACE VIEW usuarios_con_reserva as
SELECT 
    reservas.PRECIO AS Precio,
    usuarios.NOMBRE AS Nombre,
    usuarios.MAIL AS Mail,
    paquetes.TITULO as Paquete,
    reservas.CHECK_IN AS Ingreso
FROM 
    reservas
INNER JOIN 
    usuarios ON reservas.USER_ID = usuarios.ID
INNER JOIN 
    paquetes ON reservas.PAQUETES_ID = paquetes.ID;
    
-- vista dos
CREATE OR REPLACE VIEW paquetes_con_promociones as
SELECT 
    paquetes.TITULO as Paquete,
    paquetes.CHECK_IN as Ingreso,
    paquetes.PRECIO as Precio,
    promociones.NOMBRE as Promocion,
    promociones.PORCENTAJE as Descuento
FROM
    paquetes
INNER JOIN 
    paquetes_promociones ON paquetes.ID = paquetes_promociones.PAQUETE_ID
INNER JOIN 
    promociones ON paquetes_promociones.PROMOCION_ID = promociones.ID;
    
-- vista tres 
CREATE OR REPLACE VIEW paquetes_permiten_mascotas as
SELECT 
    paquetes.TITULO as Paquete,
    paquetes.CHECK_IN as Ingreso,
    paquetes.PRECIO as Precio,
    servicios.NOMBRE as Servicio
FROM
    paquetes
INNER JOIN 
    paquetes_servicios AS ps ON paquetes.ID = ps.PAQUETE_ID
INNER JOIN 
    servicios ON ps.SERVICIOS_ID = servicios.ID
WHERE
    servicios.ID = 10;
    
-- vista 4

CREATE OR REPLACE VIEW paquetes_comida_transporte as
SELECT 
    paquetes.TITULO as Paquete,
    paquetes.CHECK_IN as Ingreso,
    paquetes.PRECIO as Precio,
    servicios.NOMBRE as Servicio
FROM
    paquetes
INNER JOIN 
    paquetes_servicios AS ps ON paquetes.ID = ps.PAQUETE_ID
INNER JOIN 
    servicios ON ps.SERVICIOS_ID = servicios.ID
WHERE
    servicios.ID = 6 OR servicios.id = 4;
    
-- vista 5 
 CREATE OR REPLACE VIEW paquetes_baratos as
SELECT 
 TITULO, PRECIO 
 FROM 
 PAQUETES 
 WHERE 
 PRECIO < 30;
 
 
 
   
    
   


  
    
