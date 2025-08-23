use mydb;

create table customers(
	customer_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50)
);

insert into customers (first_name, last_name)
values ("Alay", "Patel"),
		("Dhruvansh", "Patel"),
		("Aayushi", "Patel");

insert into customers (first_name, last_name)
values ("Riya", "Hirnai");


create table transactions3(
	t_id int primary key auto_increment,
	amount decimal(5,2),
    customer_id int,
    foreign key(customer_id) references customers(customer_id)
);

alter table transactions3
auto_increment = 1000;

insert into transactions3(amount, customer_id)
values (4.99, 3),
		(2.99, 1),
		(10.49, 2),
		(3.99, 4);

delete from customers
where customer_id = 3;

insert into transactions3(amount, customer_id)
values (1.99, Null);

insert into customers (first_name, last_name)
values ("Krutali", "Thakkar");


select * from transactions3;

select * from customers;

select *
from transactions3 inner join customers
on transactions3.customer_id = customers.customer_id;


select t_id, amount, first_name, last_name
from transactions3 inner join customers
on transactions3.customer_id = customers.customer_id;

select *
from transactions3 left join customers
on transactions3.customer_id = customers.customer_id;

select *
from transactions3 right join customers
on transactions3.customer_id = customers.customer_id;
