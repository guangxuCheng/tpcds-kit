--TPC-DS Q32
select  sum(cs_ext_discount_amt)  as `excess discount amount` 
from 
   catalog_sales 
   ,item 
   ,date_dim
where
i_manufact_id = 342
and i_item_sk = cs_item_sk 
and d_date between '2002-01-23' and 
        date_add(cast('2002-01-23' as date),90)
and d_date_sk = cs_sold_date_sk 
and cs_ext_discount_amt  
     > ( 
         select 
            1.3 * avg(cs_ext_discount_amt) 
         from 
            catalog_sales 
           ,date_dim
         where 
              cs_item_sk = i_item_sk 
          and d_date between '2002-01-23' and
                             date_add(cast('2002-01-23' as date),90)
          and d_date_sk = cs_sold_date_sk 
      ) 
limit 100;

