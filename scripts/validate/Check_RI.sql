-- The following SQL can approve all PKs are continuous numbers.
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(cc_call_center_sk) pk_min, max(cc_call_center_sk) pk_max, count(*) cnt from call_center);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(cp_catalog_page_sk) pk_min, max(cp_catalog_page_sk) pk_max, count(*) cnt from catalog_page);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(c_customer_sk) pk_min, max(c_customer_sk) pk_max, count(*) cnt from customer);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(ca_address_sk) pk_min, max(ca_address_sk) pk_max, count(*) cnt from customer_address);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max, count(*) cnt from customer_demographics);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max, count(*) cnt from household_demographics);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(ib_income_band_sk) pk_min, max(ib_income_band_sk) pk_max, count(*) cnt from income_band);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(i_item_sk) pk_min, max(i_item_sk) pk_max, count(*) cnt from item);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(p_promo_sk) pk_min, max(p_promo_sk) pk_max, count(*) cnt from promotion);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(r_reason_sk) pk_min, max(r_reason_sk) pk_max, count(*) cnt from reason);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(sm_ship_mode_sk) pk_min, max(sm_ship_mode_sk) pk_max, count(*) cnt from ship_mode);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(s_store_sk) pk_min, max(s_store_sk) pk_max, count(*) cnt from store);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(t_time_sk) pk_min, max(t_time_sk) pk_max, count(*) cnt from time_dim);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(w_warehouse_sk) pk_min, max(w_warehouse_sk) pk_max, count(*) cnt from warehouse);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(wp_web_page_sk) pk_min, max(wp_web_page_sk) pk_max, count(*) cnt from web_page);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(web_site_sk) pk_min, max(web_site_sk) pk_max, count(*) cnt from web_site);
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(d_date_sk) pk_min, max(d_date_sk) pk_max, count(*) cnt from date_dim);

select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(ss_ticket_number) pk_min, max(ss_ticket_number) pk_max, count(*) cnt from (select ss_ticket_number from store_sales group by ss_ticket_number));
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(ss_item_sk) pk_min, max(ss_item_sk) pk_max, count(*) cnt from (select ss_item_sk from store_sales group by ss_item_sk));
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(cs_order_number) pk_min, max(cs_order_number) pk_max, count(*) cnt from (select cs_order_number from catalog_sales group by cs_order_number));
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(cs_item_sk) pk_min, max(cs_item_sk) pk_max, count(*) cnt from (select cs_item_sk from catalog_sales group by cs_item_sk));
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(ws_order_number) pk_min, max(ws_order_number) pk_max, count(*) cnt from (select ws_order_number from web_sales group by ws_order_number));
select case when pk_max-pk_min != cnt - 1 then 'FAIL' else 'PASS' end from (select  min(ws_item_sk) pk_min, max(ws_item_sk) pk_max, count(*) cnt from (select ws_item_sk from web_sales group by ws_item_sk));


-- store_sales
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ss_sold_date_sk) fk_min, max(ss_sold_date_sk) fk_max from store_sales) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ss_sold_time_sk) fk_min, max(ss_sold_time_sk) fk_max from store_sales) x, (select min(t_time_sk) pk_min, max(t_time_sk) pk_max from time_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ss_item_sk) fk_min, max(ss_item_sk) fk_max from store_sales) x, (select min(i_item_sk) pk_min, max(i_item_sk) pk_max from item)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ss_customer_sk) fk_min, max(ss_customer_sk) fk_max from store_sales) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ss_cdemo_sk) fk_min, max(ss_cdemo_sk) fk_max from store_sales) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ss_hdemo_sk) fk_min, max(ss_hdemo_sk) fk_max from store_sales) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ss_addr_sk) fk_min, max(ss_addr_sk) fk_max from store_sales) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ss_store_sk) fk_min, max(ss_store_sk) fk_max from store_sales) x, (select min(s_store_sk) pk_min, max(s_store_sk) pk_max from store)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ss_promo_sk) fk_min, max(ss_promo_sk) fk_max from store_sales) x, (select min(p_promo_sk) pk_min, max(p_promo_sk) pk_max from promotion)y;

