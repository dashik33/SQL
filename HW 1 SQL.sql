#How can you display all the data in Dependents table?
select * from hs_hr_emp_dependents;
#How can you display employee last name from Employees table?
select emp_lastname from hs_hr_employees;
#How can you display all job titles from from Job Title table?
select job_title from ohrm_job_title;
#How can you display employee id, first name, last name from Employees?
select employee_id, emp_firstname, emp_lastname from hs_hr_employees;
#How can you display all information from Language Table?
select * from hs_hr_emp_language;
#How can you display first name and last name of employee id 8335?
select emp_firstname, emp_lastname from hs_hr_employees where employee_id=8335;
#How can you display unique relationship of employees from emergency contact table?
select distinct eec_relationship from hs_hr_emp_emergency_contacts;
#How to display ex employer and ex job title for employee 9451?
select eexp_employer, eexp_jobtit from hs_hr_emp_work_experience where emp_number=9451;
#How to display all the information of employee who was born after January 1 of 1980?
select * from hs_hr_employees where emp_birthday is not null;
select * from hs_hr_employees where emp_birthday>'1980-01-01';
#How to display information about employees who do not have assign job titles?
select * from hs_hr_employees where job_title_code is null or job_title_code='0' or job_title_code='';
#How to find employees first name, last name that do not have home phone number and display first names in alphabetical order?
select emp_firstname, emp_lastname from hs_hr_employees where emp_hm_telephone is null or emp_hm_telephone='0'or emp_hm_telephone='' order by emp_firstname;
#How to display all employees whose DOB has been entered sorted by last name from Z-A?
select * from hs_hr_employees where emp_birthday is not null or emp_birthday !='0' or emp_birthday!='' order by emp_lastname desc;

#Display all employees whose last name ends with ‘a’.
select * from hs_hr_employees where emp_lastname like '%a';
#Display all HRMS offices except those located in US, Canada and Brazil.
select * from ohrm_location where country_code not in ('US', 'Ca', 'Br');
#Verify all employees who were born from January 1st of 1980 until December 31st of 2000.
select * from hs_hr_employees where emp_birthday between '1980-01-01' and '2000-12-31';
#Display all nationalities that start with ‘C’
select * from ohrm_nationality where name like 'c%';
#Display all employees’ whose birthday is in August and sort employee’s last name from A-Z
select * from hs_hr_employees where emp_birthday like '_____08___' order by emp_lastname;
#Verify all the employees who are managers
select * from hs_hr_employees where job_title_code in(select id from ohrm_job_title j where j.job_title like '%manager%');
#How to display first name, last name, dob of employees who is a Freelancer or developer.
select emp_firstname,emp_lastname, emp_birthday from hs_hr_employees where job_title_code in(select id from ohrm_job_title j where j.job_title in('Freelancer','developer'));