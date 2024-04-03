create database Course
use Course
create table Teachers(
 [Id] int primary key identity(1,1),
 [Name] nvarchar(50) not null,
 [Surname] nvarchar (50),
 [Email] nvarchar(100) unique,
 [Age] int check (Age >= 25)
)

create table Students(
[Id] int primary key identity(1,1),
[FullName] nvarchar(100) not null,
[Age] int check (Age >= 17),
[Address] nvarchar (100)
)

insert into Teachers([Name],[Surname],[Email],[Age])
values('Cavid','Bashirov','cavid@gmail.com',29),
      ('Elchin','Aliyev','elchin@gmail.com',38),
	  ('Aydin','Qasimov','aydin@gmail.com',29)


insert into Students([FullName],[Age],[Address])
values('Reshad Aghayev',29,'Nefchiler'),
      ('Aykhan Aghayev',24,'Bineqedi'),
	  ('Kamran Muradov',25,'Sumqayit'),
	  ('Ilqar Shiriyev',28,'Yasamal')
	  
select * from Teachers

select * from Students

select Count(*) as 'Students count' from Students

select * from Teachers where [Age]>27

select * from Teachers where [Email] like'%c%'


update Teachers
 set[Age] = 26
 where [Id] = 3

update Teachers
set[Email]='elhin@outlook.az'
where[Id] = 2

select * from Teachers

select SUBSTRING([Email],1,charindex ('@',[Email])-1) from Teachers

select SUBSTRING([Email],CHARINDEX('@',[Email])+1,LEN([Email])-CHARINDEX('@',[Email])) from Teachers


select * from Students

truncate table Students

Alter table Students
Add SoftDeleted bit default 0;

select * from Students where [SoftDeleted] = 'true'

update Students
set[SoftDeleted] = 1
where [Id] > 2



create table Countries(
[Id] int primary key identity (1,1),
[Name] nvarchar (50)
)

create table Cities(
[Id] int primary key identity (1,1),
[Name] nvarchar (50),
[CountyId] int,
foreign key([CountyId]) references Countries(Id)
)



insert into Countries([Name])
values ('Azerbaycan'),
       ('Turkiye'),
	   ('Ingiltere')


select * from Countries

select * from Cities


insert into Cities([Name],[CountyId])
values ('Baki',1),
       ('Gence',1),
	   ('Zaqatala',1),
	   ('Istanbul',2),
       ('Bursa',2),
	   ('London',3)

select * from Cities where [CountyId] = 1


create table Books(
[Id] int primary key identity (1,1),
[Name] nvarchar (50)
)

create table Authors(
[Id] int primary key identity (1,1),
[Name] nvarchar (50),
[Email] nvarchar(100)
)

create table BookAuthors(
[Id] int primary key identity (1,1),
[BookId] int,
[AuthorId] int,
foreign key([BookId]) references Books(Id),
foreign key([AuthorId]) references Authors (Id)
)

select * from Books
select * from Authors
select * from BookAuthors

insert into Books([Name])
values ('Ali ve Nino'),
       ('Leyli ve Mecnun'),
	   ('Isgendername')

insert into Authors([Name],[Email])
values ('Author1','author1@gmail.com'),
       ('Author2','author2@gmail.com'),
	   ('Author3','author3@gmail.com')

insert into BookAuthors([BookId],[AuthorId])
values (1,1),
       (2,1),
	   (3,2),
	   (1,2)

select * from Countries

select * from Cities

