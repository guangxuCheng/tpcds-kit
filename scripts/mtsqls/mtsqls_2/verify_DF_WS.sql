-- ====================
--    Verify  DF_WS
-- ====================

select * from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2001-03-23' and '2001-03-24')
and wr_order_number not in (select word_order_id from s_web_order_2 where word_order_date between '2001-03-23' and '2001-03-24');
select *  from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2001-03-23' and '2001-03-24') and
                 ws_sold_date_sk <= (select max(d_date_sk) from date_dim where d_date between '2001-03-23' and '2001-03-24')
                 and ws_order_number not in (select word_order_id from s_web_order_2 where word_order_date between '2001-03-23' and '2001-03-24');

select * from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2000-08-14' and '2000-08-15')
and wr_order_number not in (select word_order_id from s_web_order_2 where word_order_date between '2000-08-14' and '2000-08-15');
select * from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2000-08-14' and '2000-08-15') and 
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '2000-08-14' and '2000-08-15')
                and ws_order_number not in (select word_order_id from s_web_order_2 where word_order_date between '2000-08-14' and '2000-08-15');

select * from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '1999-11-23' and '1999-11-24')
and wr_order_number not in (select word_order_id from s_web_order_2 where word_order_date between '1999-11-23' and '1999-11-24');
select * from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '1999-11-23' and '1999-11-24') and
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '1999-11-23' and '1999-11-24')
                and ws_order_number not in (select word_order_id from s_web_order_2 where word_order_date between '1999-11-23' and '1999-11-24');
