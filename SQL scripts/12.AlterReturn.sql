/*
Se crea la llave primaria codigo con su índice
en la tabla de devolucion
por Adrian Diaz Azofeifa
*/

ALTER TABLE Return
ADD CONSTRAINT pk_return_code PRIMARY KEY (return_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);