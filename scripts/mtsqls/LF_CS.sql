insert into catalog_sales select
 d1.d_date_sk cs_sold_date_sk
,t_time_sk cs_sold_time_sk
,d2.d_date_sk cs_ship_date_sk
,c1.c_customer_sk cs_bill_customer_sk
,c1.c_current_cdemo_sk cs_bill_cdemo_sk
,c1.c_current_hdemo_sk cs_bill_hdemo_sk
,c1.c_current_addr_sk cs_bill_addr_sk
,c2.c_customer_sk cs_ship_customer_sk
,c2.c_current_cdemo_sk cs_ship_cdemo_sk
,c2.c_current_hdemo_sk cs_ship_hdemo_sk
,c2.c_current_addr_sk cs_ship_addr_sk
,cc_call_center_sk cs_call_center_sk
,cp_catalog_page_sk cs_catalog_page_sk
,sm_ship_mode_sk cs_ship_mode_sk
,w_warehouse_sk cs_warehouse_sk
,i_item_sk cs_item_sk
,p_promo_sk cs_promo_sk
,cord_order_id cs_order_number
,clin_quantity cs_quantity
,i_wholesale_cost cs_wholesale_cost
,i_current_price cs_list_price
,clin_sales_price cs_sales_price
,cast((i_current_price-clin_sales_price)*clin_quantity as decimal(7,2)) cs_ext_discount_amt
,cast(clin_sales_price * clin_quantity as decimal(7,2)) cs_ext_sales_price
,cast(i_wholesale_cost * clin_quantity as decimal(7,2)) cs_ext_wholesale_cost
,cast(i_current_price * clin_quantity as decimal(7,2)) CS_EXT_LIST_PRICE
,cast(i_current_price * cc_tax_percentage as decimal(7,2)) CS_EXT_TAX
,clin_coupon_amt cs_coupon_amt
,cast(clin_ship_cost * clin_quantity as decimal(7,2)) CS_EXT_SHIP_COST
,cast((clin_sales_price * clin_quantity)-clin_coupon_amt as decimal(7,2)) cs_net_paid
,cast(((clin_sales_price * clin_quantity)-clin_coupon_amt)*(1+cc_tax_percentage) as decimal(7,2)) cs_net_paid_inc_tax
,cast((clin_sales_price * clin_quantity)-clin_coupon_amt + (clin_ship_cost * clin_quantity) as decimal(7,2)) CS_NET_PAID_INC_SHIP
,cast((clin_sales_price * clin_quantity)-clin_coupon_amt + (clin_ship_cost * clin_quantity)
+ i_current_price * cc_tax_percentage as decimal(7,2)) CS_NET_PAID_INC_SHIP_TAX
,cast(((clin_sales_price * clin_quantity)-clin_coupon_amt)-(clin_quantity*i_wholesale_cost) as decimal(7,2)) cs_net_profit
FROM
s_catalog_order_${ROUND}
LEFT OUTER JOIN date_dim d1 ON
(cast(cord_order_date as date) = d1.d_date)
LEFT OUTER JOIN time_dim ON (cord_order_time = t_time)
LEFT OUTER JOIN customer c1 ON (cord_bill_customer_id = c1.c_customer_id)
LEFT OUTER JOIN customer c2 ON (cord_ship_customer_id = c2.c_customer_id)
LEFT OUTER JOIN call_center ON (cord_call_center_id = cc_call_center_id AND cc_rec_end_date IS NULL)
LEFT OUTER JOIN ship_mode ON (cord_ship_mode_id = sm_ship_mode_id)
JOIN s_catalog_order_lineitem_${ROUND} ON (cord_order_id = clin_order_id)
LEFT OUTER JOIN date_dim d2 ON
(cast(clin_ship_date as date) = d2.d_date)
LEFT OUTER JOIN catalog_page ON
(clin_catalog_page_number = cp_catalog_page_number and clin_catalog_number = cp_catalog_number)
LEFT OUTER JOIN warehouse ON (clin_warehouse_id = w_warehouse_id)
LEFT OUTER JOIN item ON (clin_item_id = i_item_id AND i_rec_end_date IS NULL)
LEFT OUTER JOIN promotion ON (clin_promotion_id = p_promo_id);