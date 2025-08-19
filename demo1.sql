use mydb;

create table test(
	myDate date,
    mytime time,
    myDateTime datetime
);

insert into test
values (current_date(), current_time(), now());

insert into test
values (current_date() + 1, null, null);

insert into test
values (current_date() - 1, null, null);

select * from test;