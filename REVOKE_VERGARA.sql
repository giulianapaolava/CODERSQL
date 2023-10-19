
-- REMOVER PERMISOS DE ELIMINACION A LOS DOS USUARIOS
REVOKE DELETE ON fullday_scape.* FROM 'usuario_lectura'@'localhost';
REVOKE DELETE ON fullday_scape.* FROM 'usuario_escritura'@'localhost';