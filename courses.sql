--------------------------------------------------------
-- Archivo creado  - viernes-octubre-13-2017   
--------------------------------------------------------
DROP TABLE "COURSES" cascade constraints;
--------------------------------------------------------
--  DDL for Table COURSES
--------------------------------------------------------

  CREATE TABLE "COURSES" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(255), 
	"CODE" VARCHAR2(255), 
	"DATE_START" DATE, 
	"DATE_END" DATE
   ) ;
REM INSERTING into COURSES
SET DEFINE OFF;
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('1','Business and Computing','2AC29411-F8D1-E990-FBA9-60C80437748B',to_date('06/08/16','DD/MM/RR'),to_date('10/12/16','DD/MM/RR'));
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('2','Computer Science','53539BA7-FD0E-AE1E-4B66-92DB6518F46C',to_date('01/08/16','DD/MM/RR'),to_date('09/12/16','DD/MM/RR'));
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('3','Chemistry','1ACE2F72-CDB7-DB26-B9E2-909E85671B95',to_date('07/08/16','DD/MM/RR'),to_date('07/12/16','DD/MM/RR'));
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('4','History','758EECA4-6530-A6BD-2E78-B5F457A618F8',to_date('06/08/16','DD/MM/RR'),to_date('07/12/16','DD/MM/RR'));
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('5','Zoology','EAB012BA-FE15-285F-1EAB-F09C4F6B613A',to_date('06/08/16','DD/MM/RR'),to_date('09/12/16','DD/MM/RR'));
--------------------------------------------------------
--  DDL for Index PK_COURSES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_COURSES" ON "COURSES" ("ID") 
  ;
--------------------------------------------------------
--  Constraints for Table COURSES
--------------------------------------------------------

  ALTER TABLE "COURSES" ADD CONSTRAINT "PK_COURSES" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "COURSES" MODIFY ("DATE_END" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("DATE_START" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("ID" NOT NULL ENABLE);
