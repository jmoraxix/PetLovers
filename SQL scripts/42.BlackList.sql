/*Script for creating a blacklist table,
and for adding constraints and keys to it.

Created on 04/21/2015 by Adrian Diaz Azofeifa*/


--Table
CREATE TABLE BlackList
(
	   blacklist_code NUMBER(10), --PRIMARY KEY
       person_id_fk NUMBER(10) --FOREIGN KEY FOR PERSON'S PRIMARY KEY
);

--Primary Key constraint
ALTER TABLE BlackList
ADD CONSTRAINT pk_blacklist_code PRIMARY KEY (blacklist_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

--Foreign Key constraint
ALTER TABLE BlackList
      ADD CONSTRAINT fk_blacklist_person_id FOREIGN KEY (person_id_fk) REFERENCES person(person_id);