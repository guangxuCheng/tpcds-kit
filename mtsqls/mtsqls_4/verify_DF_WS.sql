-- ====================
--    Verify  DF_WS
-- ====================

select * from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2000-03-12' and '2000-03-13')
and wr_order_number not in (select word_order_id from s_web_order_4 where word_order_date between '2000-03-12' and '2000-03-13');
select *  from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2000-03-12' and '2000-03-13') and
                 ws_sold_date_sk <= (select max(d_date_sk) from date_dim where d_date between '2000-03-12' and '2000-03-13')
                 and ws_order_number not in (select word_order_id from s_web_order_4 where word_order_date between '2000-03-12' and '2000-03-13');

select * from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '1999-09-14' and '1999-09-15')
and wr_order_number not in (select word_order_id from s_web_order_4 where word_order_date between '1999-09-14' and '1999-09-15');
select * from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '1999-09-14' and '1999-09-15') and 
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '1999-09-14' and '1999-09-15')
                and ws_order_number not in (select word_order_id from s_web_order_4 where word_order_date between '1999-09-14' and '1999-09-15');

select * from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2000-12-16' and '2000-12-17')
and wr_order_number not in (select word_order_id from s_web_order_4 where word_order_date between '2000-12-16' and '2000-12-17');
select * from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2000-12-16' and '2000-12-17') and
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '2000-12-16' and '2000-12-17')
                and ws_order_number not in (select word_order_id from s_web_order_4 where word_order_date between '2000-12-16' and '2000-12-17');
