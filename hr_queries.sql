use hr;

select first_name, last_name, job_id, salary + 5000 from employees;
select distinct job_id from employees;

select * from employees;
select * from employees where salary > 3000;
select * from employees where salary <= 3000;
select * from employees where department_id = 30;
select * from employees where commission_pct is null;
select * from employees where first_name = 'Jennifer';

select distinct department_id from employees;
select distinct * from employees;

select * from employees where salary > 15000 and job_id = 'AD_VP';
select * from employees where salary > 15000 or job_id = 'AD_VP';
select * from employees where not first_name = 'David';
select * from employees where first_name = 'David';

select * from employees where salary between 10000 and 12000;
select * from employees where salary not between 10000 and 12000;
select * from employees where salary > 15000 or salary = 2500 or salary = 30000;
select * from employees where salary in  (1500, 2500, 30000);
select * from employees where salary not in  (1500, 2500, 30000);

select first_name from employees where first_name like 'S%';
select first_name from employees where first_name like '%r';
select first_name from employees where first_name like 'S%r';
select first_name from employees where first_name like '%m%';
select first_name from employees where first_name like '%e_';
select first_name from employees where first_name like '___';
select first_name from employees where first_name not like 'S%';
