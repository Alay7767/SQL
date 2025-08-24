use mydb;

select count(amount)
from transactions;

select count(amount)
from transactions3;

select count(amount) as "Todays Transactions"
from transactions3;

select max(amount) as "Maximum"
from transactions3;

select min(amount) as "Minimum"
from transactions3;

select avg(amount) as "Average"
from transactions3;

select sum(amount) as "Total Sell"
from transactions3;

select concat(first_name," ", last_name) as full_name
from employees; 

alter table employees
add column jobs varchar(25) after hourly_pay

SET SQL_SAFE_UPDATES = 0;

UPDATE employees 
SET jobs = 'Cook' 
WHERE employee_id = 7;

SELECT * FROM employees;
