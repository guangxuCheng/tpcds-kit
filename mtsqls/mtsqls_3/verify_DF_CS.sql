-- ====================
--    Verify  DF_CS
-- ====================

select * from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '2001-01-25' and '2001-01-26')
and cr_order_number not in (select cord_order_id from s_catalog_order_3 where cord_order_date between '2001-01-25' and '2001-01-26');
select * from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2001-01-25' and '2001-01-26') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2001-01-25' and '2001-01-26')
                and cs_order_number not in (select cord_order_id from s_catalog_order_3 where cord_order_date between '2001-01-25' and '2001-01-26');

select * from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '2001-08-02' and '2001-08-03')
and cr_order_number not in (select cord_order_id from s_catalog_order_3 where cord_order_date between '2001-08-02' and '2001-08-03');
select * from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2001-08-02' and '2001-08-03') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2001-08-02' and '2001-08-03')
                and cs_order_number not in (select cord_order_id from s_catalog_order_3 where cord_order_date between '2001-08-02' and '2001-08-03');

select * from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between '1999-12-15' and '1999-12-16')
and cr_order_number not in (select cord_order_id from s_catalog_order_3 where cord_order_date between '1999-12-15' and '1999-12-16');
select * from catalog_sales where cs_sold_date_sk >=  (select min(d_date_sk) from date_dim  where d_date between '1999-12-15' and '1999-12-16') and 
                cs_sold_date_sk <=  (select max(d_date_sk) from date_dim  where d_date between '1999-12-15' and '1999-12-16')
                and cs_order_number not in (select cord_order_id from s_catalog_order_3 where cord_order_date between '1999-12-15' and '1999-12-16');

