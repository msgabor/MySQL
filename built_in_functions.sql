use hr; 

/*string functions*/

select upper (first_name) from employees;
select upper ('Gabor');
select lower (first_name) from employees;
select length ('Gabibácsi');
select length (first_name) from employees;
select * from employees where length(first_name) = 4;
select trim('	welcome	');
select trim('z' from 'zzzOraclezzz');
select instr('welcome', 'e' );
select substr('Oracle', 2,3); /*RAC*/
select substring(first_name,1,3) from employees;
select concat('MS',' ','Gabor');
select concat(first_name,' ', last_name) Full_Name from employees;

/*numerical functions*/

select greatest('100','200','500');
select least('200','400','800');
select truncate(50.1234, 3);
select truncate(50.1234, 1);
select truncate(50123.4, -1);
select truncate(501234.567, -5);
select abs(503);
select sqrt(10);
select mod(50, 3);
select count(*) from employees;
select avg(salary) from employees;
select min(salary) from employees;
select max(salary) from employees;
select sum(salary) from employees;

