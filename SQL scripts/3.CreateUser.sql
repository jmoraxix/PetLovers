/*
Script para crear la tabla de usuario
por Adrian Diaz Azofeifa
*/

CREATE TABLE Usuario
(
       user_name VARCHAR2(10), /* Users name*/ 
       user_id NUMBER(10)  /* The primary key*/ 
       user_password VARCHAR2(16),  /*password*/
       user_type NUMBER(1) /*The type of user Administrative(1) or regular(0) */
       
);


