--------------------------------------------------------
-- Archivo creado  - viernes-octubre-13-2017   
--------------------------------------------------------
DROP TABLE "ATTENDANCE";
--------------------------------------------------------
--  DDL for Table ATTENDANCE
--------------------------------------------------------

  CREATE TABLE "ATTENDANCE" 
   (	"ID" NUMBER(*,0), 
	"STUDENT_ID" NUMBER(*,0), 
	"COURSE_ID" NUMBER(*,0), 
	"ATTENDANCE_DATE" DATE
   ) ;
REM INSERTING into ATTENDANCE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_ATTENDANCE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ATTENDANCE" ON "ATTENDANCE" ("ID") 
  ;
--------------------------------------------------------
--  Constraints for Table ATTENDANCE
--------------------------------------------------------

  ALTER TABLE "ATTENDANCE" ADD CONSTRAINT "PK_ATTENDANCE" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ATTENDANCE" MODIFY ("ATTENDANCE_DATE" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE" MODIFY ("COURSE_ID" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE" MODIFY ("ID" NOT NULL ENABLE);
