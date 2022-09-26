create table  Employees(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[Surname] nvarchar(50) default'XXX',
	[Age] int,
	[Salary] decimal,
	[Position] nvarchar,
	[IsDeleted] bit default 0,
)

insert into Employees([Name],[Surname],[Age],[Salary],[Position],[IsDeleted])
values('Cavidan','Qedirli','18','500','reseption','0')
      ('Emil','Abdullayev','20','1000','manager','0'),
      ('Ramil','Binnatov','19','1300','manager','0')
	  ('Azer','Humbatov','18','1800','reseption','0')
      ('Simara','Maharramli','21','2300','reseption','0')
      ('Cavid','Bashirov','25','5000','developer','0')

create table Countries(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	EmployeesId int foreign key references Employees(Id)

)

drop table Countries

select * from Employees

select * from Countries