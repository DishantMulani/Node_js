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
--  update products set price=(price-price*0.1);
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