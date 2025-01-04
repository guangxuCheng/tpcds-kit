delete from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '2000-05-18' and '2000-05-25') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '2000-05-18' and '2000-05-25');

delete from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '1999-09-16' and '1999-09-23') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '1999-09-16' and '1999-09-23');

delete from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '2002-11-14' and '2002-11-21') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '2002-11-14' and '2002-11-21');
