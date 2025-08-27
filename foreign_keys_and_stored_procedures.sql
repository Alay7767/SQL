use mydb;

select * from transactions3;

set foreign_key_checks = 1;

delete from customers
where customer_id = 4;
select * from customers;

insert into customers
values (4, "Riya", "Hirani", 1, "rh@gmail.com");

alter table transactions3
drop foreign key transactions3_ibfk_1;

alter table transactions3
add constraint tfk
foreign key(customer_id) references customers(customer_id)
on delete set null;

delete from customers
where customer_id = 5;
select * from transactions3;


select first_name, last_name
from transactions3 as t
inner join customers as c
on t.customer_id = c.customer_id;


delimiter $$
create procedure get_customers()
begin
	select * from customers;
end;
delimiter ;


call get_customers();


delimiter $$
create procedure find_customer(in id int)
begin
	select * from customers
    where customer_id = id;
end $$
delimiter ;

call find_customer(1);
