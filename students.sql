--------------------------------------------------------
-- Archivo creado  - viernes-octubre-13-2017   
--------------------------------------------------------
DROP TABLE "STUDENTS" cascade constraints;
--------------------------------------------------------
--  DDL for Table STUDENTS
--------------------------------------------------------

  CREATE TABLE "STUDENTS" 
   (	"ID" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(255), 
	"LAST_NAME" VARCHAR2(255), 
	"DATE_OF_BIRTH" DATE, 
	"CITY" VARCHAR2(255), 
	"ADDRESS" VARCHAR2(255)
   ) ;
REM INSERTING into STUDENTS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_STUDENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STUDENTS" ON "STUDENTS" ("ID") 
  ;
--------------------------------------------------------
--  Constraints for Table STUDENTS
--------------------------------------------------------

  ALTER TABLE "STUDENTS" ADD CONSTRAINT "PK_STUDENTS" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "STUDENTS" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("DATE_OF_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("ID" NOT NULL ENABLE);
