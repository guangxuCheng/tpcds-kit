select
  *
from
  web_returns_del_${ROUND} del
  join web_returns wr on del.wr_item_sk = wr.wr_item_sk
  and del.wr_order_number = wr.wr_order_number
  and del.wr_returned_date_sk = wr.wr_returned_date_sk
  and del.wr_returned_time_sk = wr.wr_returned_time_sk
  and del.wr_net_loss = wr.wr_net_loss;


select
  *
from
  web_sales_del_${ROUND} del
  join web_sales ws on del.ws_item_sk = ws.ws_item_sk
  and del.ws_order_number = ws.ws_order_number
  and del.ws_sold_date_sk = ws.ws_sold_date_sk
  and del.ws_sold_time_sk = ws.ws_sold_time_sk
  and del.ws_net_profit = ws.ws_net_profit;
