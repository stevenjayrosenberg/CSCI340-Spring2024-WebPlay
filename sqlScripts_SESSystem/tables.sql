drop table if exists Team, Department, Supervises, [Admin], Supervisor, SE, [User]

create database SESSystemTest

--Department table
create table Department(
department_name varchar(50) not null,
constraint PK_Department primary key (department_name))

--Team table
create table Team(
team_name varchar(50) not null,
department_name varchar(50) not null,
constraint PK_Team primary key (team_name),
constraint FK_Team_Department foreign key (department_name)
references Department(department_name))

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


