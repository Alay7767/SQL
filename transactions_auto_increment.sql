use mydb;
drop table transactions1;


create table transactions2(
	t_id int primary key auto_increment,
    amount decimal(5,2)
);


insert into transactions2 (amount)
values
(4.99),
(11.99),
(2.49);

alter table transactions2
auto_increment = 100;

insert into transactions2(amount)
values (7.99);

select * from transactions2;
