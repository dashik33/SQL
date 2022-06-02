use syntaxhrm_mysql;
select * from test; # brings all the data from test table
select firstname, lastname from person;
select firstname, lastname, age, city from person; # brings choosen colunmns from person table
select * from person;
select distinct firstname from person; # distinct means getting unique data, no duplicates
select * from person where age =23;
select * from person where gender='F';
select * from person where city='New York';
select * from person where age>=23;
select * from person where age!=23;
select * from person where age=20 or age=23;
select * from person where city is null;
select * from person where city is not null;
select * from person where city =''; # getting empty data
select * from person where city='0';
select * from hs_hr_employees where emp_firstname='kishan';
select * from person where dob='1990-02-26';
select * from person where not dob>'1990-02-26';
select * from person where age in(23, 24, 28);
select * from person where age between 20 and 28;
select * from person where empid in(100, 120, 130);
select * from person order by age; # data retrieving in ascending order
select * from person order by age desc; # data retrieving in descending order
select * from person order by empid desc, age; # empid in descending order, age in ascending
select * from person where age=23 order by empid;
select * from person where firstname like 'a%'; # name starts with A
select * from person where firstname like '%a'; # name ends with A
select * from person where firstname like '%a%'; # name contains A
select * from person where firstname like '__r_'; # 2 first letters can be anything, 3rd letter - t, last letter - any
select * from person where dob like '%02___'; # shows dob that contains February
select distinct firstname, lastname, gender from person where city is null;
select * from ohrm_job_title;
select * from hs_hr_employees where job_title_code in (29, 10, 31); # displaying employee who are freelancer/developer