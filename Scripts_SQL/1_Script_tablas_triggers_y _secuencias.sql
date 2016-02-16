/*
Created		18/05/2015
Modified		22/05/2015
Project		PROYECTO FINAL MÓDULO BD
Model		GESTIÓN DE RESERVAS
Company		
Author		jm_b
Version		1.0.0
Database		Oracle 10g 
*/


-- Create Tables section


Create table "ROLES_USUARIO" (
	"ID_ROL" Number NOT NULL ,
	"ROL" Varchar2 (30) NOT NULL  Constraint "ROLES_USUARIO_UK" UNIQUE ,
primary key ("ID_ROL") 
) 
/

Create table "USUARIOS" (
	"USUARIO" Varchar2 (6) NOT NULL ,
	"ID_EMPLEADO" Number NOT NULL ,
	"ID_ROL" Number NOT NULL ,
	"PASSWORD" Varchar2 (20) NOT NULL ,
primary key ("USUARIO") 
) 
/

Create table "EMPLEADOS" (
	"ID_EMPLEADO" Number NOT NULL ,
	"ID_DEPARTAMENTO" Number NOT NULL ,
	"APELLIDO1" Varchar2 (30) NOT NULL ,
	"APELLIDO2" Varchar2 (30),
	"NOMBRE" Varchar2 (30) NOT NULL ,
	"FECHA_ALTA" Date NOT NULL ,
	"FECHA_BAJA" Date,
	"TELEFONO" Varchar2 (9),
primary key ("ID_EMPLEADO") 
) 
/

Create table "DEPARTAMENTOS" (
	"ID_DEPARTAMENTO" Number NOT NULL ,
	"ID_JEFE" Number,
	"DEPARTAMENTO" Varchar2 (20) NOT NULL  UNIQUE ,
primary key ("ID_DEPARTAMENTO") 
) 
/

Create table "RECURSOS" (
	"ID_RECURSO" Number NOT NULL ,
	"RECURSO" Varchar2 (30) NOT NULL ,
	"DESCRIPCION" Varchar2 (255),
primary key ("ID_RECURSO") 
) 
/

Create table "RESERVAS" (
	"ID_RESERVA" Number NOT NULL ,
	"ID_RECURSO" Number NOT NULL ,
	"USUARIO" Varchar2 (6) NOT NULL ,
	"FECHA_INI" Date NOT NULL ,
	"FECHA_FIN" Date NOT NULL ,
primary key ("ID_RESERVA") 
) 
/


-- Create Alternate keys section

Alter table "ROLES_USUARIO" add Constraint "Clave_alternativa_roles" unique ("ROL") 
/
Alter table "USUARIOS" add Constraint "Clave_alternativa_usuarios" unique ("ID_EMPLEADO","ID_ROL") 
/
Alter table "DEPARTAMENTOS" add Constraint "Clave_alternativa_departamento" unique ("DEPARTAMENTO") 
/
Alter table "RECURSOS" add Constraint "Clave_alternativa_recursos" unique ("RECURSO") 
/

-- Create Indexes section


-- Create Foreign keys section

Alter table "USUARIOS" add  foreign key ("ID_ROL") references "ROLES_USUARIO" ("ID_ROL") 
/

Alter table "RESERVAS" add  foreign key ("USUARIO") references "USUARIOS" ("USUARIO") 
/

Alter table "USUARIOS" add  foreign key ("ID_EMPLEADO") references "EMPLEADOS" ("ID_EMPLEADO") 
/

Alter table "DEPARTAMENTOS" add  foreign key ("ID_JEFE") references "EMPLEADOS" ("ID_EMPLEADO") 
/

Alter table "EMPLEADOS" add  foreign key ("ID_DEPARTAMENTO") references "DEPARTAMENTOS" ("ID_DEPARTAMENTO") 
/

Alter table "RESERVAS" add  foreign key ("ID_RECURSO") references "RECURSOS" ("ID_RECURSO") 
/