-- store_returns
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_returned_date_sk) fk_min, max(sr_returned_date_sk) fk_max from store_returns) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_return_time_sk) fk_min, max(sr_return_time_sk) fk_max from store_returns) x, (select min(t_time_sk) pk_min, max(t_time_sk) pk_max from time_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_item_sk) fk_min, max(sr_item_sk) fk_max from store_returns) x, (select min(i_item_sk) pk_min, max(i_item_sk) pk_max from item)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_customer_sk) fk_min, max(sr_customer_sk) fk_max from store_returns) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_cdemo_sk) fk_min, max(sr_cdemo_sk) fk_max from store_returns) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_hdemo_sk) fk_min, max(sr_hdemo_sk) fk_max from store_returns) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_addr_sk) fk_min, max(sr_addr_sk) fk_max from store_returns) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_store_sk) fk_min, max(sr_store_sk) fk_max from store_returns) x, (select min(s_store_sk) pk_min, max(s_store_sk) pk_max from store)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_reason_sk) fk_min, max(sr_reason_sk) fk_max from store_returns) x, (select min(r_reason_sk) pk_min, max(r_reason_sk) pk_max from reason)y;

select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_ticket_number) fk_min, max(sr_ticket_number) fk_max from store_returns) x, (select min(ss_ticket_number) pk_min, max(ss_ticket_number) pk_max from store_sales)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(sr_item_sk) fk_min, max(sr_item_sk) fk_max from store_returns) x, (select min(ss_item_sk) pk_min, max(ss_item_sk) pk_max from store_sales)y;
-- {<sr_item_sk, sr_ticket_number>} should be a subset of {<ss_item_sk, ss_ticket_number>}
select case when fk_count - pk_count != 0 then 'FAIL' else 'PASS' end from (select count(*) fk_count from store_returns)x, (select count(*) pk_count from store_returns, store_sales where ss_item_sk = sr_item_sk and ss_ticket_number = sr_ticket_number)y;

-- catalog_sales
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_sold_date_sk) fk_min, max(cs_sold_date_sk) fk_max from catalog_sales) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_sold_time_sk) fk_min, max(cs_sold_time_sk) fk_max from catalog_sales) x, (select min(t_time_sk) pk_min, max(t_time_sk) pk_max from time_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_ship_date_sk) fk_min, max(cs_ship_date_sk) fk_max from catalog_sales) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_bill_customer_sk) fk_min, max(cs_bill_customer_sk) fk_max from catalog_sales) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_bill_cdemo_sk) fk_min, max(cs_bill_cdemo_sk) fk_max from catalog_sales) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_bill_hdemo_sk) fk_min, max(cs_bill_hdemo_sk) fk_max from catalog_sales) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_bill_addr_sk) fk_min, max(cs_bill_addr_sk) fk_max from catalog_sales) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_ship_customer_sk) fk_min, max(cs_ship_customer_sk) fk_max from catalog_sales) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_ship_cdemo_sk) fk_min, max(cs_ship_cdemo_sk) fk_max from catalog_sales) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_ship_hdemo_sk) fk_min, max(cs_ship_hdemo_sk) fk_max from catalog_sales) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_ship_addr_sk) fk_min, max(cs_ship_addr_sk) fk_max from catalog_sales) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_call_center_sk) fk_min, max(cs_call_center_sk) fk_max from catalog_sales) x, (select min(cc_call_center_sk) pk_min, max(cc_call_center_sk) pk_max from call_center)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_catalog_page_sk) fk_min, max(cs_catalog_page_sk) fk_max from catalog_sales) x, (select min(cp_catalog_page_sk) pk_min, max(cp_catalog_page_sk) pk_max from catalog_page)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_ship_mode_sk) fk_min, max(cs_ship_mode_sk) fk_max from catalog_sales) x, (select min(sm_ship_mode_sk) pk_min, max(sm_ship_mode_sk) pk_max from ship_mode)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_warehouse_sk) fk_min, max(cs_warehouse_sk) fk_max from catalog_sales) x, (select min(w_warehouse_sk) pk_min, max(w_warehouse_sk) pk_max from warehouse)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_item_sk) fk_min, max(cs_item_sk) fk_max from catalog_sales) x, (select min(i_item_sk) pk_min, max(i_item_sk) pk_max from item)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cs_promo_sk) fk_min, max(cs_promo_sk) fk_max from catalog_sales) x, (select min(p_promo_sk) pk_min, max(p_promo_sk) pk_max from promotion)y;

