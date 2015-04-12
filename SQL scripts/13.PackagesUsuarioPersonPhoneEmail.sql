/* Made by Ernesto Lang 3/31/2015 */

/* PACKAGE FOR USUARIO*/
/* This package contains a set of instructions for PHP to call 
whenever necessary to make any queries, if any other special queries are required they will 
be added to this package when it concerns USUARIO */

CREATE OR REPLACE PACKAGE usuario_package AS
       PROCEDURE add_user(user_username usuario.username%type, user_password usuario.user_password%type);
       FUNCTION findUsers (u_name usuario.username%type, u_pass usuario.user_password%type)
       RETURN NUMBER;
END usuario_package; 
  
CREATE OR REPLACE PACKAGE BODY usuario_package AS 
       PROCEDURE add_user(user_username usuario.username%type,user_password usuario.user_password%type)
       IS 
       BEGIN
         INSERT INTO usuario (username, user_password) VALUES (user_username, user_password);
       END add_user;
       
       FUNCTION findUsers (u_name usuario.username%type, u_pass usuario.user_password%type)
       RETURN NUMBER
       IS 
         counter NUMBER := 0;
       BEGIN 
         SELECT COUNT(*) INTO counter
         FROM usuario
         WHERE usuario.username = u_name
         AND usuario.user_password = u_pass;
         RETURN counter;
       END;
END usuario_package;
        


/*------------------------------------------------------------------------------------------------------------*/
/*SEQUENCE FOR PERSON ID*/

CREATE SEQUENCE person_id_generator 
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 1000000000
  NOCACHE
  NOCYCLE;	
/*-----------------------------------------------------------------------------------------------------------*/
/*PACKAGE FOR PERSON*/
/* This package is used to make queries through PHP whenever, data must be 
retrieved altered or inserted into PERSON */

CREATE OR REPLACE PACKAGE person_package AS
       PROCEDURE add_person
         (p_name person.person_name%type,
         p_first_ln person.first_last_name%type,
         p_second_ln person.second_last_name%type,
         p_username person.username%type);
END person_package;

CREATE OR REPLACE PACKAGE BODY person_package AS 
       PROCEDURE add_person
         (p_name person.person_name%type,
         p_first_ln person.first_last_name%type,
         p_second_ln person.second_last_name%type,
         p_username person.username%type)
        IS 
        BEGIN 
          INSERT INTO person(person_id, person_name,first_last_name,second_last_name,username)
          VALUES (person_id_generator.nextval,p_name, p_first_ln, p_second_ln, p_username);
        END add_person;
END person_package; 

/*----------------------------------------------------------------------------------------*/
/*PACKAGE FOR PHONE */
CREATE OR REPLACE PACKAGE phone_package AS 
       PROCEDURE add_phone
         (p_number phone.phone_number%type,
          p_username person.username%type);
END phone_package;

CREATE OR REPLACE PACKAGE BODY phone_package AS 
       PROCEDURE add_phone
         (p_number phone.phone_number%type, 
          p_username person.username%type)
         IS 
         BEGIN 
           INSERT INTO phone(person_id, phone_number)
           VALUES ((SELECT person.person_id
                   FROM PERSON 
                   WHERE p_username = person.username), 
                   p_number);
         END add_phone;
END phone_package;

/*------------------------------------------------------------------------*/
/*PACKAGE FOR EMAIL*/
CREATE OR REPLACE PACKAGE email_package AS 
       PROCEDURE add_email
         (p_email email.email%type, 
          p_username person.username%type);
END email_package;

CREATE OR REPLACE PACKAGE BODY email_package AS 
       PROCEDURE add_email
         (p_email email.email%type,
         p_username person.username%type)
         IS 
         BEGIN 
           INSERT INTO email(person_id, email)
           VALUES ((SELECT person.person_id
                   FROM PERSON 
                   WHERE p_username = person.username),
                   p_email);
         END add_email;
END email_package;

  
