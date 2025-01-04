delete from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '2001-03-22' and '2001-03-29') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '2001-03-22' and '2001-03-29');

delete from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '2000-08-17' and '2000-08-24') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '2000-08-17' and '2000-08-24');

delete from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '1999-11-25' and '1999-12-02') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '1999-11-25' and '1999-12-02');
