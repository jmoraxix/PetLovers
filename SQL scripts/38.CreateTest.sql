/*Script for creating Test and its related tables
And for adding constraints and keys to them.

Created on 04/21/2015 by Adrian Diaz Azofeifa*/


--Table for each of the options of an item in a test
CREATE TABLE Item_Option
(
       item_option VARCHAR2(50),
       item_option_code NUMBER(10),
       item_code_fk NUMBER(10) 
);

--Table for each of the items in a test
CREATE TABLE Item
(
       item VARCHAR2(30),
       item_code NUMBER(10)
);

--Table for each of the tests
CREATE TABLE Test
(
       test_title VARCHAR2(30), 
       test_code NUMBER(10),  
       test_category NUMBER(1) --0 if recommendation test, 1 if application form
);

--Table for the relation between the items and the tests
CREATE TABLE ItemXTest
(
       test_code_fk NUMBER(10), --FOREIGN KEY FOR TEST'S PRIMARY KEY
       item_code_fk NUMBER(10) --FOREIGN KEY FOR ITEM'S PRIMARY KEY
              
);

/*Alter tables:
Add constraint for primary key
Add primary key to index
*/

ALTER TABLE Item_Option
ADD CONSTRAINT pk_item_option_code PRIMARY KEY (item_option_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

ALTER TABLE Item
ADD CONSTRAINT pk_item_code PRIMARY KEY (item_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

ALTER TABLE Test
ADD CONSTRAINT pk_test_code PRIMARY KEY (test_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

ALTER TABLE ItemXTest
ADD CONSTRAINT pk_itemxtest_code PRIMARY KEY (test_code_fk, item_code_fk)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

/*
Add foreign keys to tables
*/

ALTER TABLE item_option
      ADD CONSTRAINT fk_item_code FOREIGN KEY (item_code_fk) REFERENCES item(item_code);

ALTER TABLE ItemXTest
      ADD CONSTRAINT fk_itemxtest_item_code FOREIGN KEY (item_code_fk) REFERENCES item(item_code);

ALTER TABLE ItemXTest
      ADD CONSTRAINT fk_itemxtest_test_code FOREIGN KEY (test_code_fk) REFERENCES test(test_code);            