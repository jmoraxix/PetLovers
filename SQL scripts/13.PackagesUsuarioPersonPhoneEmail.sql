/* Made by Ernesto Lang 3/31/2015 */

/* PACKAGE FOR USUARIO*/
/* This package contains a set of instructions for PHP to call 
whenever necessary to make any queries, if any other special queries are required they will 
be added to this package when it concerns USUARIO */

CREATE OR REPLACE PACKAGE usuario_package AS
       PROCEDURE add_usuario(usuario_username usuario.username%type, usuario_password usuario.user_password%type);
END usuario_package; 


CREATE OR REPLACE PACKAGE BODY usuario_package AS 
       PROCEDURE add_usuario(usuario_username usuario.username%type,usuario_password usuario.user_password%type)
       IS 
       BEGIN
         INSERT INTO usuario (username, user_password) VALUES (usuario_username, usuario_password);
       END add_usuario;
END usuario_package;
                         
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
          INSERT INTO person(person_name,first_last_name,second_last_name,username)
          VALUES (p_name, p_first_ln, p_second_ln, p_username);
        END add_person;
END person_package; 

/*----------------------------------------------------------------------------------------*/
/*PACKAGE FOR PHONE */
CREATE OR REPLACE PACKAGE phone_package AS 
       PROCEDURE add_phone
         (p_number phone.phone_number%type);
END phone_package;

CREATE OR REPLACE PACKAGE BODY phone_package AS 
       PROCEDURE add_phone
         (p_number phone.phone_number%type)
         IS 
         BEGIN 
           INSERT INTO phone(phone_number)
           VALUES (p_number);
         END add_phone;
END phone_package;

/*------------------------------------------------------------------------*/
/*PACKAGE FOR EMAIL*/
CREATE OR REPLACE PACKAGE email_package AS 
       PROCEDURE add_email
         (p_email email.email%type);
END email_package;

CREATE OR REPLACE PACKAGE BODY email_package AS 
       PROCEDURE add_email
         (p_email email.email%type)
         IS 
         BEGIN 
           INSERT INTO email(email)
           VALUES (p_email);
         END add_email;
END email_package;
  