--------------------------------------------------------
-- Archivo creado  - viernes-octubre-13-2017   
--------------------------------------------------------
DROP TABLE "ANSWERS" cascade constraints;
--------------------------------------------------------
--  DDL for Table ANSWERS
--------------------------------------------------------

  CREATE TABLE "ANSWERS" 
   (	"ID" NUMBER(*,0), 
	"NUMBER_OF_QUESTION" VARCHAR2(255), 
	"ANSWER" VARCHAR2(255)
   ) ;
REM INSERTING into ANSWERS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_ANSWERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ANSWERS" ON "ANSWERS" ("ID") 
  ;
--------------------------------------------------------
--  Constraints for Table ANSWERS
--------------------------------------------------------

  ALTER TABLE "ANSWERS" ADD CONSTRAINT "CK_ANSWERS_NUMBER_OF_QUESTION" CHECK (number_of_question in ('QUESTION 1', 'QUESTION 2', 'QUESTION 3', 'QUESTION 4', 'QUESTION 5')) ENABLE;
  ALTER TABLE "ANSWERS" ADD CONSTRAINT "PK_ANSWERS" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ANSWERS" MODIFY ("ANSWER" NOT NULL ENABLE);
  ALTER TABLE "ANSWERS" MODIFY ("NUMBER_OF_QUESTION" NOT NULL ENABLE);
  ALTER TABLE "ANSWERS" MODIFY ("ID" NOT NULL ENABLE);
