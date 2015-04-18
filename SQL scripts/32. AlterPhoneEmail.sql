/* Made by Adrian Diaz Azofeifa 10/07/2015

Script for adding constraints and keys to Phone and Email tables
*/

/*Alter Phone and Email tables
Adds constraints for primary keys
Adds primary keys to index
*/
ALTER TABLE Phone
ADD CONSTRAINT pk_phone PRIMARY KEY (phone_number)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

ALTER TABLE Email
ADD CONSTRAINT pk_email PRIMARY KEY (email)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);