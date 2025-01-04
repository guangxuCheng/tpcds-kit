delete from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '2001-01-25' and '2001-02-01') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '2001-01-25' and '2001-02-01');

delete from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '2001-08-02' and '2001-08-09') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '2001-08-02' and '2001-08-09');

delete from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '1999-12-16' and '1999-12-23') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '1999-12-16' and '1999-12-23');
