CREATE TABLE cliente (
Id_cliente INT NOT NULL AUTO_INCREMENT,
Nombre_cliente VARCHAR(100)  NOT NULL,
Identificacion_cliente  VARCHAR(20)   NOT NULL UNIQUE,
Telefono_cliente VARCHAR(15) NOT NULL,
Correo_cliente VARCHAR(100),
Direccion_cliente VARCHAR(200),
Fecha_registro DATE NOT NULL,
Activo TINYINT(1) NOT NULL DEFAULT 1,
    CONSTRAINT pk_cliente PRIMARY KEY (id_cliente)
);
