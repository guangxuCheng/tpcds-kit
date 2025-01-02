insert into  customer_address values (-1, 'abc', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
select * from customer_address where ca_address_sk = -1;
delete from customer_address where ca_address_sk = -1;
select * from customer_address where ca_address_sk = -1;

insert into  customer_demographics values (-1, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
select * from customer_demographics where cd_demo_sk = -1;
delete from customer_demographics  where cd_demo_sk = -1;
select * from customer_demographics where cd_demo_sk = -1;

insert into  date_dim values (-1, 'abc', NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL);
select * from date_dim where d_date_sk = -1;
delete from date_dim where d_date_sk = -1;
select * from date_dim date_dim where d_date_sk = -1;

insert into  warehouse values (-1, 'abc', NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL);
select * from warehouse where w_warehouse_sk = -1;
delete from warehouse where w_warehouse_sk = -1;
select * from warehouse where w_warehouse_sk = -1;

insert into  ship_mode values (-1, 'abc', NULL, NULL, NULL, NULL);
select * from ship_mode where sm_ship_mode_sk = -1;
delete from ship_mode where sm_ship_mode_sk = -1;
select * from ship_mode where sm_ship_mode_sk = -1;

insert into  time_dim values (-1, 'abc',  NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL) ;
select * from time_dim where t_time_sk = -1;
delete from time_dim where t_time_sk = -1;
select * from time_dim where t_time_sk = -1;

insert into  reason values (-1, 'abc', NULL);
select * from reason where r_reason_sk = -1;
delete from reason where r_reason_sk = -1;
select * from reason where r_reason_sk = -1;

insert into  income_band values (-1, NULL, NULL);
select * from income_band where ib_income_band_sk = -1;
delete from income_band where ib_income_band_sk = -1;
select * from income_band where ib_income_band_sk = -1;

insert into  item values (-1, 'abc', NULL, NULL, NULL, NULL, NULL,  NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL );
select * from item where i_item_sk = -1;
delete from item where i_item_sk = -1;
select * from item where i_item_sk = -1;
 
insert into  store values (-1, 'abc', NULL, NULL, NULL, NULL, NULL,  NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,  NULL );
select * from store where s_store_sk = -1;
delete from store where s_store_sk = -1;
select * from store where s_store_sk = -1;

insert into  call_center values (-1, 'abc', NULL, NULL, NULL, NULL, NULL,  NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,  NULL, NULL, NULL );
select * from call_center where cc_call_center_sk = -1;
delete from call_center where cc_call_center_sk = -1;
select * from call_center where cc_call_center_sk = -1;

insert into  customer values(-1, 'abc', NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL);
select * from customer where c_customer_sk = -1;
delete from customer where c_customer_sk = -1;
select * from customer where c_customer_sk = -1;

insert into  web_site values (-1, 'abc', NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL);
select * from web_site where web_site_sk = -1;
delete from web_site where web_site_sk = -1;
select * from web_site where web_site_sk = -1;

insert into  household_demographics values(-1, NULL, 'abc', NULL, NULL);
select * from household_demographics where hd_demo_sk = -1;
delete from household_demographics where hd_demo_sk = -1;
select * from household_demographics where hd_demo_sk = -1;

insert into  web_page values (-1, 'abc', NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL);
select * from web_page where wp_web_page_sk = -1;
delete from web_page where wp_web_page_sk = -1;
select * from web_page where wp_web_page_sk = -1;

insert into  promotion values (-1, 'abc',  NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
select * from promotion where p_promo_sk = -1;
delete from promotion where p_promo_sk = -1;
select * from promotion where p_promo_sk = -1;

insert into  catalog_page values (-1, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
select * from catalog_page where cp_catalog_page_sk = -1;
delete from catalog_page where cp_catalog_page_sk = -1;
select * from catalog_page where cp_catalog_page_sk = -1;

insert into  inventory values (2450850, -1, -1, -1);
select * from inventory where inv_item_sk = -1 and inv_date_sk = 2450850;
delete from inventory where inv_item_sk = -1 and inv_date_sk = 2450850;
select * from inventory where inv_item_sk = -1 and inv_date_sk = 2450850;

insert into  store_returns values (2450850, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL);
select * from store_returns where sr_item_sk = -1 and sr_returned_date_sk = 2450850;
delete from store_returns where sr_item_sk = -1 and sr_returned_date_sk = 2450850;
select * from store_returns where sr_item_sk = -1 and sr_returned_date_sk = 2450850;

insert into  catalog_returns values (2450850, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1,NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL);
select * from catalog_returns where cr_item_sk = -1 and cr_returned_date_sk = 2450850;
delete from catalog_returns where cr_item_sk = -1 and cr_returned_date_sk = 2450850;
select * from catalog_returns where cr_item_sk = -1 and cr_returned_date_sk = 2450850;

insert into  web_returns values (2450850, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL);
select * from web_returns where wr_item_sk = -1 and wr_returned_date_sk = 2450850;
delete from web_returns where wr_item_sk = -1 and wr_returned_date_sk = 2450850;
select * from web_returns where wr_item_sk = -1 and wr_returned_date_sk = 2450850;

insert into  web_sales values (2450850, NULL, NULL, -1,  NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL);
select * from web_sales where ws_item_sk = -1 and ws_sold_date_sk = 2450850;
delete from web_sales where ws_item_sk = -1 and ws_sold_date_sk = 2450850;
select * from web_sales where ws_item_sk = -1 and ws_sold_date_sk = 2450850;

insert into  catalog_sales values (2450850, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, -1, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL,NULL);
select * from catalog_sales where cs_item_sk = -1 and cs_sold_date_sk = 2450850;
delete from catalog_sales where cs_item_sk = -1 and cs_sold_date_sk = 2450850;
select * from catalog_sales where cs_item_sk = -1 and cs_sold_date_sk = 2450850;

insert into  store_sales values(2450850, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL,NULL, NULL, NULL, NULL, NULL, NULL);
select * from store_sales where ss_item_sk=-1 and ss_sold_date_sk = 2450850;
delete from store_sales where ss_item_sk=-1 and ss_sold_date_sk = 2450850;
select * from store_sales where ss_item_sk=-1 and ss_sold_date_sk = 2450850;