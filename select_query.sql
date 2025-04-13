select * from products where price >= 10 and price < 20;

select * from products where category_id in (1, 2) order by name;

select distinct country, count(*) from customers group by country;

select * from customers order by name desc limit 10