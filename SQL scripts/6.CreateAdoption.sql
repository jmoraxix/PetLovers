/*
Script para crear la tabla de adopcion
por Adrian Diaz Azofeifa
*/

CREATE TABLE Adoption
(
       adoption_code VARCHAR2(20) CONSTRAINT adoption_code_nn NOT NULL, /* El codigo de la adopcion*/
       adoption_date DATE DEFAULT SYSDATE CONSTRAINT adoption_date_nn NOT NULL /* La fecha de la adopcion*/
       
);