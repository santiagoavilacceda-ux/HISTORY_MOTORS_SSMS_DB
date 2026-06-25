CREATE TABLE orden_servicio (
id_orden INT  NOT NULL AUTO_INCREMENT,
fecha_creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
fecha_cierre DATETIME,
estado ENUM('PENDIENTE','EN_PROCESO','CERRADA','ANULADA') NOT NULL DEFAULT 'PENDIENTE',
diagnostico TEXT NOT NULL,
actividades TEXT,
observaciones TEXT,
id_cliente INT NOT NULL,
id_moto INT NOT NULL,
id_empleado INT NOT NULL,
    CONSTRAINT pk_orden PRIMARY KEY (id_orden),
    CONSTRAINT fk_orden_cliente FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    CONSTRAINT fk_orden_moto FOREIGN KEY (id_moto)
        REFERENCES motocicleta(id_moto),
    CONSTRAINT fk_orden_emp FOREIGN KEY (id_empleado)
        REFERENCES empleado(id_empleado)
);