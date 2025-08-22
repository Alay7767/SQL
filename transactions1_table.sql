use mydb;
create table transactions1(
	t_id int primary key,
    amount decimal(5,2)
);

insert into transactions1
value (1, 249.99),
		(2, 144.99);

select * from transactions1;
select t_id
from transactions1
where amount = 249.99;
