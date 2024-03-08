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

