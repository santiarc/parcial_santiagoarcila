/*#### 1. Create Tablespace

Create a tablespace called "COURSES" with one datafile of 50Mb, the name of the datafile should be: courses1.dbf */

CREATE TABLESPACE COURSES
    DATAFILE 'C:\Users\wolf\Desktop\BD TABLESPACE\courses1.dbf' SIZE 50M
    EXTENT MANAGEMENT LOCAL
    SEGMENT SPACE MANAGEMENT AUTO
    ONLINE;
	
/* #### 2. Create profile

Create a profile named "administrativo" with the following specifications:
  a) Idle time of 25 minutes
  b) Failed login attempts 4
  c) Onle one session per user */
  
CREATE PROFILE administrativo LIMIT
SESSIONS_PER_USER       1 
FAILED_LOGIN_ATTEMPTS   4 
IDLE_TIME               25;

/* #### 3. Create user

Create an user named with your github's username (In my case would be amartinezg) with only 30Mb of space on tablespace, the profile should be "administrativo" */

CREATE USER santiarc
IDENTIFIED BY 123456
DEFAULT TABLESPACE COURSES
QUOTA UNLIMITED ON COURSES;

/* #### 4. Setting up user

your user should be able to log in and have DBA privileges  */

GRANT "DBA" TO "SANTIARC" ;

/* #### 5. Create 4 tables (LOG IN WITH YOUR USER!!!!!): 

COURSES(id, name, code, date_start, date_end)
STUDENTS(id, first_name, last_name, date_of_birth, city, address)
ATTENDANCE(id, student_id, course_id, attendance_date)
ANSWERS(id, number_of_question, answer) 

##### Types of columns: 
int: id (all tables), attendance(student_id, course_id)
varchar2(255): courses(name, code), students(first_name, last_name, city, address), answers(number_of_question, answer)
date: courses(date_start, date_end), students(date_of_birth), attendance(attendance_date)

##### Add these constraints:
* Primary keys for all tables
* Create a sequence with the name "answer_seq" starting in 500 with steps of 10 and associate it with answers table. (Do not use identity columns)
* Name of the courses MUST only accept 'Business and Computing', 'Computer Science', 'Chemistry', 'History' and 'Zoology'
* number_of_question column in answer table MUST only accept values 'QUESTION 1', 'QUESTION 2', 'QUESTION 3', 'QUESTION 4', 'QUESTION 5' (In uppercase)
* Foreign key in attendance table for students and courses.*/

CREATE TABLE COURSES
(
id INT NOT NULL,
name varchar2(255) NOT NULL,
code varchar2(255) NOT NULL,
date_start DATE NOT NULL,
date_end DATE NOT NULL,
CONSTRAINT PK_COURSES PRIMARY KEY(id)
)
CREATE TABLE STUDENTS
(
id INT NOT NULL,
first_name varchar2(255) NOT NULL,
last_name varchar2(255) NOT NULL,
date_of_birth DATE NOT NULL,
city varchar2(255) NOT NULL,
address varchar2(255) NOT NULL,
CONSTRAINT PK_STUDENTS PRIMARY KEY(id)
)
CREATE TABLE ATTENDANCE
(
id INT NOT NULL,
student_id INT NOT NULL,
course_id INT NOT NULL,
attendance_date DATE NOT NULL,
CONSTRAINT PK_ATTENDANCE PRIMARY KEY(id),
CONSTRAINT FK_STUDENT FOREIGN KEY (student_id) REFERENCES STUDENTS(id),
CONSTRAINT FK_COURSE FOREIGN KEY (course_id) REFERENCES COURSES(id)
)
CREATE TABLE ANSWERS
(
id INT NOT NULL,
number_of_question varchar2(255) NOT NULL,
answer varchar2(255) NOT NULL,
CONSTRAINT PK_ANSWERS PRIMARY KEY(id)
)

CREATE SEQUENCE answer_seq
INCREMENT BY 10
START WITH 500
MAXVALUE 9999
NOCYCLE
NOCACHE;

ALTER TABLE COURSES
 ADD CONSTRAINT constraint CK_COURSES_NAME
 check (name in ('Business and Computing', 'Computer Science', 'Chemistry', 'History', 'Zoology'));
 
ALTER TABLE ANSWERS
 ADD CONSTRAINT CK_ANSWERS_NUMBER_OF_QUESTION
 check (number_of_question in ('QUESTION 1', 'QUESTION 2', 'QUESTION 3', 'QUESTION 4', 'QUESTION 5'));

/* #### 6. Import data
Import data from files data/courses.csv, data/students.csv and data/attendance.csv
* Be careful with the names of the headers on each CSV file and when you import the date the format of the date should be DD/MM/RR  */

/*
#### 7. Questions
Based on the data, answer the following questions and insert the answers in the "ANSWERS" table:

  1. How many students have not attendance any course at all?
  2. In which course (name) the student Keelie Mendoza is enrolled?
  3. What is the date of the last attendence registered for the course with the code '1ACE2F72-CDB7-DB26-B9E2-909E85671B95' ? (Format DD/MM/YY)
  4. What is the name of the course which ends last?
  5. What is the city of the student with attendance's id = 1005

For example:

|id | number_of_question      | value                  |
| --- | --- | --- |
|1  |QUESTION 1 | 5656                                 |
|2  |QUESTION 2 | 5666.36                              |
|3  |QUESTION 3 | 0E290CDE-FD74-1BA6-D84D-7F1E9AD5BF05 |
*/

SELECT name FROM STUDENTS
SELECT name FROM STUDENTS WHERE name ='Keelie Mendoza'
SELECT attendance_date FROM attendence WHERE code ='1ACE2F72-CDB7-DB26-B9E2-909E85671B95'
SELECT city FROM attendence WHERE id ='1005'

/*
#### 8. Backup

Create a backup using RMAN, list the backups and take a screenshot of the information displayed in console. Add the screenshot to this folder.
*/

/*
#### 9. Export:

*Export a file named script.sql using SQLDeveloper and add the file to this folder. Be careful about what you should mark in each step. The commands you used from step 1 to 4 must be added manually to this script.

See data/Images

* Export the Class diagram from SQL developer as png file and add it to this folder.
*/