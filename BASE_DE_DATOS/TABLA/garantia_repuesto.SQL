CREATE TABLE garantia_repuesto (
id_garantia INT NOT NULL,
id_repuesto INT NOT NULL,
    CONSTRAINT pk_gar_rep PRIMARY KEY (id_garantia, id_repuesto),
    CONSTRAINT fk_grp_gar FOREIGN KEY (id_garantia)
        REFERENCES garantia(id_garantia),
    CONSTRAINT fk_grp_rep FOREIGN KEY (id_repuesto)
        REFERENCES repuesto(id_repuesto)
);