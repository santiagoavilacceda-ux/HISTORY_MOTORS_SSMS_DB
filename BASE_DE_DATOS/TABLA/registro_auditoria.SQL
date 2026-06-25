CREATE TABLE registro_auditoria (
id_auditoria INT NOT NULL AUTO_INCREMENT,
entidad VARCHAR(50) NOT NULL,
id_registro INT NOT NULL,
accion ENUM('CREAR','ACTUALIZAR','ELIMINAR') NOT NULL,
fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
valor_anterior TEXT,
valor_nuevo TEXT,
id_empleado INT NOT NULL,
    CONSTRAINT pk_auditoria     PRIMARY KEY (id_auditoria),
    CONSTRAINT fk_aud_emp       FOREIGN KEY (id_empleado)
        REFERENCES empleado(id_empleado)
);
