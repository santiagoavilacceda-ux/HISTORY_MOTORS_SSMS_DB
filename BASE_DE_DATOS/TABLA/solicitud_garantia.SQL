CREATE TABLE solicitud_garantia (
id_solicitud INT NOT NULL AUTO_INCREMENT,
fecha_solicitud DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
descripcion TEXT NOT NULL,
estado ENUM('PENDIENTE','APROBADA','RECHAZADA') NOT NULL DEFAULT 'PENDIENTE',
fecha_resolucion DATETIME,
observacion_res TEXT,
id_garantia INT NOT NULL,
id_empleado INT NOT NULL,
    CONSTRAINT pk_solicitud PRIMARY KEY (id_solicitud),
    CONSTRAINT fk_sol_gar FOREIGN KEY (id_garantia)
        REFERENCES garantia(id_garantia),
    CONSTRAINT fk_sol_emp FOREIGN KEY (id_empleado)
        REFERENCES empleado(id_empleado)
);