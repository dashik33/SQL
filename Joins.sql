# where clause 
select firstname, lastname, salary from employee, person where employee.empid=person.empId;
select p.firstname, p.lastname, e.department from employee as e, person as p where e.empid=p.empid;

# inner join, the same as 'where clause'. bringing only the matching data
select p.firstname, p.lastname, e.department from employee as e join person as p on e.empid=p.empid;
select p.firstname, p.lastname, e.department from employee as e inner join person as p on e.empid=p.empid;

# left join, bringing all data from table that is on left (before left join phrase)
select p.firstname, p.lastname, e.department from employee as e left join person as p on e.empid=p.empid;

# right join, bringing all data from table that is on right (after right join phrase)
select p.firstname, p.lastname, e.department from employee as e right join person as p on e.empid=p.empid;

# self joins
select * from person as p, person as m;
select p.firstname, m.firstname from person as p, person as m where p.managerId=m.id;

#union
select firstname, lastname, age from person
union all # doesn't remove the duplicates, union - removes
select firstname, lastname, age from person2;