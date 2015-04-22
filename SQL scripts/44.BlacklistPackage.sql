/*PACKAGE FOR REVIEWS
Contains all procedures related to user review and blacklist
Created on 04/21/2015 by Adrian Diaz Azofeifa*/

/*------------------------------------------------------------------------------------------------------------*/
/*SEQUENCES*/


  CREATE SEQUENCE person_review_id_generator 
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 1000000000
  NOCACHE
  NOCYCLE;

  CREATE SEQUENCE person_reviews_person_id_generator 
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 1000000000
  NOCACHE
  NOCYCLE;

  CREATE SEQUENCE blacklist_id_generator 
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 1000000000
  NOCACHE
  NOCYCLE;

/* -----------------------------------------------DECLARACION PACKAGE FOR FORMS----------------------------------*/

CREATE OR REPLACE PACKAGE blacklist_package AS

PROCEDURE INSERT_PERSON_REVIEW
  (review in VARCHAR2);

PROCEDURE INSERT_BLACKLIST
  (name in VARCHAR2);

END blacklist_package;

/* ------------------------------------------------PACKAGE BODY FOR FORMS ----------------------------*/

CREATE OR REPLACE PACKAGE BODY blacklist_package AS


PROCEDURE INSERT_PERSON_REVIEW --falta agregar el person id
  (review in VARCHAR2) IS

    BEGIN 
      INSERT INTO PERSON_REVIEW (person_review, person_review_code)
        VALUES(review, person_review_id_generator.nextval); 
  COMMIT; 

END PERSON_REVIEW;

PROCEDURE INSERT_BLACKLIST --falta agregar el person id
  (name in VARCHAR2) IS

    BEGIN 
      INSERT INTO BLACKLIST(blacklist_code)
        VALUES(blacklist_id_generator.nextval); 
  COMMIT; 

END INSERT_BLACKLIST;


END blacklist_package;