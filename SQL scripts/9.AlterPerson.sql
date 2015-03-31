/*
Se crea la llave primaria cedula con su indice
por Adrian Diaz Azofeifa
*/
ALTER TABLE Person
  ADD CONSTRAINT pk_cedula PRIMARY KEY (person_id)
  USING INDEX
  TABLESPACE PetLovers_Indexes PCTFREE 20
  STORAGE (initial 10k next 10k pctincrease 0);

/*
Se crea la llave foranea para referenciar a usuario.
*/

ALTER TABLE Person
      ADD CONSTRAINT fk_user FOREIGN KEY (username) REFERENCES usuario(username);

/*
Modificamos las tablas de telefono y correo para referenciar a persona
*/

ALTER TABLE Phone
      ADD CONSTRAINT fk_person_phone FOREIGN KEY (person_id) REFERENCES person(person_id); 

ALTER TABLE Email
      ADD CONSTRAINT fk_person_email FOREIGN KEY (person_id) REFERENCES person(person_id);
