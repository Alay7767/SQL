use mydb;

insert into products
values (7, "Spoons", 0.00),
	(8, "Napkins", 0.00),
    (9, "forks",0.00),
    (10, "Straws",0.00);
    
delete from products
where product_id > 6;

alter table products
modify price decimal(4,2) default 0.00;

insert into products (product_id, product_name)
values	(7, "Spoons"),
	(8, "Napkins"),
    (9, "forks"),
    (10, "Straws");

select * from products;


create table transactions(
	t_id int,
    amount decimal(5,2),
    t_datetime datetime default now()
);

insert into transactions(t_id, amount)
values (1, 109.99),
		(2, 54.99),
        (3, 199.99);

select * from transactions;