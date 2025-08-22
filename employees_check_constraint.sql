use mydb;

alter table employees
add constraint chk_HP check(hourly_pay>=10);

insert into employees
values(7, "Adam", "Drake", 10.50, null);

alter table employees
drop check chk_HP;

insert into employees
values(7, "Sam", "Nur", 9.50, null);

select * from employees;
