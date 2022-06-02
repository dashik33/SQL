# single row functions
select upper (firstname), lower(lastname) from person;
select firstname from person where length(firstname)>4;
select substring(firstname, 1,3 ), lastname from person; # getting names with three letters
select abs(age) from person; #removing "-" from data

# multi row functions
select count(*) from person; # counting the rows
select max(age) from person;
select min(age) from person;
select sum(age) from person;
select avg(age) from person;

select city, max(age) from person group by city; #calculating max age in each city
select age, max(empid) from person group by age;
select avg(age), city from person where city='new york' group by city;
# we can use name of any row to count employees for example. as count -renaming the column, add it after column u want to rename
select count(*) as count, city from person where city is not null and city!='' and city !='0' group by city; 
# count employees in the cities only if there are more than one employee, having clause only after group by
select count(*) as count, city from person where city is not null and city!='' and city !='0' group by city having count>1;

select * from person where age>(select avg(age) from person);
# all the employees that are Developers and Freelancer
select * from hs_hr_employees where job_title_code in (select id from ohrm_job_title where job_title in('Developer', 'Freelancer'));
select * from hs_hr_employees;
select * from ohrm_job_title;
