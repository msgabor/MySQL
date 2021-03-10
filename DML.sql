use hr;

select * from employees;
select department_id from employees group by department_id;
select department_id, sum(salary) from employees group by department_id;
select department_id, avg(salary) from employees group by department_id;
select department_id, max(salary), min(salary) from employees group by department_id;

select job_id, count(*) from employees group by job_id; -- how many people are working in the departments? 
select job_id, department_id, count(*) from employees group by job_id; -- how many people are working in the departments based on job_id and what is the dept_id?
select job_id, count(*) from employees group by job_id having count(*) > 10; -- listázza azokat, akiket job_id alapján groupoltunk és 10 főnél nagyobb az alkalmazotti létszám

select department_id, sum(salary) from employees group by department_id having sum(salary) > 20000; 
select department_id, sum(salary) from employees where department_id<>50 group by department_id;

select * from employees order by department_id desc;
select * from employees order by salary;
select * from employees order by department_id desc limit 3;

select department_id, sum(salary) 
from employees 
group by department_id 
having sum(salary) > 20000 
order by sum(salary); 

-- SET operators
union -- giving back just the dstinct list of the elements
union all -- giving back all of the elements duplicated if need from 2 tables
intersect -- giving back just the common elements from 2 tables
minus -- distinc list of unique elemetns from 2 tables