-- catalog_returns
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_returned_date_sk) fk_min, max(cr_returned_date_sk) fk_max from catalog_returns) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_returned_time_sk) fk_min, max(cr_returned_time_sk) fk_max from catalog_returns) x, (select min(t_time_sk) pk_min, max(t_time_sk) pk_max from time_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_item_sk) fk_min, max(cr_item_sk) fk_max from catalog_returns) x, (select min(i_item_sk) pk_min, max(i_item_sk) pk_max from item)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_refunded_customer_sk) fk_min, max(cr_refunded_customer_sk) fk_max from catalog_returns) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_refunded_cdemo_sk) fk_min, max(cr_refunded_cdemo_sk) fk_max from catalog_returns) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_refunded_hdemo_sk) fk_min, max(cr_refunded_hdemo_sk) fk_max from catalog_returns) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_refunded_addr_sk) fk_min, max(cr_refunded_addr_sk) fk_max from catalog_returns) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_returning_customer_sk) fk_min, max(cr_returning_customer_sk) fk_max from catalog_returns) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_returning_cdemo_sk) fk_min, max(cr_returning_cdemo_sk) fk_max from catalog_returns) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_returning_hdemo_sk) fk_min, max(cr_returning_hdemo_sk) fk_max from catalog_returns) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_returning_addr_sk) fk_min, max(cr_returning_addr_sk) fk_max from catalog_returns) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_call_center_sk) fk_min, max(cr_call_center_sk) fk_max from catalog_returns) x, (select min(cc_call_center_sk) pk_min, max(cc_call_center_sk) pk_max from call_center)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_catalog_page_sk) fk_min, max(cr_catalog_page_sk) fk_max from catalog_returns) x, (select min(cp_catalog_page_sk) pk_min, max(cp_catalog_page_sk) pk_max from catalog_page)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_ship_mode_sk) fk_min, max(cr_ship_mode_sk) fk_max from catalog_returns) x, (select min(sm_ship_mode_sk) pk_min, max(sm_ship_mode_sk) pk_max from ship_mode)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_warehouse_sk) fk_min, max(cr_warehouse_sk) fk_max from catalog_returns) x, (select min(w_warehouse_sk) pk_min, max(w_warehouse_sk) pk_max from warehouse)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_reason_sk) fk_min, max(cr_reason_sk) fk_max from catalog_returns) x, (select min(r_reason_sk) pk_min, max(r_reason_sk) pk_max from reason)y;

select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_order_number) fk_min, max(cr_order_number) fk_max from catalog_returns) x, (select min(cs_order_number) pk_min, max(cs_order_number) pk_max from catalog_sales)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cr_item_sk) fk_min, max(cr_item_sk) fk_max from catalog_returns) x, (select min(cs_item_sk) pk_min, max(cs_item_sk) pk_max from catalog_sales)y;
-- {<cr_item_sk, cr_order_number>} should be a subset of {<cs_item_sk, cs_order_number>}
select case when fk_count - pk_count != 0 then 'FAIL' else 'PASS' end from (select count(*) fk_count from catalog_returns)x, (select count(*) pk_count from catalog_returns, catalog_sales where cs_item_sk = cr_item_sk and cs_order_number = cr_order_number)y;



