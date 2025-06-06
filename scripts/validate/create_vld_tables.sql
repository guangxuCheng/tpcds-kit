-- ============================================================
--   Table: store_sales
-- ============================================================
drop table if exists store_sales;
create table store_sales(
    ss_sold_date_sk           bigint,
    ss_sold_time_sk           bigint,
    ss_item_sk                bigint        not null,
    ss_customer_sk            bigint,
    ss_cdemo_sk               bigint,
    ss_hdemo_sk               bigint,
    ss_addr_sk                bigint,
    ss_store_sk               bigint,
    ss_promo_sk               bigint,
    ss_ticket_number          bigint        not null,
    ss_quantity               int,
    ss_wholesale_cost         decimal(7,2),
    ss_list_price             decimal(7,2),
    ss_sales_price            decimal(7,2),
    ss_ext_discount_amt       decimal(7,2),
    ss_ext_sales_price        decimal(7,2),
    ss_ext_wholesale_cost     decimal(7,2),
    ss_ext_list_price         decimal(7,2),
    ss_ext_tax                decimal(7,2),
    ss_coupon_amt             decimal(7,2),
    ss_net_paid               decimal(7,2),
    ss_net_paid_inc_tax       decimal(7,2),
    ss_net_profit             decimal(7,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n"
)
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/store_sales';

-- ============================================================
--   Table: store_returns
-- ============================================================
drop table if exists store_returns;
create table store_returns(
    sr_returned_date_sk       bigint,
    sr_return_time_sk         bigint,
    sr_item_sk                bigint        not null,
    sr_customer_sk            bigint,
    sr_cdemo_sk               bigint,
    sr_hdemo_sk               bigint,
    sr_addr_sk                bigint,
    sr_store_sk               bigint,
    sr_reason_sk              bigint,
    sr_ticket_number          bigint        not null,
    sr_return_quantity        int,
    sr_return_amt             decimal(7,2),
    sr_return_tax             decimal(7,2),
    sr_return_amt_inc_tax     decimal(7,2),
    sr_fee                    decimal(7,2),
    sr_return_ship_cost       decimal(7,2),
    sr_refunded_cash          decimal(7,2),
    sr_reversed_charge        decimal(7,2),
    sr_store_credit           decimal(7,2),
    sr_net_loss               decimal(7,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/store_returns';

-- ============================================================
--   Table: web_sales
-- ============================================================
drop table if exists web_sales;
create table web_sales(
    ws_sold_date_sk           bigint,
    ws_sold_time_sk           bigint,
    ws_ship_date_sk           bigint,
    ws_item_sk                bigint        not null,
    ws_bill_customer_sk       bigint,
    ws_bill_cdemo_sk          bigint,
    ws_bill_hdemo_sk          bigint,
    ws_bill_addr_sk           bigint,
    ws_ship_customer_sk       bigint,
    ws_ship_cdemo_sk          bigint,
    ws_ship_hdemo_sk          bigint,
    ws_ship_addr_sk           bigint,
    ws_web_page_sk            bigint,
    ws_web_site_sk            bigint,
    ws_ship_mode_sk           bigint,
    ws_warehouse_sk           bigint,
    ws_promo_sk               bigint,
    ws_order_number           bigint        not null,
    ws_quantity               int,
    ws_wholesale_cost         decimal(7,2),
    ws_list_price             decimal(7,2),
    ws_sales_price            decimal(7,2),
    ws_ext_discount_amt       decimal(7,2),
    ws_ext_sales_price        decimal(7,2),
    ws_ext_wholesale_cost     decimal(7,2),
    ws_ext_list_price         decimal(7,2),
    ws_ext_tax                decimal(7,2),
    ws_coupon_amt             decimal(7,2),
    ws_ext_ship_cost          decimal(7,2),
    ws_net_paid               decimal(7,2),
    ws_net_paid_inc_tax       decimal(7,2),
    ws_net_paid_inc_ship      decimal(7,2),
    ws_net_paid_inc_ship_tax  decimal(7,2),
    ws_net_profit             decimal(7,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
    lineSep="\n"
)
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/web_sales';

-- ============================================================
--   Table: web_returns
-- ============================================================
drop table if exists web_returns;
create table web_returns(
    wr_returned_date_sk       bigint,
    wr_returned_time_sk       bigint,
    wr_item_sk                bigint        not null,
    wr_refunded_customer_sk   bigint,
    wr_refunded_cdemo_sk      bigint,
    wr_refunded_hdemo_sk      bigint,
    wr_refunded_addr_sk       bigint,
    wr_returning_customer_sk  bigint,
    wr_returning_cdemo_sk     bigint,
    wr_returning_hdemo_sk     bigint,
    wr_returning_addr_sk      bigint,
    wr_web_page_sk            bigint,
    wr_reason_sk              bigint,
    wr_order_number           bigint        not null,
    wr_return_quantity        int,
    wr_return_amt             decimal(7,2),
    wr_return_tax             decimal(7,2),
    wr_return_amt_inc_tax     decimal(7,2),
    wr_fee                    decimal(7,2),
    wr_return_ship_cost       decimal(7,2),
    wr_refunded_cash          decimal(7,2),
    wr_reversed_charge        decimal(7,2),
    wr_account_credit         decimal(7,2),
    wr_net_loss               decimal(7,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="
"
)
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/web_returns';

-- ============================================================
--   Table: catalog_sales
-- ============================================================
drop table if exists catalog_sales;
create table catalog_sales(
    cs_sold_date_sk           bigint,
    cs_sold_time_sk           bigint,
    cs_ship_date_sk           bigint,
    cs_bill_customer_sk       bigint,
    cs_bill_cdemo_sk          bigint,
    cs_bill_hdemo_sk          bigint,
    cs_bill_addr_sk           bigint,
    cs_ship_customer_sk       bigint,
    cs_ship_cdemo_sk          bigint,
    cs_ship_hdemo_sk          bigint,
    cs_ship_addr_sk           bigint,
    cs_call_center_sk         bigint,
    cs_catalog_page_sk        bigint,
    cs_ship_mode_sk           bigint,
    cs_warehouse_sk           bigint,
    cs_item_sk                bigint        not null,
    cs_promo_sk               bigint,
    cs_order_number           bigint        not null,
    cs_quantity               int,
    cs_wholesale_cost         decimal(7,2),
    cs_list_price             decimal(7,2),
    cs_sales_price            decimal(7,2),
    cs_ext_discount_amt       decimal(7,2),
    cs_ext_sales_price        decimal(7,2),
    cs_ext_wholesale_cost     decimal(7,2),
    cs_ext_list_price         decimal(7,2),
    cs_ext_tax                decimal(7,2),
    cs_coupon_amt             decimal(7,2),
    cs_ext_ship_cost          decimal(7,2),
    cs_net_paid               decimal(7,2),
    cs_net_paid_inc_tax       decimal(7,2),
    cs_net_paid_inc_ship      decimal(7,2),
    cs_net_paid_inc_ship_tax  decimal(7,2),
    cs_net_profit             decimal(7,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/catalog_sales';

-- ============================================================
--   Table: catalog_returns
-- ============================================================
drop table if exists catalog_returns;
create table catalog_returns(
    cr_returned_date_sk       bigint,
    cr_returned_time_sk       bigint,
    cr_item_sk                bigint        not null,
    cr_refunded_customer_sk   bigint,
    cr_refunded_cdemo_sk      bigint,
    cr_refunded_hdemo_sk      bigint,
    cr_refunded_addr_sk       bigint,
    cr_returning_customer_sk  bigint,
    cr_returning_cdemo_sk     bigint,
    cr_returning_hdemo_sk     bigint,
    cr_returning_addr_sk      bigint,
    cr_call_center_sk         bigint,
    cr_catalog_page_sk        bigint,
    cr_ship_mode_sk           bigint,
    cr_warehouse_sk           bigint,
    cr_reason_sk              bigint,
    cr_order_number           bigint        not null,
    cr_return_quantity        int,
    cr_return_amount          decimal(7,2),
    cr_return_tax             decimal(7,2),
    cr_return_amt_inc_tax     decimal(7,2),
    cr_fee                    decimal(7,2),
    cr_return_ship_cost       decimal(7,2),
    cr_refunded_cash          decimal(7,2),
    cr_reversed_charge        decimal(7,2),
    cr_store_credit           decimal(7,2),
    cr_net_loss               decimal(7,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/catalog_returns';

-- ============================================================
--   Table: inventory
-- ============================================================
drop table if exists inventory;
create table inventory(
    lnum		              bigint,
    inv_date_sk               bigint        not null,
    inv_item_sk               bigint        not null,
    inv_warehouse_sk          bigint        not null,
    inv_quantity_on_hand      int
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/inventory';

-- ============================================================
--   Table: store
-- ============================================================
drop table if exists store;
create table store(
    lnum		              bigint,
    s_store_sk                bigint        not null,
    s_store_id                char(16)      not null,
    s_rec_start_date          date,
    s_rec_end_date            date,
    s_closed_date_sk          bigint,
    s_store_name              varchar(50),
    s_number_employees        int,
    s_floor_space             int,
    s_hours                   char(20),
    s_manager                 varchar(40),
    s_market_id               int,
    s_geography_class         varchar(100),
    s_market_desc             varchar(100),
    s_market_manager          varchar(40),
    s_division_id             int,
    s_division_name           varchar(50),
    s_company_id              int,
    s_company_name            varchar(50),
    s_street_number           varchar(10),
    s_street_name             varchar(60),
    s_street_type             char(15),
    s_suite_number            char(10),
    s_city                    varchar(60),
    s_county                  varchar(30),
    s_state                   char(2),
    s_zip                     char(10),
    s_country                 varchar(20),
    s_gmt_offset              decimal(5,2),
    s_tax_precentage          decimal(5,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/store';

-- ============================================================
--   Table: call_center
-- ============================================================
drop table if exists call_center;
create table call_center(
    lnum		              bigint,
    cc_call_center_sk         bigint        not null,
    cc_call_center_id         char(16)      not null,
    cc_rec_start_date         date,
    cc_rec_end_date           date,
    cc_closed_date_sk         bigint,
    cc_open_date_sk           bigint,
    cc_name                   varchar(50),
    cc_class                  varchar(50),
    cc_employees              int,
    cc_sq_ft                  int,
    cc_hours                  char(20),
    cc_manager                varchar(40),
    cc_mkt_id                 int,
    cc_mkt_class              char(50),
    cc_mkt_desc               varchar(100),
    cc_market_manager         varchar(40),
    cc_division               int,
    cc_division_name          varchar(50),
    cc_company                int,
    cc_company_name           char(50),
    cc_street_number          char(10),
    cc_street_name            varchar(60),
    cc_street_type            char(15),
    cc_suite_number           char(10),
    cc_city                   varchar(60),
    cc_county                 varchar(30),
    cc_state                  char(2),
    cc_zip                    char(10),
    cc_country                varchar(20),
    cc_gmt_offset             decimal(5,2),
    cc_tax_percentage         decimal(5,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/call_center';

-- ============================================================
--   Table: catalog_page
-- ============================================================
drop table if exists catalog_page;
create table catalog_page(
    lnum		              bigint,
    cp_catalog_page_sk        bigint        not null,
    cp_catalog_page_id        char(16)      not null,
    cp_start_date_sk          bigint,
    cp_end_date_sk            bigint,
    cp_department             varchar(50),
    cp_catalog_number         int,
    cp_catalog_page_number    int,
    cp_description            varchar(100),
    cp_type                   varchar(100)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/catalog_page';

-- ============================================================
--   Table: web_site
-- ============================================================
drop table if exists web_site;
create table web_site(
    lnum		              bigint,
    web_site_sk               bigint        not null,
    web_site_id               char(16)      not null,
    web_rec_start_date        date,
    web_rec_end_date          date,
    web_name                  varchar(50),
    web_open_date_sk          bigint,
    web_close_date_sk         bigint,
    web_class                 varchar(50),
    web_manager               varchar(40),
    web_mkt_id                int,
    web_mkt_class             varchar(50),
    web_mkt_desc              varchar(100),
    web_market_manager        varchar(40),
    web_company_id            int,
    web_company_name          char(50),
    web_street_number         char(10),
    web_street_name           varchar(60),
    web_street_type           char(15),
    web_suite_number          char(10),
    web_city                  varchar(60),
    web_county                varchar(30),
    web_state                 char(2),
    web_zip                   char(10),
    web_country               varchar(20),
    web_gmt_offset            decimal(5,2),
    web_tax_percentage        decimal(5,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/web_site';

-- ============================================================
--   Table: web_page
-- ============================================================
drop table if exists web_page;
create table web_page(
    lnum		              bigint,
    wp_web_page_sk            bigint        not null,
    wp_web_page_id            char(16)      not null,
    wp_rec_start_date         date,
    wp_rec_end_date           date,
    wp_creation_date_sk       bigint,
    wp_access_date_sk         bigint,
    wp_autogen_flag           char(1),
    wp_customer_sk            bigint,
    wp_url                    varchar(100),
    wp_type                   char(50),
    wp_char_count             int,
    wp_link_count             int,
    wp_image_count            int,
    wp_max_ad_count           int
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/web_page';

-- ============================================================
--   Table: warehouse
-- ============================================================
drop table if exists warehouse;
create table warehouse(
    lnum		              bigint,
    w_warehouse_sk            bigint        not null,
    w_warehouse_id            char(16)      not null,
    w_warehouse_name          varchar(20),
    w_warehouse_sq_ft         int,
    w_street_number           char(10),
    w_street_name             varchar(60),
    w_street_type             char(15),
    w_suite_number            char(10),
    w_city                    varchar(60),
    w_county                  varchar(30),
    w_state                   char(2),
    w_zip                     char(10),
    w_country                 varchar(20),
    w_gmt_offset              decimal(5,2)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/warehouse';

-- ============================================================
--   Table: customer
-- ============================================================
drop table if exists customer;
create table customer(
    lnum		              bigint,
    c_customer_sk             bigint        not null,
    c_customer_id             char(16)      not null,
    c_current_cdemo_sk        bigint,
    c_current_hdemo_sk        bigint,
    c_current_addr_sk         bigint,
    c_first_shipto_date_sk    bigint,
    c_first_sales_date_sk     bigint,
    c_salutation              char(10),
    c_first_name              char(20),
    c_last_name               char(30),
    c_preferred_cust_flag     char(1),
    c_birth_day               int,
    c_birth_month             int,
    c_birth_year              int,
    c_birth_country           varchar(20),
    c_login                   char(13),
    c_email_address           char(50),
    c_last_review_date_sk     bigint
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/customer';

-- ============================================================
--   Table: customer_address
-- ============================================================
drop table if exists customer_address;
create table customer_address(
    lnum		              bigint,
    ca_address_sk             bigint        not null,
    ca_address_id             char(16)      not null,
    ca_street_number          char(10),
    ca_street_name            varchar(60),
    ca_street_type            char(15),
    ca_suite_number           char(10),
    ca_city                   varchar(60),
    ca_county                 varchar(30),
    ca_state                  char(2),
    ca_zip                    char(10),
    ca_country                varchar(20),
    ca_gmt_offset             decimal(5,2),
    ca_location_type          char(20)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/customer_address';

-- ============================================================
--   Table: customer_demographics
-- ============================================================
drop table if exists customer_demographics;
create table customer_demographics(
    lnum		              bigint,
    cd_demo_sk                bigint        not null,
    cd_gender                 char(1),
    cd_marital_status         char(1),
    cd_education_status       char(20),
    cd_purchase_estimate      int,
    cd_credit_rating          char(10),
    cd_dep_count              int,
    cd_dep_employed_count     int,
    cd_dep_college_count      int
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/customer_demographics';

-- ============================================================
--   Table: date_dim
-- ============================================================
drop table if exists date_dim;
create table date_dim(
    lnum		              bigint,
    d_date_sk                 bigint        not null,
    d_date_id                 char(16)      not null,
    d_date                    date,
    d_month_seq               int,
    d_week_seq                int,
    d_quarter_seq             int,
    d_year                    int,
    d_dow                     int,
    d_moy                     int,
    d_dom                     int,
    d_qoy                     int,
    d_fy_year                 int,
    d_fy_quarter_seq          int,
    d_fy_week_seq             int,
    d_day_name                char(9),
    d_quarter_name            char(6),
    d_holiday                 char(1),
    d_weekend                 char(1),
    d_following_holiday       char(1),
    d_first_dom               int,
    d_last_dom                int,
    d_same_day_ly             int,
    d_same_day_lq             int,
    d_current_day             char(1),
    d_current_week            char(1),
    d_current_month           char(1),
    d_current_quarter         char(1),
    d_current_year            char(1)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/date_dim';

-- ============================================================
--   Table: household_demographics
-- ============================================================
drop table if exists household_demographics;
create table household_demographics
(
    lnum		              bigint,
    hd_demo_sk                bigint        not null,
    hd_income_band_sk         bigint,
    hd_buy_potential          char(15),
    hd_dep_count              int,
    hd_vehicle_count          int
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/household_demographics';

-- ============================================================
--   Table: item
-- ============================================================
drop table if exists item;
create table item(
    lnum		              bigint,
    i_item_sk                 bigint        not null,
    i_item_id                 char(16)      not null,
    i_rec_start_date          date,
    i_rec_end_date            date,
    i_item_desc               varchar(200),
    i_current_price           decimal(7,2),
    i_wholesale_cost          decimal(7,2),
    i_brand_id                int,
    i_brand                   char(50),
    i_class_id                int,
    i_class                   char(50),
    i_category_id             int,
    i_category                char(50),
    i_manufact_id             int,
    i_manufact                char(50),
    i_size                    char(20),
    i_formulation             char(20),
    i_color                   char(20),
    i_units                   char(10),
    i_container               char(10),
    i_manager_id              int,
    i_product_name            char(50)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/item';

-- ============================================================
--   Table: income_band
-- ============================================================
drop table if exists income_band;
create table income_band
(
    lnum		              bigint,
    ib_income_band_sk         bigint        not null,
    ib_lower_bound            int,
    ib_upper_bound            int
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/income_band';

-- ============================================================
--   Table: promotion
-- ============================================================
drop table if exists promotion;
create table promotion(
    lnum		              bigint,
    p_promo_sk                bigint        not null,
    p_promo_id                char(16)      not null,
    p_start_date_sk           bigint,
    p_end_date_sk             bigint,
    p_item_sk                 bigint,
    p_cost                    decimal(15,2),
    p_response_target         int,
    p_promo_name              char(50),
    p_channel_dmail           char(1),
    p_channel_email           char(1),
    p_channel_catalog         char(1),
    p_channel_tv              char(1),
    p_channel_radio           char(1),
    p_channel_press           char(1),
    p_channel_event           char(1),
    p_channel_demo            char(1),
    p_channel_details         varchar(100),
    p_purpose                 char(15),
    p_discount_active         char(1)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/promotion';

-- ============================================================
--   Table: reason
-- ============================================================
drop table if exists reason;
create table reason(
    lnum		              bigint,
    r_reason_sk               bigint        not null,
    r_reason_id               char(6)       not null,
    r_reason_desc             char(100)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/reason';

-- ============================================================
--   Table: ship_mode
-- ============================================================
drop table if exists ship_mode;
create table ship_mode(
    lnum		              bigint,
    sm_ship_mode_sk           bigint        not null,
    sm_ship_mode_id           char(16)      not null,
    sm_type                   char(30),
    sm_code                   char(10),
    sm_carrier                char(20),
    sm_contract               char(20)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/ship_mode';

-- ============================================================
--   Table: time_dim
-- ============================================================
drop table if exists time_dim;
create table time_dim(
    lnum		              bigint,
    t_time_sk                 bigint        not null,
    t_time_id                 char(16)      not null,
    t_time                    int,
    t_hour                    int,
    t_minute                  int,
    t_second                  int,
    t_am_pm                   char(2),
    t_shift                   char(20),
    t_sub_shift               char(20),
    t_meal_time               char(20)
) USING csv
OPTIONS (
  sep="|",
  header="false",
  emptyValue="",
  charset="iso-8859-1",
  dateFormat="yyyy-MM-dd",
  timestampFormat="yyyy-MM-dd HH:mm:ss[.SSS]",
  mode="PERMISSIVE",
  multiLine="false",
  locale="en-US",
  lineSep="\n")
location  'dbfs:/mnt/aws-tpcds-audit//tpcds_100000_validation/time_dim';