-- ====================
--    Verify  DF_CS
-- ====================

select * from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '2000-05-20' and '2000-05-21')
and cr_order_number not in (select cord_order_id from s_catalog_order_1 where cord_order_date between '2000-05-20' and '2000-05-21');
select * from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2000-05-20' and '2000-05-21') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2000-05-20' and '2000-05-21')
                and cs_order_number not in (select cord_order_id from s_catalog_order_1 where cord_order_date between '2000-05-20' and '2000-05-21');

select * from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '1999-09-18' and '1999-09-19')
and cr_order_number not in (select cord_order_id from s_catalog_order_1 where cord_order_date between '1999-09-18' and '1999-09-19');
select * from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '1999-09-18' and '1999-09-19') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '1999-09-18' and '1999-09-19')
                and cs_order_number not in (select cord_order_id from s_catalog_order_1 where cord_order_date between '1999-09-18' and '1999-09-19');

select * from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '2002-11-12' and '2002-11-13')
and cr_order_number not in (select cord_order_id from s_catalog_order_1 where cord_order_date between '2002-11-12' and '2002-11-13');
select * from catalog_sales where cs_sold_date_sk >=  (select min(d_date_sk) from date_dim  where d_date between '2002-11-12' and '2002-11-13') and 
                cs_sold_date_sk <=  (select max(d_date_sk) from date_dim  where d_date between '2002-11-12' and '2002-11-13')
                and cs_order_number not in (select cord_order_id from s_catalog_order_1 where cord_order_date between '2002-11-12' and '2002-11-13');

