delete from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2000-03-12' and '2000-03-13');
delete from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2000-03-12' and '2000-03-13') and
                 ws_sold_date_sk <= (select max(d_date_sk) from date_dim where d_date between '2000-03-12' and '2000-03-13');

delete from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '1999-09-14' and '1999-09-15');
delete from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '1999-09-14' and '1999-09-15') and 
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '1999-09-14' and '1999-09-15');

delete from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2000-12-16' and '2000-12-17');
delete from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2000-12-16' and '2000-12-17') and
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '2000-12-16' and '2000-12-17');

