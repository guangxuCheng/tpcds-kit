delete from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '2000-03-12' and '2000-03-13');
delete from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2000-03-12' and '2000-03-13') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2000-03-12' and '2000-03-13');

delete from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '1999-09-14' and '1999-09-15');
delete from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '1999-09-14' and '1999-09-15') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '1999-09-14' and '1999-09-15');

delete from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '2000-12-16' and '2000-12-17');
delete from catalog_sales where cs_sold_date_sk >=  (select min(d_date_sk) from date_dim  where d_date between '2000-12-16' and '2000-12-17') and 
                cs_sold_date_sk <=  (select max(d_date_sk) from date_dim  where d_date between '2000-12-16' and '2000-12-17');


