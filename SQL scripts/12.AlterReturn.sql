/*
Se crea la llave primaria codigo con su índice
en la tabla de devolucion
por Adrian Diaz Azofeifa
*/

ALTER TABLE Return
ADD CONSTRAINT pk_code PRIMARY KEY (return_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

/*
Se crea la llave foranea para referenciar a persona
*/

ADD CONSTRAINT fk_person FOREIGN KEY (person_id) REFERENCES person(cedula);

/*
Se crea la llave foranea para referenciar a mascota
*/

ADD CONSTRAINT fk_pet FOREIGN KEY (pet_id) REFERENCES pet(pet_code);