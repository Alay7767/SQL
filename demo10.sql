use mydb;

drop table employees;

create table employees(
	employee_id int primary key,
    first_name varchar(20),
    last_name varchar(20),
    hourly_pay decimal(5,2),
    job varchar(20),
    hire_date date
);
select * from employees;

insert into employees
values 
(1, 'John', 'Doe', 22.75, 'Manager', '2021-06-18'),
(2, 'Jane', 'Smith', 18.50, 'Assistant', '2022-08-22'),
(3, 'Michael', 'Johnson', 14.90, 'Technician', '2023-11-05'),
(4, 'Emily', 'Davis', 16.30, 'Engineer', '2023-12-01'),
(5, 'David', 'Martinez', 20.40, 'Developer', '2024-02-10'),
(6, 'Sarah', 'Taylor', 19.25, 'Designer', '2024-05-15');
select * from employees;

alter table employees
add supervisor_id int; 

update employees
set supervisor_id = 2
where employee_id = 6;
select * from employees;

use mydb;
select a.first_name, a.last_name, a.job,
concat(b.first_name," ", b.last_name) as "supervisor_name"
from employees as a
left join employees as b
on a.supervisor_id = b.employee_id;