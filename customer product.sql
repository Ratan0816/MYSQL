create table customer(
customer_id int not null check(customer_id>0)primary key,
customer_name varchar(20) not null,
customer_password int check (length(customer_password) between 6 and 10) not null);

create table product4(
product4_id int not null primary key,
product4_name varchar(20) unique not null,
product4_qty int check (product4_qty>0),
customer_id int,
constraint fk_3 foreign key(customer_id) references customer(customer_id));

show tables;

desc customer;
desc product4;

insert into customer values(1,"ratan",123456789);

insert into customer values(3,"y",12345);  Error Code: 1062. Duplicate entry '3' for key 'customer.PRIMARY'
insert into customer values(3,"y",12345);  Error Code: 3819. Check constraint 'customer_chk_2' is violated.

insert into customer values(4,"gautam",1234567890);
insert into customer values(5,"anuj",1234567898);
insert into customer values(6,"rohan",123456987);
insert into customer values(7,"sheetal",123459876);
select*from customer;

insert into product4 values(10,"sugar",4,1);
insert into product4 values(11,"milk",4,2);
insert into product4 values(12,"rice",6,1);
insert into product4 values(13,"food",6,1);
insert into product4 values(14,"fish",7,1);
insert into product4 values(14,"f",7,1);

select*from product4;

insert into product4 values(12,"rice",6,3);  -- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`productdb1`.`product4`, CONSTRAINT `fk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`))
insert into product4 values(14,"f",7,1); -- Error Code: 1062. Duplicate entry '14' for key 'product4.PRIMARY'