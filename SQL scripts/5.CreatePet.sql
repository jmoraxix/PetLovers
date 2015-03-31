/*
Script para crear la tabla de mascota
por Adrian Diaz Azofeifa
*/

CREATE TABLE Pet
(
       pet_name VARCHAR2(20) CONSTRAINT pet_name_nn NOT NULL, /* El nombre de la mascota*/
	   pet_code NUMBER(10) CONSTRAINT pet_code_nn NOT NULL
       
);