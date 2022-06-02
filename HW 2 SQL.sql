#Display last name in uppercase, first name in lowercase 
select lower(emp_firstname), upper(emp_lastname) from hs_hr_employees; 
#Verify how many employees don’t have any title assigned
select count(*) from hs_hr_employees e where e.job_title_code is null;
# Verify how many employees are married
select count(*) from hs_hr_employees where emp_marital_status='married';
#Display youngest employee in the company
select * from hs_hr_employees where emp_birthday=(select max(emp_birthday) from hs_hr_employees);
#Verify how many Developers we have
select count(*) from hs_hr_employees where job_title_code in(select id from ohrm_job_title j where j.job_title like '%developer%');
#How many employees first name starts with A?
select count(*) from hs_hr_employees where emp_firstname like 'a%';
#Verify how many Database administrators, Application Developers, Production Manager
select count(*) from hs_hr_employees where job_title_code in(select id from ohrm_job_title j where j.job_title in('Database Administrator', 'Application Developer', 'Production Manager'));
#List all employees who are Cloud Architects
select * from hs_hr_employees where job_title_code in(select id from ohrm_job_title j where j.job_title='Cloud architect');
#How to retrieve information of  the employee who earns the lowest  salary?
select * from hs_hr_employees e, hs_hr_emp_basicsalary bs where e.emp_number=bs.emp_number order by bs.ebsal_basic_salary limit 1;
#List all employees who are Self Employed/freelancers
select * from hs_hr_employees e, ohrm_job_title j where j.id=e.job_title_code and j.job_title in('Freelancer', 'Self-employee'); 
#Display emergency contact name and phone number of Vlad Tepes
select ec.eec_name, ec.eec_mobile_no from hs_hr_emp_emergency_contacts ec, hs_hr_employees e where e.emp_number=ec.emp_number and e.emp_lastname='Tepes';
#How can you display the third highest salary?
select distinct ebsal_basic_salary from hs_hr_emp_basicsalary order by ebsal_basic_salary desc limit 2,1;
#Display employees number, first name and lastname and their employment status name. Sort results based on the last name
select e.emp_mobile, e.emp_firstname, e.emp_lastname, es.name from hs_hr_employees e join ohrm_employment_status es on es.id=e.emp_status order by e.emp_lastname desc;
#Display employees number, first name and lastname and job title only for Developers and Application Developers
select e.emp_mobile, e.emp_firstname, e.emp_lastname, j.job_title from hs_hr_employees e join ohrm_job_title j on j.id=e.job_title_code where j.job_title in('Developer', 'Application Developer');
#Display employees number, first name and nationality only for employees whose nationality starts with A
select e.emp_mobile, e.emp_firstname, n.name from hs_hr_employees e join ohrm_nationality n on n.id=e.nation_code where n.name like 'a%';