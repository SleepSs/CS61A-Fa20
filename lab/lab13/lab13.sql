.read data.sql


CREATE TABLE average_prices AS
  SELECT category, avg(MSRP) as average_price from products
  group by category;


CREATE TABLE lowest_prices AS
  SELECT store, item, price from inventory group by item having price = min(price) ; -- 使用aggregate时不能用where，得用having

create table temp as
  SELECT item, store, min(MSRP/rating) from lowest_prices as a , products as b where b.name=a.item group by category; -- 不加b.name = a.item就寄

CREATE TABLE shopping_list AS
  select item, store from temp;



CREATE TABLE total_bandwidth AS
  SELECT sum(MBS) from shopping_list, stores where stores.store = shopping_list.store;

