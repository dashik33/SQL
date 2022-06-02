use sql5496206;
create table person(id int(10) primary key, firtsname varchar(40), lastname varchar(40), age int(3), city varchar(50), dob datetime, salary decimal(20));

select * from person;

alter table person change firtsname firstname varchar(40); #renaming the column
insert into person 
values(1,'Carl','Ivanov',20,'Boston','2002-12-31',100000);
insert into person 
values(2,'Petr','Petrovich',40,'Paris','1982-12-01',120000);
insert into person 
values(3,'Egor','Gavrilov',35,'Belgrad','1987-04-05',140000);

update person set firtsname='Ivan' where id=1;

select day('2000-04-30') from person;

select datediff('2000-04-16', '2000-02-18') from person;
select current_date() from person;

select round(avg(age),2) from person; # rounds the age by 2 numbers after comma

select count(*) from person;
select * from person where length(city)>6;

select age, count(*) from person group by age;

select salary, count(*) from person group by salary;
select salary, count(*) from person group by salary having count(*)>1;

select * from person where age<(select avg(age) from person);

select * from person where city in(select city from person group by city having count(*)>1);

alter table person drop salary;

create table salaryTable(id int(10) primary key, salary decimal(10));
select * from salaryTable;
insert into salaryTable values (1, 120000);
insert into salaryTable values (2, 130000);
insert into salaryTable values (3, 140000);
insert into salaryTable values (4, 120000);
insert into salaryTable values (5, 100000);

create table cityTable(id int(10) primary key, city varchar(20));
select * from cityTable;
insert into cityTable values (1, 'Boston');
insert into cityTable values (2, 'Clevland');
insert into cityTable values (3, 'Sydney');
insert into cityTable values (4, 'Amsterdam');
insert into cityTable values (5, 'Casablanka');

select * from person;

alter table person add cityId int (10);
alter table person add salaryId int(10);
select * from person;

update person set cityId=1 where id in(1, 2);
update person set cityId=2 where id=3;

update person set salaryId=1 where id=3;
update person set salaryId=2 where id in(1,2);
SET SQL_SAFE_UPDATES = 0;

select p.firtsname, p.lastname, p.age, c.city, s.salary from person p, cityTable c, salaryTable s where p.cityid=c.id and s.id=p.salaryId;

select p.firtsname, p.lastname, p.age, c.city from person p left join cityTable c on p.cityid=c.id; # all the results from person even if there is no matching

delete from person where id=1; # deletes the row
truncate person; # deletes the table data
drop table person; # deletes all the table structure