------------------------------------------------------------
---##### K20-NTS: SCRIPT CREATE DIM // FACT TABLES ######---
------------------------------------------------------------

---#### SCHEMA:DW ####---
CREATE SCHEMA DW
-------------------------

----##### DIM TABLE #####----

----## DimCustomer ##----
CREATE TABLE DW.DimCustomer (
    [customer_key]			int			identity(1,1)	NOT NULL,
    [customer_id]			int							NOT NULL,
    [home_store]			varchar(50),
    [gender]				varchar(50),
    [customer_first-name]	varchar(50),
    [birthdate]				varchar(50),
    [customer_email]		varchar(50),
    [customer_since]		varchar(50),
    [loyalty_card_number]	varchar(50)
)
-------------------------

----## DimProduct ##----
CREATE TABLE DW.DimProduct (
    [product_key]				int		identity(1,1)	NOT NULL,
    [product_id]				int						NOT NULL,
    [product_group]				varchar(50),
    [product_category]			varchar(50),
    [product_type]				varchar(50),
    [product]					varchar(50),
    [product_description]		varchar(255),
    [unit_of_measure]			varchar(50),
    [current_cost]				float,
    [current_wholesale_price]	float,
    [current_retail_price]		float,
    [tax_exempt_yn]				varchar(50),
    [promo_yn]					varchar(50),
    [new_product_yn]			varchar(50)
)
-------------------------

----## DimStore ##----
CREATE TABLE DW.DimStore (
    [store_key]					int		identity(1,1)	NOT NULL,
    [store_id]					int						NOT NULL,
    [store_type]				varchar(50),
    [store_square_feet]			varchar(50),
    [store_address]				varchar(50),
    [store_city]				varchar(50),
    [store_state_province]		varchar(50),
    [store_postal_code]			varchar(50),
    [store_longitude]			float,
    [store_latitude]			float,
    [manager]					int,
    [neighorhood]				varchar(50)
)
-------------------------

----## DimEmployee ##----
CREATE TABLE DW.DimEmployee (
    [staff_key]					int identity(1,1)		NOT NULL,
    [staff_id]					int						NOT NULL,
    [first_name]				varchar(50),
    [last_name]					varchar(50),
    [position]					varchar(50),
    [start_date]				datetime,
    [end_date]					datetime
)
-------------------------

----##### FACT TABLE #####----

----## FactSales ##----
CREATE TABLE DW.FactSales(
	[transaction_id]			int						NOT NULL,
	[DateKey]					int						NOT NULL,
	[product_key]				int						NOT NULL,
	[store_key]					int						NOT NULL,
	[staff_key]					int						NOT NULL,
	[customer_key]				int						NOT NULL,
	[transaction_date]			datetime				NOT NULL,
	[transaction_time]			time,
	[quantity_sold]				int,
	[unit_price]				float,
	[promo_item_yn]				varchar(50)
)
-------------------------