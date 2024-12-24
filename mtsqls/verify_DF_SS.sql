select
  *
from
  store_returns_del_${ROUND} del
  join store_returns sr on del.sr_item_sk = sr.sr_item_sk
  and del.sr_ticket_number = sr.sr_ticket_number
  and del.sr_returned_date_sk = sr.sr_returned_date_sk
  and del.sr_return_time_sk = sr.sr_return_time_sk
  and del.sr_net_loss = sr.sr_net_loss;


select
  *
from
  store_sales_del_${ROUND} del
  join store_sales ss on del.ss_item_sk = ss.ss_item_sk
  and del.ss_ticket_number = ss.ss_ticket_number
  and del.ss_sold_date_sk = ss.ss_sold_date_sk
  and del.ss_sold_time_sk = ss.ss_sold_time_sk
  and del.ss_net_profit = ss.ss_net_profit;