-- web_sales
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_sold_date_sk) fk_min, max(ws_sold_date_sk) fk_max from web_sales) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_sold_time_sk) fk_min, max(ws_sold_time_sk) fk_max from web_sales) x, (select min(t_time_sk) pk_min, max(t_time_sk) pk_max from time_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_ship_date_sk) fk_min, max(ws_ship_date_sk) fk_max from web_sales) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_item_sk) fk_min, max(ws_item_sk) fk_max from web_sales) x, (select min(i_item_sk) pk_min, max(i_item_sk) pk_max from item)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_bill_customer_sk) fk_min, max(ws_bill_customer_sk) fk_max from web_sales) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_bill_cdemo_sk) fk_min, max(ws_bill_cdemo_sk) fk_max from web_sales) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_bill_hdemo_sk) fk_min, max(ws_bill_hdemo_sk) fk_max from web_sales) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_bill_addr_sk) fk_min, max(ws_bill_addr_sk) fk_max from web_sales) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_ship_customer_sk) fk_min, max(ws_ship_customer_sk) fk_max from web_sales) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_ship_cdemo_sk) fk_min, max(ws_ship_cdemo_sk) fk_max from web_sales) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_ship_hdemo_sk) fk_min, max(ws_ship_hdemo_sk) fk_max from web_sales) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_ship_addr_sk) fk_min, max(ws_ship_addr_sk) fk_max from web_sales) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_web_page_sk) fk_min, max(ws_web_page_sk) fk_max from web_sales) x, (select min(wp_web_page_sk) pk_min, max(wp_web_page_sk) pk_max from web_page)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_web_site_sk) fk_min, max(ws_web_site_sk) fk_max from web_sales) x, (select min(web_site_sk) pk_min, max(web_site_sk) pk_max from web_site)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_ship_mode_sk) fk_min, max(ws_ship_mode_sk) fk_max from web_sales) x, (select min(sm_ship_mode_sk) pk_min, max(sm_ship_mode_sk) pk_max from ship_mode)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_warehouse_sk) fk_min, max(ws_warehouse_sk) fk_max from web_sales) x, (select min(w_warehouse_sk) pk_min, max(w_warehouse_sk) pk_max from warehouse)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(ws_promo_sk) fk_min, max(ws_promo_sk) fk_max from web_sales) x, (select min(p_promo_sk) pk_min, max(p_promo_sk) pk_max from promotion)y;


-- web_returns
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_returned_date_sk) fk_min, max(wr_returned_date_sk) fk_max from web_returns) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_returned_time_sk) fk_min, max(wr_returned_time_sk) fk_max from web_returns) x, (select min(t_time_sk) pk_min, max(t_time_sk) pk_max from time_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_item_sk) fk_min, max(wr_item_sk) fk_max from web_returns) x, (select min(i_item_sk) pk_min, max(i_item_sk) pk_max from item)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_refunded_customer_sk) fk_min, max(wr_refunded_customer_sk) fk_max from web_returns) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_refunded_cdemo_sk) fk_min, max(wr_refunded_cdemo_sk) fk_max from web_returns) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_refunded_hdemo_sk) fk_min, max(wr_refunded_hdemo_sk) fk_max from web_returns) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_refunded_addr_sk) fk_min, max(wr_refunded_addr_sk) fk_max from web_returns) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_returning_customer_sk) fk_min, max(wr_returning_customer_sk) fk_max from web_returns) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_returning_cdemo_sk) fk_min, max(wr_returning_cdemo_sk) fk_max from web_returns) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_returning_hdemo_sk) fk_min, max(wr_returning_hdemo_sk) fk_max from web_returns) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_returning_addr_sk) fk_min, max(wr_returning_addr_sk) fk_max from web_returns) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_web_page_sk) fk_min, max(wr_web_page_sk) fk_max from web_returns) x, (select min(wp_web_page_sk) pk_min, max(wp_web_page_sk) pk_max from web_page)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_reason_sk) fk_min, max(wr_reason_sk) fk_max from web_returns) x, (select min(r_reason_sk) pk_min, max(r_reason_sk) pk_max from reason)y;

