-- ====================
--    Verify  DF_SS
-- ====================

select * from store_returns where sr_ticket_number in (select ss_ticket_number from store_sales, date_dim   where ss_sold_date_sk=d_date_sk and d_date between '2001-01-25' and '2001-01-26')
and sr_ticket_number not in (select purc_purchase_id from s_purchase_3  where purc_purchase_date between '2001-01-25' and '2001-01-26');
select * from store_sales where ss_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2001-01-25' and '2001-01-26') and
                ss_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2001-01-25' and '2001-01-26')
                and ss_ticket_number not in (select purc_purchase_id from s_purchase_3  where purc_purchase_date between '2001-01-25' and '2001-01-26');

select * from store_returns where sr_ticket_number in (select ss_ticket_number from store_sales, date_dim   where ss_sold_date_sk=d_date_sk and d_date between '2001-08-02' and '2001-08-03')
and sr_ticket_number not in (select purc_purchase_id from s_purchase_3  where purc_purchase_date between '2001-08-02' and '2001-08-03');
select * from store_sales where ss_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2001-08-02' and '2001-08-03') and
                ss_sold_date_sk<= (select max(d_date_sk) from date_dim  where d_date between '2001-08-02' and '2001-08-03')
                and ss_ticket_number not in (select purc_purchase_id from s_purchase_3  where purc_purchase_date between '2001-08-02' and '2001-08-03');

select * from store_returns where sr_ticket_number in (select ss_ticket_number from store_sales, date_dim   where ss_sold_date_sk=d_date_sk and d_date between '1999-12-15' and '1999-12-16')
and sr_ticket_number not in (select purc_purchase_id from s_purchase_3  where purc_purchase_date between '1999-12-15' and '1999-12-16');
select * from store_sales where ss_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '1999-12-15' and '1999-12-16') and
                ss_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '1999-12-15' and '1999-12-16')
                and ss_ticket_number not in (select purc_purchase_id from s_purchase_3  where purc_purchase_date between '1999-12-15' and '1999-12-16');