-- Create Sequences section

CREATE SEQUENCE   "EMPLEADOS_SEQ"  
        MINVALUE 1 
        MAXVALUE 999999999999999999999999999 
        INCREMENT BY 1 
        START WITH 1 
        NOCACHE  
        NOORDER  
        NOCYCLE
/

CREATE SEQUENCE   "ROLES_USUARIO_SEQ"  
        MINVALUE 1 
        MAXVALUE 999999999999999999999999999 
        INCREMENT BY 1 
        START WITH 1 
        NOCACHE  
        NOORDER  
        NOCYCLE
/

CREATE SEQUENCE   "DEPARTAMENTOS_SEQ"  
        MINVALUE 1 
        MAXVALUE 999999999999999999999999999 
        INCREMENT BY 1 
        START WITH 1 
        NOCACHE  
        NOORDER  
        NOCYCLE
/

CREATE SEQUENCE   "RESERVAS_SEQ"  
        MINVALUE 1 
        MAXVALUE 999999999999999999999999999 
        INCREMENT BY 1 
        START WITH 1 
        NOCACHE  
        NOORDER  
        NOCYCLE
/

CREATE SEQUENCE   "RECURSOS_SEQ"  
        MINVALUE 1 
        MAXVALUE 999999999999999999999999999 
        INCREMENT BY 1 
        START WITH 1 
        NOCACHE  
        NOORDER  
        NOCYCLE
/


/* Trigger for sequence ROLES_USUARIO_SEQ for table ROLES_USUARIO attribute ID_ROL */
Create or replace trigger "t_ROLES_USUARIO_SEQ" before insert
on "ROLES_USUARIO" for each row
begin
	SELECT "ROLES_USUARIO_SEQ".nextval INTO :new."ID_ROL" FROM dual;
end;
/
 
/* Trigger for sequence DEPARTAMENTOS_SEQ for table DEPARTAMENTOS attribute ID_DEPARTAMENTO */
Create or replace trigger "t_DEPARTAMENTOS_SEQ" before insert
on "DEPARTAMENTOS" for each row
begin
	SELECT "DEPARTAMENTOS_SEQ".nextval INTO :new."ID_DEPARTAMENTO" FROM dual;
end;
/
 
/* Trigger for sequence RESERVAS_SEQ for table RESERVAS attribute ID_RESERVA */
Create or replace trigger "t_RESERVAS_SEQ" before insert
on "RESERVAS" for each row
begin
	SELECT "RESERVAS_SEQ".nextval INTO :new."ID_RESERVA" FROM dual;
end;
/
 
/* Trigger for sequence EMPLEADOS_SEQ for table EMPLEADOS attribute ID_EMPLEADO */
Create or replace trigger "t_EMPLEADOS_SEQ" before insert
on "EMPLEADOS" for each row
begin
	SELECT "EMPLEADOS_SEQ".nextval INTO :new."ID_EMPLEADO" FROM dual;
end;
/
 
/* Trigger for sequence RECURSOS_SEQ for table RECURSOS attribute ID_RECURSO */
Create or replace trigger "t_RECURSOS_SEQ" before insert
on "RECURSOS" for each row
begin
	SELECT "RECURSOS_SEQ".nextval INTO :new."ID_RECURSO" FROM dual;
end;
/

-- Create Triggers from referential integrity section


-- Create Table comments section


-- Create Attribute comments section

Comment on column "ROLES_USUARIO"."ROL" is 'Nombre descriptivo que recibe el ROL'
/
Comment on column "EMPLEADOS"."FECHA_ALTA" is 'Fecha de alta del empleado en la empresa'
/
Comment on column "EMPLEADOS"."FECHA_BAJA" is 'Fecha de baja del empleado en la empresa'
/
Comment on column "DEPARTAMENTOS"."DEPARTAMENTO" is 'Nombre descriptivo del departamento'
/


