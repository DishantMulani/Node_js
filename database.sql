~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
                                          product_master                                                       --
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
create table product_master(
    productno varchar(20),
    description varchar(20),
    profitpercent numeric(38),
    unitmeasured varchar(50),
    qtyonhand numeric(38),
    recorderlvl numeric(38),
    sellprice numeric(38),
    costprice numeric(38),
    constraint pk_product_master primary key(productno)
);
insert into product_master values('p00001','1.44floppies',5,'piece',100,20,525,500);
insert into product_master values('p07695','Monitors',6,'piece',10,3,12000,11200);
insert into product_master values('p07885', 'Mouse', 5, 'piece', 28, 5, 1050, 500);
insert into product_master values('p07868','1.22 floppies',5,'piece',108,20,525,500);
insert into product_master values('p03453','Keyboards',2,'piece',18,3,3150,3050);
insert into product_master values('p06734','CD Drive',2.50,'piece',10,3,5250,5100);
insert into product_master values('p07965','540 HDD',4,'piece',10,3,8400,8000);
insert into product_master values('p07975','1.44 Drive',5,'piece',10,3,1858,1800);
insert into product_master values('p0345', '1.22 Drive', 5, 'piece', 2, 3, 1050, 1000);
select * from product_master;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
                                           salesman_master                                                     --
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
 create table salesman_master(
 salesman_no varchar(50),
 salesmannane varchar(50),
 address varchar(50),
 city varchar(50),
 pincode numeric(38),
 state varchar(50),
 salamt numeric(38),
 tgttoget numeric(38),
 ytdsale numeric(38),
 remark varchar(50),
 constraint pk_salesman_master primary key(salesman_no)
 );              
 insert into salesman_master values ('s00001', 'Kiran', 'A/14 worli', 'Bombay', 400002, 'Mah', 3000, 100, 50, 'Good','keshavpark');
 insert into salesman_master values ('s00002', 'Manish', '65 nariman', 'Bombay',480001, 'Mah', 3000, 200, 100, 'Good','shantinagar');
 insert into salesman_master values ('s00003', 'Ravi', 'P-7 Bandra', 'Bombay', 400032, 'Mah', 3000, 200, 100, 'Good','merigold');
 insert into salesman_master values ('s00004', 'Ashish', 'A/5 Juhu', 'Bombay', 400044, 'Mah', 3500, 200, 150, 'Good','khodiyarnagar');
 select * from salesman_master;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
                                            client_master                                                      --
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
create table client_master(
   Clientno varchar(50) ,
   Name varchar(50),
   city varchar(50),
   pincode numeric(38),
   state varchar(50),
   baldue numeric(38),
   address1 varchar(20),
   constraint pk_client_master primary key(clientno)
);
insert into client_master values('c00001', 'Ivan', 'Bombay', 400054, 'Maharashtra', 15000,'keshavpark');
insert into client_master values('C00002', 'Vandana', 'Madras', 780001, 'Tamilnadu', 0,'lakhminagar');
insert into client_master values('C00003', 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000,'shantinagar');
insert into client_master values('C00004', 'Basu', 'Bombay', 400056, 'Maharashtra', 0,'govindpark');
insert into client_master values('C00005', 'Ravi', 'Delhi', 100001, '', 2000,'mirarev');
insert into client_master values('C00006', 'Rukmini', 'Bombay', 400050, 'Maharashtra', 0,'merigoldhigh');
select * from client_master;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
                                            sales_order                                                        --
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
CREATE TABLE sales_order
(
    orderno VARCHAR(20),
    clientno VARCHAR(20),
    orderdate date,
    delyaddr varchar(20),
    salesman_no varchar(20),
    delytype char(20),
    billyn char(20),
    delydate date,
    orderstatus varchar(20),
    constraint pk_sales_order primary key (orderno),
    constraint fk_sales_order foreign key(clientno) references client_master(clientno),
    constraint fk1_sales_order foreign key(salesman_no) references salesman_master(salesman_no)
);
INSERT into sales_order values('o19001','c00001','2004-06-12','keshavpark','s00001','F','N','2002-07-20','in process');
INSERT into sales_order values('o19002','c00002','2004-06-25','shantinagar','s00002','P','N','2002-06-27','cancelled');
INSERT into sales_order values('o46865','c00003','2004-02-18','merigold','s00003','F','Y','2002-02-20','fullfilled');
INSERT into sales_order values('o19003','c00001','2004-04-03','govindgiban','s00001','F','Y','2002-04-07','fullfilled');
INSERT into sales_order values('o46866','c00004','2004-05-20','subhasnagar','s00002','P','N','2002-05-22','cancelled');
INSERT into sales_order values('o19008','c00005','2004-05-24','vitinagar','s00004','F','N','2002-07-26','in process');
SELECT * FROM sales_order;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
                                            sales_order_details                                                --
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
CREATE TABLE sales_order_details (
    orderno VARCHAR(20),
    productno VARCHAR(20),
    qtyordered numeric,
    qtydisp numeric,
    productrate numeric,
    constraint fk_sales_order_details foreign key(orderno) references sales_order(orderno),
    constraint fk1_sales_order_details foreign key(productno) references product_master(productno)
);
insert into sales_order_details values('O19001', 'P00001', 4, 4, 525);
insert into sales_order_details values('O19001', 'P07965', 2, 1, 8400);
insert into sales_order_details values('O19001', 'P07885', 2, 1, 5250);
insert into sales_order_details values('O19002', 'P00001', 10, 0, 525);
insert into sales_order_details values('O46865', 'P07868', 3, 3, 3150);
insert into sales_order_details values('O46865', 'P07885', 3, 1, 5250);
insert into sales_order_details values('O46865', 'P00001', 10, 10, 525);
insert into sales_order_details values('O46865', 'P0345', 4, 4, 1050);
insert into sales_order_details values('O19003', 'P03453', 2, 2, 1050);
insert into sales_order_details values('O19003', 'P06734', 1, 1, 12000);
insert into sales_order_details values('O46866', 'P07965', 1, 0, 8400);
insert into sales_order_details values('O46866', 'P07975', 1, 0, 1050);
insert into sales_order_details values('O19008', 'P00001', 10, 5, 525);
insert into sales_order_details values('O19008', 'P07975', 5, 3, 1050);
SELECT * FROM sales_order_details;
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--
                                            String Function                                                    --
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--