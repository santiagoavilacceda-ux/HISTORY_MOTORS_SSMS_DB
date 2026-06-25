CREATE TABLE garantia (
id_garantia INT NOT NULL AUTO_INCREMENT,
fecha_inicio DATE NOT NULL,
fecha_vencimiento DATE NOT NULL,
estado ENUM('VIGENTE','VENCIDA','SIN_REGISTRO') NOT NULL DEFAULT 'VIGENTE',
tipo_garantia ENUM('SERVICIO','REPUESTO','MOTOCICLETA') NOT NULL,
id_orden INT NOT NULL,
id_politica INT NOT NULL,
fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_garantia      PRIMARY KEY (id_garantia),
    CONSTRAINT fk_gar_orden     FOREIGN KEY (id_orden)
        REFERENCES orden_servicio(id_orden),
    CONSTRAINT fk_gar_politica  FOREIGN KEY (id_politica)
        REFERENCES politica_garantia(id_politica),
    CONSTRAINT ck_fechas        CHECK (fecha_vencimiento > fecha_inicio)
);