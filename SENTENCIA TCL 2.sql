-- Iniciar una nueva transacción
START TRANSACTION;

-- Agregar nuevos registros a la tabla servicios (sin repetir los existentes)
INSERT IGNORE INTO servicios (Id, nombre) VALUES
    ('11', 'pileta');

INSERT IGNORE INTO servicios (Id, nombre) VALUES
    ('12', 'peluqueria');

INSERT IGNORE INTO servicios (Id, nombre) VALUES
    ('13', 'parque acuatico');

INSERT IGNORE INTO servicios (Id, nombre) VALUES
    ('14', 'catering');

-- Crear el primer SAVEPOINT después de agregar los primeros 4 registros
SAVEPOINT mi_savepoint1;

INSERT IGNORE INTO servicios (Id, nombre) VALUES
    ('15', 'clases de yoga o pilates');

INSERT IGNORE INTO servicios (Id, nombre) VALUES
    ('16', 'transporte en ferri');

INSERT IGNORE INTO servicios (Id, nombre) VALUES
    ('17', 'ropa de esquiar');

INSERT IGNORE INTO servicios (Id, nombre) VALUES
    ('18', 'tiendas libre de impuestos');

-- Eliminar el primer SAVEPOINT
RELEASE SAVEPOINT mi_savepoint1;

-- Confirmar la transacción (descomentar para ejecutar)
-- COMMIT;