use mydb;

select * from employees
where hire_date like "2022%";

select * from employees
order by last_name;

select * from employees
order by last_name desc;

select * from transactions3
order by amount, customer_id;

select * from customers
limit 2;

select * from customers
limit 2,1;

select first_name, last_name from employees
union
select first_name, last_name from customers;

alter table customers
add referral_id int;
select * from customers;

update customers
set referral_id =2
where customer_id =4;

select a.customer_id, a.first_name, a.last_name,
a.referral_id, b.first_name, b.Last_name
from customers as a
inner join customers as b
on a.referral_id = b.customer_id;

select a.customer_id, a.first_name, a.last_name, 
concat(b.first_name, " ",b.Last_name) as "referred_by"
from customers as a
inner join customers as b
on a.referral_id = b.customer_id;
