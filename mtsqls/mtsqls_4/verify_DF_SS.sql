-- ====================
--    Verify  DF_SS
-- ====================

select * from store_returns where sr_ticket_number in (select ss_ticket_number from store_sales, date_dim   where ss_sold_date_sk=d_date_sk and d_date between '2000-03-12' and '2000-03-13')
and sr_ticket_number not in (select purc_purchase_id from s_purchase_4  where purc_purchase_date between '2000-03-12' and '2000-03-13');
select * from store_sales where ss_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2000-03-12' and '2000-03-13') and
                ss_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2000-03-12' and '2000-03-13')
                and ss_ticket_number not in (select purc_purchase_id from s_purchase_4  where purc_purchase_date between '2000-03-12' and '2000-03-13');

select * from store_returns where sr_ticket_number in (select ss_ticket_number from store_sales, date_dim   where ss_sold_date_sk=d_date_sk and d_date between '1999-09-14' and '1999-09-15')
and sr_ticket_number not in (select purc_purchase_id from s_purchase_4  where purc_purchase_date between '1999-09-14' and '1999-09-15');
select * from store_sales where ss_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '1999-09-14' and '1999-09-15') and
                ss_sold_date_sk<= (select max(d_date_sk) from date_dim  where d_date between '1999-09-14' and '1999-09-15')
                and ss_ticket_number not in (select purc_purchase_id from s_purchase_4  where purc_purchase_date between '1999-09-14' and '1999-09-15');

select * from store_returns where sr_ticket_number in (select ss_ticket_number from store_sales, date_dim   where ss_sold_date_sk=d_date_sk and d_date between '2000-12-16' and '2000-12-17')
and sr_ticket_number not in (select purc_purchase_id from s_purchase_4  where purc_purchase_date between '2000-12-16' and '2000-12-17');
select * from store_sales where ss_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2000-12-16' and '2000-12-17') and
                ss_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2000-12-16' and '2000-12-17')
                and ss_ticket_number not in (select purc_purchase_id from s_purchase_4  where purc_purchase_date between '2000-12-16' and '2000-12-17');