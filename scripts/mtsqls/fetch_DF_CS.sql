-- ====================
--    Fetch  DF_CS
-- ====================

insert into catalog_returns_del_${ROUND}
select * from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between 'CSW_S_1' and 'CSW_E_1');

insert into catalog_sales_del_${ROUND}
select * from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between 'CSW_S_1' and 'CSW_E_1') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between 'CSW_S_1' and 'CSW_E_1');

insert into catalog_returns_del_${ROUND}
select * from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between 'CSW_S_2' and 'CSW_E_2');

insert into catalog_sales_del_${ROUND}
select * from catalog_sales where cs_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between 'CSW_S_2' and 'CSW_E_2') and 
                cs_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between 'CSW_S_2' and 'CSW_E_2');

insert into catalog_returns_del_${ROUND}
select * from catalog_returns where cr_order_number in  (select cs_order_number from catalog_sales, date_dim  where cs_sold_date_sk=d_date_sk and    d_date between 'CSW_S_3' and 'CSW_E_3');

insert into catalog_sales_del_${ROUND}
select * from catalog_sales where cs_sold_date_sk >=  (select min(d_date_sk) from date_dim  where d_date between 'CSW_S_3' and 'CSW_E_3') and 
                cs_sold_date_sk <=  (select max(d_date_sk) from date_dim  where d_date between 'CSW_S_3' and 'CSW_E_3');


