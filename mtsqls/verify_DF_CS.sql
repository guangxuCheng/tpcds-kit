select
  *
from
  catalog_returns_del_${ROUND} del
  join catalog_returns cr on del.cr_item_sk = cr.cr_item_sk
  and del.cr_order_number = cr.cr_order_number
  and del.cr_returned_date_sk = cr.cr_returned_date_sk
  and del.cr_returned_time_sk = cr.cr_returned_time_sk
  and del.cr_net_loss = cr.cr_net_loss;


select
  *
from
  catalog_sales_del_${ROUND} del
  join catalog_sales cs on del.cs_item_sk = cs.cs_item_sk
  and del.cs_order_number = cs.cs_order_number
  and del.cs_sold_date_sk = cs.cs_sold_date_sk
  and del.cs_sold_time_sk = cs.cs_sold_time_sk
  and del.cs_net_profit = cs.cs_net_profit;
