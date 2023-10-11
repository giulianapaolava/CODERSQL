CREATE TABLE log_paquetes (
    id_log_paquete INT AUTO_INCREMENT PRIMARY KEY,
    usuario_realizador VARCHAR(255), 
    id_paquete INT,
    tipo_operacion ENUM('UPDATE_BEFORE', 'UPDATE_AFTER'),
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    descripcion TEXT,
    FOREIGN KEY (id_paquete) REFERENCES paquetes(id)
);


CREATE TABLE log_reservas (
    id_log_reserva INT AUTO_INCREMENT PRIMARY KEY,
    usuario_realizador VARCHAR(255),
    id_reserva INT,
    tipo_operacion ENUM('UPDATE_BEFORE', 'UPDATE_AFTER'),
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    descripcion TEXT,
    FOREIGN KEY (id_reserva) REFERENCES reservas(id)
);