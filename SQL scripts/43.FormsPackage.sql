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

PROCEDURE REMOVE_ITEM_OPTION 
  (item_option_id in NUMBER); 

PROCEDURE REMOVE_ITEM
  (item_id in NUMBER);

PROCEDURE REMOVE_TEST
  (test_id in NUMBER);

PROCEDURE UPDATE_ITEM
  (pitem_id in NUMBER, item_body in VARCHAR2);

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

PROCEDURE REMOVE_ITEM_OPTION 
  (pitem_option_id in NUMBER) IS
    
    BEGIN
      DELETE FROM ITEM_OPTION
      WHERE ITEM_OPTION.item_option_code = pitem_option_id;

  COMMIT;

END REMOVE_ITEM_OPTION;  

PROCEDURE REMOVE_ITEM
  (pitem_id in NUMBER) IS
    
    BEGIN
      DELETE FROM ITEM
      WHERE ITEM.item_code = pitem_id;

  COMMIT;

END REMOVE_ITEM;

PROCEDURE REMOVE_TEST
  (ptest_id in NUMBER) IS

    BEGIN
      DELETE FROM TEST
      WHERE TEST.test_code = ptest_id;

  COMMIT;

END REMOVE_TEST;

PROCEDURE UPDATE_ITEM
  (pitem_id IN NUMBER, item_body in VARCHAR2) IS

    BEGIN
      UPDATE ITEM
      SET item = item_body;
      WHERE item_code = pitem_id;

    COMMIT;

  END UPDATE_ITEM;

END forms_package;