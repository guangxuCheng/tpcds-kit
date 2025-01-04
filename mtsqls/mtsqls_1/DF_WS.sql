delete from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2000-05-20' and '2000-05-21');
delete from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2000-05-20' and '2000-05-21') and
                 ws_sold_date_sk <= (select max(d_date_sk) from date_dim where d_date between '2000-05-20' and '2000-05-21');

delete from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '1999-09-18' and '1999-09-19');
delete from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '1999-09-18' and '1999-09-19') and 
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '1999-09-18' and '1999-09-19');

delete from web_returns where wr_order_number in (select ws_order_number from web_sales, date_dim where ws_sold_date_sk=d_date_sk and d_date between '2002-11-12' and '2002-11-13');
delete from web_sales where ws_sold_date_sk >= (select min(d_date_sk) from date_dim where d_date between '2002-11-12' and '2002-11-13') and
                ws_sold_date_sk<= (select max(d_date_sk) from date_dim where d_date between '2002-11-12' and '2002-11-13');

