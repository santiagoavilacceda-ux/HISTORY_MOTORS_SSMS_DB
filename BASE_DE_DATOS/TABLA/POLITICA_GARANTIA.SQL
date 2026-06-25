CREATE TABLE POLITICA_GARANTIA (
Id INT PRIMARY KEY IDENTITY (1,1),
Tipo_De_Gatantia ENUM ('SERVICIO','REPUESTO','MOTOCICLETA' ) not null,
id_politica INT NOT NULL AUTO_INCREMENT,
dias_vigencia INT NOT NULL,
descripcion VARCHAR(255)  NOT NULL,
    activo TINYINT(1) NOT NULL DEFAULT 1,
    CONSTRAINT pk_politica      PRIMARY KEY (id_politica),
    CONSTRAINT ck_dias          CHECK (dias_vigencia > 0)
);