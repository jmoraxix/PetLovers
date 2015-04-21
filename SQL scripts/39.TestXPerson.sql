/*Script for creating Test and Person n to m relationship,
and for adding constraints and keys to them.

Created on 04/21/2015 by Adrian Diaz Azofeifa*/


--Table
CREATE TABLE TestXPerson
(
       test_code_fk NUMBER(10), --FOREIGN KEY FOR TEST'S PRIMARY KEY
       person_id_fk NUMBER(10) --FOREIGN KEY FOR PERSON'S PRIMARY KEY
);

--Primary Key constraint
ALTER TABLE TestXPerson
ADD CONSTRAINT pk_testxperson_code PRIMARY KEY (test_code_fk, person_id_fk)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

--Foreign Key constraints
ALTER TABLE TestXPerson
      ADD CONSTRAINT fk_testxperson_person_id FOREIGN KEY (person_id_fk) REFERENCES person(person_id);

ALTER TABLE TestXPerson
      ADD CONSTRAINT fk_testxperson_test_code FOREIGN KEY (test_code_fk) REFERENCES test(test_code);