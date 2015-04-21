/*Script for creating a person X person review relationship table,
and for adding constraints and keys to it.

Created on 04/21/2015 by Adrian Diaz Azofeifa*/


--Table
CREATE TABLE PersonReviewsPerson
(
       person_review_fk NUMBER(10), --FOREIGN KEY FOR REVIEW'S PRIMARY KEY
       reviewed_person_id_fk NUMBER(10), --FOREIGN KEY FOR PERSON'S PRIMARY KEY
       reviewer_person_id_fk NUMBER(10), --FOREIGN KEY FOR PERSON'S PRIMARY KEY
       person_review_person_code NUMBER(10) --PRIMARY KEY
);

--Primary Key constraint
ALTER TABLE PersonReviewsPerson
ADD CONSTRAINT pk_person_reviews_person_code PRIMARY KEY (person_review_person_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

--Foreign Key constraints
ALTER TABLE PersonReviewsPerson
      ADD CONSTRAINT fk_personxperson_review FOREIGN KEY (person_review_fk) REFERENCES personreview(person_review_code);

ALTER TABLE PersonReviewsPerson
      ADD CONSTRAINT fk_reviewed_person_id FOREIGN KEY (reviewed_person_id_fk) REFERENCES person(person_id);

ALTER TABLE PersonReviewsPerson
      ADD CONSTRAINT fk_reviewer_person_id FOREIGN KEY (reviewer_person_id_fk) REFERENCES person(person_id);      