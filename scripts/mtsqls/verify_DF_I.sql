-- ====================
--    Verify  DF_I
-- ====================

select
  *
from
  inventory_del_${ROUND} del
  join inventory inv on del.inv_date_sk = inv.inv_date_sk
  and del.inv_item_sk = inv.inv_item_sk
  and del.inv_warehouse_sk = inv.inv_warehouse_sk;
