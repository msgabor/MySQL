-- Joins in SQL

create database sql_joins;
use sql_joins;

create table tab1(numid int(3));
create table tab2(numid int(3));

insert into tab1 values(10);
insert into tab1 values(11);
insert into tab1 values(12);
insert into tab1 values(14);

insert into tab2 values(11);
insert into tab2 values(12);
insert into tab2 values(13);
insert into tab2 values(15);

truncate table tab1; 
truncate table tab2; 
select * from tab1;

-- joins
-- inner join = gving back just the common elements
select * from tab1
inner join tab2
on tab1.numid = tab2.numid; 

-- left/right join - giving back the left elements + common / right elemets + common 
select * from tab1
left join tab2
on tab1.numid = tab2.numid; 
select * from tab1
right join tab2
on tab1.numid = tab2.numid; 

-- full outer joins - giving back the all elements
select * from tab1
full outer join tab2
on tab1.numid = tab2.numid; 



