delete from store_returns where sr_ticket_number in (select ss_ticket_number from store_sales, date_dim   where ss_sold_date_sk=d_date_sk and d_date between '2001-01-25' and '2001-01-26');
delete from store_sales where ss_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2001-01-25' and '2001-01-26') and
                ss_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '2001-01-25' and '2001-01-26');

delete from store_returns where sr_ticket_number in (select ss_ticket_number from store_sales, date_dim   where ss_sold_date_sk=d_date_sk and d_date between '2001-08-02' and '2001-08-03');
delete from store_sales where ss_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '2001-08-02' and '2001-08-03') and
                ss_sold_date_sk<= (select max(d_date_sk) from date_dim  where d_date between '2001-08-02' and '2001-08-03');

delete from store_returns where sr_ticket_number in (select ss_ticket_number from store_sales, date_dim   where ss_sold_date_sk=d_date_sk and d_date between '1999-12-15' and '1999-12-16');
delete from store_sales where ss_sold_date_sk >= (select min(d_date_sk) from date_dim  where d_date between '1999-12-15' and '1999-12-16') and
                ss_sold_date_sk <= (select max(d_date_sk) from date_dim  where d_date between '1999-12-15' and '1999-12-16');

