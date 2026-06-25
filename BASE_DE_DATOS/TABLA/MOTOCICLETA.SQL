CREATE TABLE motocicleta (
id_moto INT NOT NULL AUTO_INCREMENT,
placa VARCHAR(10) NOT NULL UNIQUE,
marca VARCHAR(50) NOT NULL,
modelo VARCHAR(50) NOT NULL,
año INT NOT NULL,
cilindraje INT NOT NULL,
color VARCHAR(30),
id_cliente INT NOT NULL,
    CONSTRAINT pk_motocicleta   PRIMARY KEY (id_moto),
    CONSTRAINT fk_moto_cliente  FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    CONSTRAINT ck_año CHECK (anio >= 1900),
    CONSTRAINT ck_cilindraje CHECK (cilindraje > 0)
);