/* Made by Adrian Diaz Azofeifa 04/20/2015

Script for creating Pet Location table
*/

CREATE TABLE PetLocation
(
		pet_location VARCHAR(50) CONSTRAINT pet_location_nn NOT NULL, 
		pet_location_code NUMBER(10) --PRIMARY KEY
		pet_code NUMBER(10) --Pet Code FOREIGN KEY
);


/*Alter PetLocation table
Adds constraint for primary key
Adds primary key to index
Adds foreign key referencing to pet
*/

ALTER TABLE PetLocation
ADD CONSTRAINT pk_pet_location_code PRIMARY KEY (pet_location_code)
USING INDEX
TABLESPACE PetLovers_Indexes PCTFREE 20
STORAGE (initial 10k next 10k pctincrease 0);

ALTER TABLE PetLocation
      ADD CONSTRAINT fk_pet_code_X_location FOREIGN KEY (pet_code) REFERENCES pet(pet_code); 