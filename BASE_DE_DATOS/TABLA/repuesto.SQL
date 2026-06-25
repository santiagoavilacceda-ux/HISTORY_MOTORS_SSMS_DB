CREATE TABLE repuesto (
id_repuesto INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100)  NOT NULL,
cantidad INT NOT NULL DEFAULT 1,
precio_unitario DECIMAL(10,2) NOT NULL,
fecha_instalacion DATE NOT NULL,
id_orden INT NOT NULL,
    CONSTRAINT pk_repuesto      PRIMARY KEY (id_repuesto),
    CONSTRAINT fk_rep_orden     FOREIGN KEY (id_orden)
        REFERENCES orden_servicio(id_orden),
    CONSTRAINT ck_cantidad      CHECK (cantidad > 0),
    CONSTRAINT ck_precio        CHECK (precio_unitario >= 0)
);