delete from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2001-03-23' and '2001-03-24');
delete from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2001-03-23' and '2001-03-24') and
                 ws_sold_date_sk <= (select max(d_date_sk) from date_dim where d_date between '2001-03-23' and '2001-03-24');

delete from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2000-08-14' and '2000-08-15');
delete from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2000-08-14' and '2000-08-15') and 
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '2000-08-14' and '2000-08-15');

delete from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '1999-11-23' and '1999-11-24');
delete from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '1999-11-23' and '1999-11-24') and
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '1999-11-23' and '1999-11-24');

