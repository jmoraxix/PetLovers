/*PACKAGE FOR FORMS
Contains all procedures related to forms
Created on 04/21/2015 by Adrian Diaz Azofeifa*/

/*------------------------------------------------------------------------------------------------------------*/
/*SEQUENCES*/

CREATE SEQUENCE item_option_id_generator 
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 1000000000
  NOCACHE
  NOCYCLE;

  CREATE SEQUENCE item__id_generator 
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 1000000000
  NOCACHE
  NOCYCLE;

  CREATE SEQUENCE test_id_generator 
  START WITH 0
  INCREMENT BY 1
  MINVALUE 0
  MAXVALUE 1000000000
  NOCACHE
  NOCYCLE;

/* -----------------------------------------------DECLARACION PACKAGE FOR FORMS----------------------------------*/

CREATE OR REPLACE PACKAGE forms_package AS

PROCEDURE INSERT_ITEM_OPTION 
	(name in VARCHAR2); 

PROCEDURE INSERT_ITEM
	(name in VARCHAR2); 

PROCEDURE INSERT_TEST
	(title in VARCHAR2, type in NUMBER); 

END forms_package;

/* ------------------------------------------------PACKAGE BODY FOR FORMS ----------------------------*/

CREATE OR REPLACE PACKAGE BODY forms_package AS

PROCEDURE INSERT_ITEM_OPTION --falta agregar el item id
	(name in VARCHAR2) IS

	 	BEGIN 
			INSERT INTO ITEM_OPTION(item_option, item_option_code)
				VALUES(name, item_option_id_generator.nextval); 
	COMMIT; 

END INSERT_ITEM_OPTION;

PROCEDURE INSERT_ITEM 
  (name in VARCHAR2) IS

    BEGIN 
      INSERT INTO ITEM(item, item_code)
        VALUES(name, item_id_generator.nextval); 
  COMMIT; 

END INSERT_ITEM;

PROCEDURE INSERT_TEST 
  (title in VARCHAR2, type in NUMBER) IS

    BEGIN 
      INSERT INTO TEST(test_title, test_code, test_category)
        VALUES(title, test_id_generator.nextval, type); 
  COMMIT; 

END INSERT_TEST; 

END forms_package;