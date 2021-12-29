create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

insert into employees(employee_name)
values ('Hector Simmons'),
	('Howard Burke'),
	('Domingo Gordon'),
	('Michele Payne'),
	('Michelle Kennedy'),
	('Rolando Cole'),
	('Marianne Castro'),
	('Joey Foster'),
	('Shelly Holloway'),
	('Pat Andrews'),
	('Antonia King'),
	('Arnold Ross'),
	('Eugene Lloyd'),
	('Ronald Jimenez'),
	('Kelly Tran'),
	('Fannie Delgado'),
	('Floyd Jordan'),
	('Jesus Pierce'),
	('Della Davis'),
	('Kelvin Howell'),
	('Katherine Ortiz'),
	('Ellis Barrett'),
	('Tyrone Haynes'),
	('Viola Gibson'),
	('Jimmy Briggs'),
	('Jeanette Evans'),
	('Shaun Parker'),
	('Stuart Drake'),
	('Rafael Chandler'),
	('Andy Mckenzie'),
	('Fredrick Abbott'),
	('Henrietta Roberts'),
	('Ramon Goodwin'),
	('Bryan Campbell'),
	('Jerome Franklin'),
	('Amy Gonzales'),
	('Dominic Duncan'),
	('Leland Woods'),
	('Kevin Rowe'),
	('Hugo Roberson'),
	('Lora Edwards'),
	('Catherine Young'),
	('Kurt Carr'),
	('Rosemarie Sandoval'),
	('Beatrice Torres'),
	('Justin Morrison'),
	('Josefina Gardner'),
	('Salvatore Schneider'),
	('Lucas Richards'),
	('Irvin Manning'),
	('Carlos Chapman'),
	('Isabel Freeman'),
	('Francis Daniels'),
	('Andrew Morales'),
	('Julian Pearson'),
	('Eduardo Parsons'),
	('Darrell Wright'),
	('Margaret Ferguson'),
	('Orlando Walker'),
	('Virginia Patterson'),
	('Geraldine Nash'),
	('Ollie Baker'),
	('Robert Walsh'),
	('Doug Padilla'),
	('Angel Brown'),
	('Inez Holmes'),
	('Jenna Colon'),
	('Terry Todd'),
	('Roberto Gill'),
	('Sonja Guerrero');
	
create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
select * from salary;

--drop table salary;

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (1,1),
	(2,4),
	(3,5),
	(4,6),
	(5,10),
	(6,11),
	(7,4),
	(8,10),
	(9,4),
	(10,8),
	(11,1),
	(12,4),
	(13,5),
	(14,6),
	(15,10),
	(16,11),
	(17,4),
	(18,10),
	(19,4),
	(20,8),
	(21,1),
	(22,4),
	(23,5),
	(24,6),
	(25,10),
	(26,11),
	(27,4),
	(28,10),
	(29,4),
	(30,8),
	(140,1),
	(223,4),
	(333,5),
	(444,6),
	(544,10),
	(622,11),
	(734,4),
	(82,10),
	(95,4),
	(102,8);

select * from employee_salary;

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int unique not null
);

select * from roles;

--Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id, role_id)
values (1,1),
	(2,4),
	(3,5),
	(4,6),
	(5,10),
	(6,11),
	(7,15),
	(8,10),
	(9,4),
	(10,8),
	(11,14),
	(12,4),
	(13,5),
	(14,6),
	(15,10),
	(16,11),
	(17,4),
	(18,13),
	(19,4),
	(20,8),
	(21,12),
	(22,4),
	(23,5),
	(24,6),
	(25,10),
	(26,20),
	(27,4),
	(28,10),
	(29,4),
	(30,19),
	(31,1),
	(32,4),
	(33,18),
	(34,6),
	(35,10),
	(36,11),
	(37,4),
	(38,10),
	(39,17),
	(40,8);

select * from roles_employee;

--drop table roles_employee;