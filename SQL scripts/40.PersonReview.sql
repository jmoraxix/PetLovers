/*Script for creating a person's review table,
and for adding constraints and keys to it.

Created on 04/21/2015 by Adrian Diaz Azofeifa*/


--Table
CREATE TABLE PersonReview
(
       person_review NUMBER(1), --Score from 1 to 5, 1 being lowest
       person_id_fk NUMBER(10), --FOREIGN KEY FOR PERSON'S PRIMARY KEY
       person_review_code NUMBER(10) --PRIMARY KEY
);

--Primary Key constraint
ALTER TABLE PersonReview
ADD CONSTRAINT pk_person_review_code PRIMARY KEY (person_review_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

--Foreign Key constraint
ALTER TABLE PersonReview
      ADD CONSTRAINT fk_person_review_person_id FOREIGN KEY (person_id_fk) REFERENCES person(person_id);