select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_order_number) fk_min, max(wr_order_number) fk_max from web_returns) x, (select min(ws_order_number) pk_min, max(ws_order_number) pk_max from web_sales)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wr_item_sk) fk_min, max(wr_item_sk) fk_max from web_returns) x, (select min(ws_item_sk) pk_min, max(ws_item_sk) pk_max from web_sales)y;
-- {<wr_item_sk, wr_order_number>} should be a subset of {<ws_item_sk, ws_order_number>}
select case when fk_count - pk_count != 0 then 'FAIL' else 'PASS' end from (select count(*) fk_count from web_returns)x, (select count(*) pk_count from web_returns, web_sales where ws_item_sk = wr_item_sk and ws_order_number = wr_order_number)y;


-- inventory
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(inv_date_sk) fk_min, max(inv_date_sk) fk_max from inventory) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(inv_item_sk) fk_min, max(inv_item_sk) fk_max from inventory) x, (select min(i_item_sk) pk_min, max(i_item_sk) pk_max from item)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(inv_warehouse_sk) fk_min, max(inv_warehouse_sk) fk_max from inventory) x, (select min(w_warehouse_sk) pk_min, max(w_warehouse_sk) pk_max from warehouse)y;

-- store
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(s_closed_date_sk) fk_min, max(s_closed_date_sk) fk_max from store) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;

-- call_center
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cc_closed_date_sk) fk_min, max(cc_closed_date_sk) fk_max from call_center) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cc_open_date_sk) fk_min, max(cc_open_date_sk) fk_max from call_center) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;

--catalog_page
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cp_start_date_sk) fk_min, max(cp_start_date_sk) fk_max from catalog_page) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(cp_end_date_sk) fk_min, max(cp_end_date_sk) fk_max from catalog_page) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;

--web_site
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(web_close_date_sk) fk_min, max(web_close_date_sk) fk_max from web_site) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(web_open_date_sk) fk_min, max(web_open_date_sk) fk_max from web_site) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;

--web_page
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wp_creation_date_sk) fk_min, max(wp_creation_date_sk) fk_max from web_page) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wp_access_date_sk) fk_min, max(wp_access_date_sk) fk_max from web_page) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(wp_customer_sk) fk_min, max(wp_customer_sk) fk_max from web_page) x, (select min(c_customer_sk) pk_min, max(c_customer_sk) pk_max from customer)y;


-- customer
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(c_current_cdemo_sk) fk_min, max(c_current_cdemo_sk) fk_max from customer) x, (select min(cd_demo_sk) pk_min, max(cd_demo_sk) pk_max from customer_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(c_current_hdemo_sk) fk_min, max(c_current_hdemo_sk) fk_max from customer) x, (select min(hd_demo_sk) pk_min, max(hd_demo_sk) pk_max from household_demographics)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(c_current_addr_sk) fk_min, max(c_current_addr_sk) fk_max from customer) x, (select min(ca_address_sk) pk_min, max(ca_address_sk) pk_max from customer_address)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(c_first_shipto_date_sk) fk_min, max(c_first_shipto_date_sk) fk_max from customer) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(c_first_sales_date_sk) fk_min, max(c_first_sales_date_sk) fk_max from customer) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(c_last_review_date_sk) fk_min, max(c_last_review_date_sk) fk_max from customer) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;

-- household_demographics
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(hd_income_band_sk) fk_min, max(hd_income_band_sk) fk_max from household_demographics) x, (select min(ib_income_band_sk) pk_min, max(ib_income_band_sk) pk_max from income_band)y;


--promotion
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(p_start_date_sk) fk_min, max(p_start_date_sk) fk_max from promotion) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(p_end_date_sk) fk_min, max(p_end_date_sk) fk_max from promotion) x, (select min(d_date_sk) pk_min, max(d_date_sk) pk_max from date_dim)y;
select case when fk_min < pk_min or fk_max > pk_max then 'FAIL' else 'PASS' end from (select min(p_item_sk) fk_min, max(p_item_sk) fk_max from promotion) x, (select min(i_item_sk) pk_min, max(i_item_sk) pk_max from item)y;


