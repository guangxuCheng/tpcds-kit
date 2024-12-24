-- validate customer_address
select cnt1 - cnt2, cnt2 customer_address_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.customer_address t, tpcds_100000_dbsql_qual_run_3_verification.customer_address v where t.ca_address_sk=v.ca_address_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.customer_address) y;

-- validate customer_demographics
select cnt1 - cnt2, cnt2 customer_demographics_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.customer_demographics t, tpcds_100000_dbsql_qual_run_3_verification.customer_demographics v where t.cd_demo_sk=v.cd_demo_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.customer_demographics) y;

-- validate date_dim
select cnt1 - cnt2, cnt2 date_dim_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.date_dim t, tpcds_100000_dbsql_qual_run_3_verification.date_dim v where t.d_date_sk=v.d_date_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.date_dim) y;

-- validate warehouse
select cnt1 - cnt2, cnt2 warehouse_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.warehouse t, tpcds_100000_dbsql_qual_run_3_verification.warehouse v where t.w_warehouse_sk=v.w_warehouse_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.warehouse) y;


-- validate ship_mode
select cnt1 - cnt2, cnt2 ship_mode_vcount  from (select count(*) cnt1 from tpcds_1000_r1_c1.ship_mode t, tpcds_100000_dbsql_qual_run_3_verification.ship_mode v where t.sm_ship_mode_sk=v.sm_ship_mode_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.ship_mode) y;

-- validate time_dim
select cnt1 - cnt2, cnt2 time_dim_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.time_dim t, tpcds_100000_dbsql_qual_run_3_verification.time_dim v where t.t_time_sk=v.t_time_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.time_dim) y;

-- validate reason
select cnt1 - cnt2, cnt2 reason_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.reason t, tpcds_100000_dbsql_qual_run_3_verification.reason v where t.r_reason_sk=v.r_reason_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.reason) y;

-- validate income_band
select cnt1 - cnt2, cnt2 income_band_vcount  from (select count(*) cnt1 from tpcds_1000_r1_c1.income_band t, tpcds_100000_dbsql_qual_run_3_verification.income_band v where t.ib_income_band_sk=v.ib_income_band_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.income_band) y;

-- validate item
select cnt1 - cnt2, cnt2 item_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.item t, tpcds_100000_dbsql_qual_run_3_verification.item v where t.i_item_sk=v.i_item_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.item) y;

-- validate store
select cnt1 - cnt2, cnt2 store_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.store t, tpcds_100000_dbsql_qual_run_3_verification.store v where t.s_store_sk=v.s_store_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.store) y;

-- validate call_center
select cnt1 - cnt2, cnt2 call_center_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.call_center t, tpcds_100000_dbsql_qual_run_3_verification.call_center v where t.cc_call_center_sk=v.cc_call_center_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.call_center) y;

-- validate customer
select cnt1 - cnt2, cnt2 customer_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.customer t, tpcds_100000_dbsql_qual_run_3_verification.customer v where t.c_customer_sk=v.c_customer_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.customer) y;

-- validate household_demographics
select cnt1 - cnt2, cnt2 household_demographics_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.household_demographics t, tpcds_100000_dbsql_qual_run_3_verification.household_demographics v where t.hd_demo_sk=v.hd_demo_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.household_demographics) y;

-- validate web_page
select cnt1 - cnt2, cnt2 web_page_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.web_page t, tpcds_100000_dbsql_qual_run_3_verification.web_page v where t.wp_web_page_sk=v.wp_web_page_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.web_page) y;

-- validate promotion
select cnt1 - cnt2, cnt2 promotion_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.promotion t, tpcds_100000_dbsql_qual_run_3_verification.promotion v where t.p_promo_sk=v.p_promo_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.promotion) y;


-- validate catalog_page
select cnt1 - cnt2, cnt2 catalog_page_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.catalog_page t, tpcds_100000_dbsql_qual_run_3_verification.catalog_page v where t.cp_catalog_page_sk=v.cp_catalog_page_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.catalog_page) y;

-- validate inventory
select cnt1 - cnt2, cnt2 inventory_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.inventory t, tpcds_100000_dbsql_qual_run_3_verification.inventory v where t.inv_date_sk=v.inv_date_sk and t.inv_item_sk=v.inv_item_sk and t.inv_warehouse_sk=v.inv_warehouse_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.inventory) y;

-- validate catalog_returns
select cnt1 - cnt2, cnt2 catalog_returns_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.catalog_returns t, tpcds_100000_dbsql_qual_run_3_verification.catalog_returns v where t.cr_item_sk=v.cr_item_sk and t.cr_order_number=v.cr_order_number) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.catalog_returns) y;

-- validate web_returns
select cnt1 - cnt2, cnt2 web_returns_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.web_returns t, tpcds_100000_dbsql_qual_run_3_verification.web_returns v where t.wr_item_sk=v.wr_item_sk and t.wr_order_number=v.wr_order_number) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.web_returns) y;

-- validate web_sales
select cnt1 - cnt2, cnt2 web_sales_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.web_sales t, tpcds_100000_dbsql_qual_run_3_verification.web_sales v where t.ws_item_sk=v.ws_item_sk and t.ws_order_number=v.ws_order_number) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.web_sales) y;

-- validate catalog_sales
select cnt1 - cnt2, cnt2 catalog_sales_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.catalog_sales t, tpcds_100000_dbsql_qual_run_3_verification.catalog_sales v where t.cs_item_sk=v.cs_item_sk and t.cs_order_number=v.cs_order_number) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.catalog_sales) y;

-- validate store_sales
select cnt1 - cnt2, cnt2 store_sales_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.store_sales t, tpcds_100000_dbsql_qual_run_3_verification.store_sales v where t.ss_ticket_number=v.ss_ticket_number and t.ss_item_sk=v.ss_item_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.store_sales) y;
-- validate store_returns
select cnt1 - cnt2, cnt2 store_returns_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.store_returns t, tpcds_100000_dbsql_qual_run_3_verification.store_returns v where t.sr_ticket_number=v.sr_ticket_number and t.sr_item_sk=v.sr_item_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.store_returns) y;


-- validate web_site
select cnt1 - cnt2, cnt2 web_site_vcount from (select count(*) cnt1 from tpcds_1000_r1_c1.web_site t, tpcds_100000_dbsql_qual_run_3_verification.web_site v where t.web_site_sk=v.web_site_sk) x, (select count(*) cnt2 from tpcds_100000_dbsql_qual_run_3_verification.web_site) y;
