delete from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '2001-03-23' and '2001-03-24');
delete from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2001-03-23' and '2001-03-24') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2001-03-23' and '2001-03-24');

delete from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '2000-08-14' and '2000-08-15');
delete from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2000-08-14' and '2000-08-15') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2000-08-14' and '2000-08-15');

delete from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '1999-11-23' and '1999-11-24');
delete from catalog_sales where cs_sold_date_sk >=  (select min(d_date_sk) from date_dim  where d_date between '1999-11-23' and '1999-11-24') and 
                cs_sold_date_sk <=  (select max(d_date_sk) from date_dim  where d_date between '1999-11-23' and '1999-11-24');


