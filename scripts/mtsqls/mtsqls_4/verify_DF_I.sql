-- ====================
--    Verify  DF_I
-- ====================

select * from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '2000-03-16' and '2000-03-23') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '2000-03-16' and '2000-03-23')
                and not exists ( SELECT d_date_sk, i_item_sk, w_warehouse_sk FROM s_inventory_4 JOIN warehouse ON (invn_warehouse_id=w_warehouse_id)
                JOIN item ON (invn_item_id=i_item_id AND i_rec_end_date IS NULL) JOIN date_dim ON (d_date=invn_date) and invn_date between '2000-03-16' and '2000-03-23'
                where i_item_sk=inv_item_sk and w_warehouse_sk=inv_warehouse_sk and d_date_sk=inv_date_sk);

select * from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '1999-09-16' and '1999-09-23') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '1999-09-16' and '1999-09-23')
                and not exists ( SELECT d_date_sk, i_item_sk, w_warehouse_sk FROM s_inventory_4 JOIN warehouse ON (invn_warehouse_id=w_warehouse_id)
                JOIN item ON (invn_item_id=i_item_id AND i_rec_end_date IS NULL) JOIN date_dim ON (d_date=invn_date) and invn_date between '1999-09-16' and '1999-09-23'
                where i_item_sk=inv_item_sk and w_warehouse_sk=inv_warehouse_sk and d_date_sk=inv_date_sk);

select * from inventory where inv_date_sk >= ( select min(d_date_sk) from date_dim  where  d_date between '2000-12-14' and '2000-12-21') and 
                inv_date_sk <= ( select max(d_date_sk) from date_dim  where  d_date between '2000-12-14' and '2000-12-21')
                and not exists ( SELECT d_date_sk, i_item_sk, w_warehouse_sk FROM s_inventory_4 JOIN warehouse ON (invn_warehouse_id=w_warehouse_id)
                JOIN item ON (invn_item_id=i_item_id AND i_rec_end_date IS NULL) JOIN date_dim ON (d_date=invn_date) and invn_date between '2000-12-14' and '2000-12-21'
                where i_item_sk=inv_item_sk and w_warehouse_sk=inv_warehouse_sk and d_date_sk=inv_date_sk);
