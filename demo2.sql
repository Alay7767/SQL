use mydb;

create table products(
	product_id int,
    product_name varchar(25) unique,
    price decimal(4,2)
);

insert into products
values(1, "Burger", 5.99),
	(2, "Fries", 2.99),
    (3, "Soda", 2.99),
    (4, "Ice Cream", 3.99),
    (5, "Cheese Sticks", 2.99);
    
alter table products
modify price decimal(4,2) not null;

insert into products
values(6, "Pasta", 7.99);

select * from products;