drop table if exists Works_for, Team, Job, Department, Supervises, [Admin], Supervisor, SE, [User] 
--create database SESSystemTest

--Department table
CREATE TABLE Department(
department_name VARCHAR(50),
CONSTRAINT PK_Department PRIMARY KEY (department_name))

--Team table
CREATE TABLE Team(
team_name VARCHAR(50),
department_name VARCHAR(50),
CONSTRAINT PK_Team PRIMARY KEY (team_name, department_name),
CONSTRAINT FK_Team_Department FOREIGN KEY (department_name)
	REFERENCES Department(department_name))


--Job table
CREATE TABLE Job(
job_title VARCHAR(50),
department_name VARCHAR(50),
CONSTRAINT PK_Job PRIMARY KEY (job_title, department_name),
CONSTRAINT FK_Job_Department FOREIGN KEY (department_name)
	REFERENCES Department(department_name))

--User table
CREATE TABLE [User]
(
employee_id CHAR(8),
first_name VARCHAR(25),
last_name VARCHAR(30),
username VARCHAR(10),
email VARCHAR(20),
CONSTRAINT PK_User PRIMARY KEY ([employee_id])
)
--Works_for table
CREATE TABLE Works_for(
user_employee_id CHAR(8),
job_title VARCHAR(50),
team_name VARCHAR(50),
department_name VARCHAR(50),
desired_hours int,
CONSTRAINT PK_Works_for PRIMARY KEY (user_employee_id, job_title, team_name, department_name),
CONSTRAINT FK_Works_for_User FOREIGN KEY (user_employee_id)
	REFERENCES [User](employee_id),
CONSTRAINT FK_Works_for_Team FOREIGN KEY (team_name, department_name)
	REFERENCES [Team](team_name, department_name),
CONSTRAINT FK_Works_for_Job FOREIGN KEY (job_title, department_name)
	REFERENCES [Job] (job_title, department_name))

--Admin table
CREATE TABLE [Admin]
(
user_employee_id CHAR(8),
CONSTRAINT PK_Admin PRIMARY KEY(user_employee_id),
CONSTRAINT FK_Admin_User FOREIGN KEY (user_employee_id)
       REFERENCES [USER](employee_id)
)

--Supervisor table
CREATE TABLE Supervisor
(
user_employee_id CHAR(8), 
CONSTRAINT PK_Supervisor PRIMARY KEY(user_employee_id),
CONSTRAINT FK_Supervisor_User FOREIGN KEY (user_employee_id)
       REFERENCES [USER](employee_id)
)

--SE table
CREATE TABLE SE
(
user_employee_id CHAR(8),
student_id CHAR(7),
is_internatinal BIT,  
CONSTRAINT PK_SE PRIMARY KEY(user_employee_id),
CONSTRAINT FK_SE_User FOREIGN KEY (user_employee_id)
       REFERENCES [USER](employee_id)
)

--Supervises table
CREATE TABLE Supervises
(
supervisor_employee_id CHAR(8),
se_employee_id CHAR(8),
CONSTRAINT PK_Supervises PRIMARY KEY(supervisor_employee_id, SE_employee_id),
CONSTRAINT FK_Supervises_Supervisor FOREIGN KEY (supervisor_employee_id)
        REFERENCES Supervisor(user_employee_id),
CONSTRAINT FK_Supervises_SE FOREIGN KEY (se_employee_id)
        REFERENCES SE(user_employee_id)
)


