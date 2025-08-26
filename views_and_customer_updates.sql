use mydb;

select * from employees;


create view employees_attendance as
select first_name, last_name 
from employees;

select * from employees_attendance
order by last_name asc;

alter table customers
add email_id varchar(20);

update customers
set email_id = "kt@gmail.com"
where customer_id = 5;

select * from customers;


create view customers_email as 
select email_id
from customers;
select * from customers_email;

insert into customers
values (6, "Maitri", "Thakkar", 1, "mt@gmail.com");
