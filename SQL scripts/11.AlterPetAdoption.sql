/*
Se crea la llave primaria codigo con su índice
en la tabla Adoption
por Adrian Diaz Azofeifa
*/

ALTER TABLE PetAdoption
ADD CONSTRAINT pk_adoption_code PRIMARY KEY (adoption_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);
