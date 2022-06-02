# find employees who are older 20 yo. 7300 days=20 yo.
select * from hs_hr_employees where emp_birthday is not null and datediff(current_date(), emp_birthday) > 7300;
#employees who arer not smokers. 0=true, 1=false
select * from hs_hr_employees where emp_smoker=0;
#employees who are not born in 1990
select * from hs_hr_employees where year(emp_birthday)!=1990;
#identify data type 
select data_type from information_schema.columns where table_schema='syntaxhrm_mysql' and table_name='hs_hr_employees' and column_name='emp_smoker';
#youngest employee shown first
select * from hs_hr_employees where emp_birthday is not null order by emp_birthday desc;
#shows data types as well
describe hs_hr_employees;
#List all employees who are Self Employed/freelancers
select * from hs_hr_employees e where job_title_code in(select id from ohrm_job_title j where j.job_title in('Freelancer', 'Self-employee'));
select * from hs_hr_employees e, ohrm_job_title j where j.id=e.job_title_code and j.job_title in('Freelancer', 'Self-employee'); 

