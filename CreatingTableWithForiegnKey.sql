 -- employee table emp id,name and age
 -- address table address id,address street,city,state,fk_emp_id,timestamp with adefault value of time.
 -- Constarints fk in address table for employee table
 
 create database Example_db
 use example_db;
 create table employee (
 emp_id int(4) primary key auto_increment,
 name varchar(255) not null default 'MISSING',
 age int check(age >=0) 
 );
 describe employee;
 insert into employee (`name`,`age`) values ("Lavanya",40);
 insert into employee (`name`,`age`) values ("Srini",40);
 insert into employee (`name`,`age`) values ("Gayatri",40);
 insert into employee (`name`,`age`) values ("Hemant",40);
 select * from employee 
 
 drop table address; 
 
 create table address (
 address_id int(11) primary key auto_increment ,
 address_street varchar(255) not null default 'unknown',
 city  varchar (255) not null default 'NA',
 state char(2) not null default 'NA',
 timestamp TIMESTAMP not null default NOW(6),
 fk_emp_id int(4),
 constraint some_name foreign key(fk_emp_id) references employee(emp_id)  
  );
select * from address; 
 insert  into address (`address_street`,`city`,`state`,`fk_emp_id`)
 values ('123 street','Boston','MA',1);
 