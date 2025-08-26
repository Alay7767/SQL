use mydb;

select * from customers;

create index last_name_idx
on customers(last_name);

create index last_first_name_idx
on customers(last_name, first_name);

show indexes from customers;

select avg(hourly_pay) from employees;

select hourly_pay from employees;

select * from employees;

select first_name, last_name, hourly_pay, 
(select avg(hourly_pay) from employees) 
as Average_Pay from employees;

select first_name, last_name, hourly_pay, job
from employees
where hourly_pay > (select avg(hourly_pay) from employees);


select first_name, last_name
from customers
where customer_id in
(select distinct customer_id
from transactions3
where customer_id is not null);
