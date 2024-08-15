Create database store;
show databases;
use store ;
create table store(
pet_name varchar(10) default null,
pet_age int  not null,
description varchar (50) default null,
pet_price int  default null);
show tables;

alter table store add column pet_food varchar(30);
select*from store;
alter table store add column pet_breed varchar(30);

insert into store values('labo','7','cute',5000,'pedigree','mix breed');
insert into store values('husky','10','wild',3000,'fish','reiner');
insert into store values('bulldog','15','soft',36000,'pedigree','french');
insert into store values('shepard','12','sweet',45000,'pedigree','golden');
insert into store values('rottweiler','11','angry',20000,'pedigree','rott');

select*from store where pet_age > 5;
select*from store where pet_name ='labo';
select*from store where pet_price between 34000 and 56000;
select*from store where pet_food='pedigree';
desc store;
alter table store modify column pet_description varchar(150);
update store set  pet_price = 20000 where pet_age = 7;
delete from store where pet_price < 10000;
