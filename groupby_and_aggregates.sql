use mydb;

alter table transactions3
add oder_date date;

alter table transactions3
rename column oder_date to order_date;

update transactions3
set oder_date = current_date()
where t_id = 1004;

select * from transactions3;

select sum(amount), order_date
from transactions3
group by order_date;

select max(amount), order_date
from transactions3
group by order_date;

select min(amount), order_date
from transactions3
group by order_date;

select avg(amount), order_date
from transactions3
group by order_date;

select count(amount), order_date
from transactions3
group by order_date;

