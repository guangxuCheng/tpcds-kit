-- ====================
--    Verify  DF_WS
-- ====================

select * from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2001-01-25' and '2001-01-26')
and wr_order_number not in (select word_order_id from s_web_order_3 where word_order_date between '2001-01-25' and '2001-01-26');
select *  from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2001-01-25' and '2001-01-26') and
                 ws_sold_date_sk <= (select max(d_date_sk) from date_dim where d_date between '2001-01-25' and '2001-01-26')
                 and ws_order_number not in (select word_order_id from s_web_order_3 where word_order_date between '2001-01-25' and '2001-01-26');

select * from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2001-08-02' and '2001-08-03')
and wr_order_number not in (select word_order_id from s_web_order_3 where word_order_date between '2001-08-02' and '2001-08-03');
select * from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2001-08-02' and '2001-08-03') and 
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '2001-08-02' and '2001-08-03')
                and ws_order_number not in (select word_order_id from s_web_order_3 where word_order_date between '2001-08-02' and '2001-08-03');

select * from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '1999-12-15' and '1999-12-16')
and wr_order_number not in (select word_order_id from s_web_order_3 where word_order_date between '1999-12-15' and '1999-12-16');
select * from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '1999-12-15' and '1999-12-16') and
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '1999-12-15' and '1999-12-16')
                and ws_order_number not in (select word_order_id from s_web_order_3 where word_order_date between '1999-12-15' and '1999-12-16');
