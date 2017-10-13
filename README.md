### Practical section

#### Instructions

1. Create a new repository in github, the name should be "parcial_<<your_name>>", for example: "parcial_andres"
2. Clone this repository in your local machine.
3. Add a new or replace the remote inside the repository you have just clone 
4. Solve the practical section 
5. Push your changes to github
6. Have a nice day / weekend :)

#### Important!
- You *only* need to add a new file with extension SQL and 2 png files in the repo (below you will have the instructions)
- DO NOT CHANGE the name proposed for tables / columns / tablespaces / users / profiles, the most part of your grade will be calculated by a script, so, if you have different names, your grade will be low.

#### 1. Create Tablespace

Create a tablespace called "COURSES" with one datafile of 50Mb, the name of the datafile should be: courses1.dbf

#### 2. Create profile

Create a profile named "administrativo" with the following specifications:
  a) Idle time of 25 minutes
  b) Failed login attempts 4
  c) Onle one session per user

#### 3. Create user

Create an user named with your github's username (In my case would be amartinezg) with only 30Mb of space on tablespace, the profile should be "administrativo"

#### 4. Setting up user

your user should be able to log in and have DBA privileges

#### 5. Create 4 tables (LOG IN WITH YOUR USER!!!!!): 

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
* Foreign key in attendance table for students and courses.

#### 6. Import data
Import data from files data/courses.csv, data/students.csv and data/attendance.csv
* Be careful with the names of the headers on each CSV file and when you import the date the format of the date should be DD/MM/RR 

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

#### 8. Backup

Create a backup using RMAN, list the backups and take a screenshot of the information displayed in console. Add the screenshot to this folder.

#### 9. Export:

*Export a file named script.sql using SQLDeveloper and add the file to this folder. Be careful about what you should mark in each step. The commands you used from step 1 to 4 must be added manually to this script.

See data/Images

* Export the Class diagram from SQL developer as png file and add it to this folder.
