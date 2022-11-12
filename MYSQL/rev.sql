-- create table manufacturers(
--     code int primary key,
--     name varchar(20)
-- );
-- create table products(
--     code int,
--     name varchar(20),
--     price numeric,
--     manufacturer int,
--     constraint product primary key (code),
--     constraint product foreign key(manufacturer) references manufacturers(code)
-- );
-- insert into manufacturers
-- VALUES(1, 'sony');
-- insert into manufacturers
-- VALUES(2, 'creative labs');
-- insert into manufacturers
-- VALUES(3, 'hewlett-packard');
-- insert into manufacturers
-- VALUES(4, 'lomega');
-- insert into manufacturers
-- VALUES(5, 'fujitsu');
-- insert into manufacturers
-- VALUES(6, 'winchester');
-- INSERT INTO products
-- VALUES(1, 'hard drive', 240, 5);
-- INSERT INTO products
-- VALUES(2, 'memory', 120, 6);
-- INSERT INTO products
-- VALUES(3, 'zip drive', 150, 4);
-- INSERT INTO products
-- VALUES(4, 'floppy disk', 5, 6);
-- INSERT INTO products
-- VALUES(5, 'monitor', 240, 1);
-- INSERT INTO products
-- VALUES(6, 'dvd drive', 180, 2);
-- INSERT INTO products
-- VALUES(7, 'cd drive', 90, 2);
-- INSERT INTO products
-- VALUES(8, 'printer', 270, 3);
-- INSERT INTO products
-- VALUES(9, 'toner cartridge', 66, 3);
-- INSERT INTO products
-- VALUES(10, 'dvd burner', 180, 2);
-- SELECT name from products;
-- select name,price from products;
-- SELECT name from products WHERE price<=200;
-- SELECT name,price from products WHERE price between 60 and 200;
-- SELECT name,price*100 from products; 
-- SELECT avg(price) FROM products;
-- select avg(price) from products WHERE manufacturer = 2;
-- SELECT count(price) from products where price >= 180;
-- select name,price from products where price>=180 order by price DESC,name ASC;
-- SELECT name,price from products order by price limit 1;
-- INSERT INTO products VALUES(11,'loudspeakers',70,2);
-- update products set name='laser printer' where code=8;
-- update products set price=(price-price*0.1);
-- update products set price=(price-price*0.1) where price>=120;
-- inner join
-- select *
-- from manufacturers
-- INNER JOIN products
-- on manufacturers.code=products.manufacturer;
-- left join
-- select *
-- from manufacturers
-- left JOIN products
-- on manufacturers.code=products.manufacturer;
-- right join
-- select *
-- from manufacturers
-- right JOIN products
-- on manufacturers.code=products.manufacturer;
-- cross join
-- select *
-- from products
-- cross join manufacturers;
-- select *
-- from products a,manufacturers b 
-- where a.manufacturer=b.code;
-- select a.name,a.price,b.name
-- from products a,manufacturers b 
-- where a.manufacturer=b.code;
-- SELECT avg(price) ,a.manufacturer
-- from products a,manufacturers b 
-- where a.manufacturer=b.code
-- group by b.code;
--  SELECT avg(price) ,b.name
--  from products a,manufacturers b 
--  where a.manufacturer=b.code
--  group by b.code;
-- select avg(price),b.name
-- FROM products a,manufacturers b
-- where a.manufacturer=b.code
-- group by a.manufacturer 
-- HAVING avg(price)>=150;
-- select a.price,a.name,b.name
-- FROM products a,manufacturers b
-- where a.manufacturer=b.code
-- group by b.name 
-- HAVING max(price)=(select max(price) from products);
-- 1.A
-- select description ,sum(qtydisp) 
-- from product_master p,sales_order_details s 
-- where p.productno=s.productno
-- GROUP BY description;
-- 1.B
-- select p.description,sum(s.qtyordered),sum(s.qtyordered*s.productrate)
-- from product_master p,sales_order_details s
-- where p.productno=s.productno
-- GROUP BY p.productno;
-- 1.C
-- select p.description,avg(s.qtyordered),sum(qtyordered*productrate) as sold
-- from product_master p,sales_order_details s
-- where p.productno=s.productno
-- GROUP BY s.orderno
-- HAVING sold>15000;
-- 1.D
-- select sum(s.qtyordered),so.orderdate
-- from sales_order so,sales_order_details s
-- where so.orderno = s.orderno
-- group by so.orderdate
-- having DATE_FORMAT(so.orderdate, "%m")=6;
-- 2.A
-- select c.name,p.description,so.orderno
-- from client_master c,product_master p,sales_order so,sales_order_details s
-- where c.clientno=so.clientno
-- and p.productno=s.productno 
-- and s.orderno=so.orderno
-- group by p.productno
-- having c.name="ivan";
-- 2.B
-- select s.orderno,
--     s.productno,
--     p.description,
--     so.orderdate,
--     so.delydate
-- from client_master c,
--     product_master p,
--     sales_order so,
--     sales_order_details s
-- where c.clientno = so.clientno
--     and p.productno = s.productno
--     and s.orderno = so.orderno
--     and DATE_FORMAT(so.orderdate, "%m") = DATE_FORMAT(so.delydate, "%m");
-- select * from product_master;
-- SELECT * FROM client_master;
-- SELECT * FROM sales_order;
-- SELECT * FROM sales_order_details;
-- 2.C
-- select p.productno,p.description,sum(s.qtyordered)
-- from product_master p,sales_order_details s
-- WHERE p.productno=s.productno
-- GROUP BY p.productno
-- order by sum(s.qtyordered) desc limit 1;
-- 2.D
-- select c.name 
-- from client_master c,sales_order so,sales_order_details s,product_master P
-- where c.clientno=so.clientno and so.orderno=s.orderno and s.productno=p.productno
-- and p.description="1.44floppies";
-- 2.E
--  select p.description,c.name
--  from client_master c,sales_order so,sales_order_details s,product_master P
--  where c.clientno=so.clientno and so.orderno=s.orderno and s.productno=p.productno
--  and s.qtyordered<5 and p.description="mouse";
-- 2.F
--  select c.name,p.description,s.qtyordered
--  from client_master c,sales_order so,sales_order_details s,product_master P
--  where c.clientno=so.clientno and so.orderno=s.orderno and s.productno=p.productno
--  and   c.name in ("ivan","ravi");
-- 2.G
-- select c.name,p.description,s.qtyordered
--  from client_master c,sales_order so,sales_order_details s,product_master P
--  where c.clientno=so.clientno and so.orderno=s.orderno and s.productno=p.productno
--  and   c.clientno in ("c00001","c00002");
-- 3.A
-- select productno,description 
-- from product_master
-- where  productno not in (select productno from sales_order_details);
-- 3.B
-- select name,address1,address2,city,pincode
-- from client_master 
-- where clientno = (select clientno from sales_order WHERE orderno in("o19001"));
-- 3.C
-- select name 
-- from client_master
-- WHERE clientno in (SELECT clientno from sales_order WHERE orderdate < "2004-05-02");
-- 3.D
-- SELECT clientno,
--     name
-- from client_master
-- where clientno in(
--         SELECT clientno
--         FROM sales_order
--         WHERE orderno in(
--                 SELECT orderno
--                 from sales_order_details
--                 WHERE productno in(
--                         SELECT productno
--                         from product_master
--                         WHERE description = "mouse"
--                     )
--             )
--     );
-- 3.E
-- SELECT name
-- from client_master
-- WHERE Clientno in(
--         SELECT clientno
--         FROM sales_order
--         WHERE orderno in(
--                 SELECT orderno
--                 from sales_order_details
--                 WHERE (qtyordered * productrate) >= 10000
--             )
--     );