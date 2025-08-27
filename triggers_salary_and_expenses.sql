use mydb;

alter table employees
add column salary decimal(10,2) after hourly_pay;


SET SQL_SAFE_UPDATES = 0;

update employees
set salary = hourly_pay * 2080;

CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees 
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

update employees
set hourly_pay = 19.50
where employee_id = 2;

update employees
set hourly_pay = hourly_pay + 1.50;

delete from employees
where employee_id = 4;

CREATE TRIGGER before_hourly_pay_insert
BEFORE insert ON employees 
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

insert into employees
values ("4", "Sheldon", "Plankton", 15.75, null, "Engineer", current_date(), 2);

select * from employees;


create table expense(
	expense_id int primary key,
    expense_name varchar(50),
    expense_total decimal(10,2)
);

insert into expense
values (1, "Salary", 0),
	(2, "Supplies", 0),
    (3, "Taxes", 0);

update expense
set expense_total = (select sum(salary) from employees)
where expense_name = "Salary";

create trigger after_salary_delete
after delete on employees
for each row
update expense 
set expense_total = expense_total - old.salary
where expense_name = "Salary";

delete from employees
where employee_id = 4;

create trigger after_salary_insert
after insert on employees
for each row
update expense 
set expense_total = expense_total + new.salary
where expense_name = "Salary";

insert into employees
values ("4", "Ethan", "Weise", 15.25, null, "Engineer", current_date(), 2);

select * from expense;
