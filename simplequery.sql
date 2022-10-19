SELECT nameFROM client_master;
SELECT *FROM client_master;
SELECT name,city,state FROM client_master;
SELECT * FROM product_master;
SELECT * FROM client_master
where city = 'bombay';
update client_master
set city = 'bangalore'
where clientno = 'C00005';
UPDATE client_master
set baldue = 1000
WHERE clientno = 'C00001';

3.Exercise on retrieving records from a table
select name from client_master;
select * from client_master;
select name,city,state from client_master;
select description from product_master;
select * from client_master where city like 'bombay';
select * from salesman_master where salamt like 3000;
4.Exercise on updating records in a table
update
    client_master
set
    city = 'bangalore'
where
    Clientno = 'c00005';
update
    client_master
set
    baldue = 1000
where
    Clientno = 'c00001';
select * from client_master;
create table mybag
(
    color varchar(40),
    size numeric,
    cap  numeric,
    constraint pk_mybag primary key(color)
);
drop table mybag;
insert into mybag values('Red',3,50);
insert into mybag values('Green',4,2);
create table gautam
(
    gid numeric primary key,
    gname varchar(40)
);
insert into gautam values(1,'Gautam');
insert into gautam values(2,'Dishant');
foreign key concept
create table emp
(
    eid numeric,
    ename varchar(30),
    constraint pk_emp primary key(eid)
);
insert into emp values(1,'gautam');
insert into emp values(2,'nilam');
sales_order   --
3.Exercise on retrieving records from a table
select name from client_master;
select * from client_master;
select name,city,state from client_master;
select description from product_master;
select * from client_master where city like 'bombay';
select * from salesman_master where salamt like 3000;
4.Exercise on updating records in a table
update
    client_master
set
    city = 'bangalore'
where
    Clientno = 'c00005';
update
    client_master
set
    baldue = 1000
where
    Clientno = 'c00001';
select * from client_master;
create table mybag
(
    color varchar(40),
    size numeric,
    cap  numeric,
    constraint pk_mybag primary key(color)
);
drop table mybag;
insert into mybag values('Red',3,50);
insert into mybag values('Green',4,2);
create table gautam
(
    gid numeric primary key,
    gname varchar(40)
);
insert into gautam values(1,'Gautam');
insert into gautam values(2,'Dishant');
foreign key concept
create table emp
(
    eid numeric,
    ename varchar(30),
    constraint pk_emp primary key(eid)
);
insert into emp values(1,'gautam');
insert into emp values(2,'nilam');
sales_order   --