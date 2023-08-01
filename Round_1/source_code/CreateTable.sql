USE Round1_BI7
GO
CREATE SCHEMA DW
GO
--DimProduct
CREATE TABLE DW.DimProduct(
	product_id				int		IDENTITY(1,1)	NOT NULL,
	product_group			nvarchar(50),
	product_category		nvarchar(50),
	product_type			nvarchar(50),
	product					nvarchar(100),
	product_description		nvarchar(255),
	unit_of_measure			nvarchar(20),
	current_cost			float,
	current_wholesale_price	float,
	current_retail_price	float,
	promo_yn				char(1),
	new_product_yn			char(1)
)

--DimCustomer
CREATE TABLE DW.DimCustomer(
	customer_id				int		IDENTITY(1,1)	NOT NULL,
	home_store				int,
	gender					char(1),
	customer_first_name		nvarchar(50),
	birthdate				datetime,
	customer_email			nvarchar(50),
	customer_since			datetime,
	loyalty_card_number		nvarchar(12)
)

--DimEmployee
CREATE TABLE DW.DimEmployee(
	staff_id				int		IDENTITY(1,1)	NOT NULL,
	first_name				nvarchar(20),
	last_name				nvarchar(20),
	position				nvarchar(20),
	start_date				datetime,
	end_date				datetime
)

--DimStore
CREATE TABLE DW.DimStore(
	store_id				int		IDENTITY(1,1)	NOT NULL,
	store_type				nvarchar(20),
	store_square_feet		int,
	store_address			nvarchar(50),
	store_city				nvarchar(20),
	store_state_province	nvarchar(10),
	store_postal_code		nvarchar(10),
	store_longitude			float,
	store_latitude			float,
	manager					int,
	neighorhood				nvarchar(20)
)

--FactSales
CREATE TABLE DW.FactSales(
	transaction_id			int		IDENTITY(1,1)	NOT NULL,
	transaction_date		datetime,
	transaction_time		time,
	store_id				int,
	staff_id				int,
	customer_id				int,
	product_id				int,
	quantity_sold			int,
	unit_price				float,
	promo_item_yn			char(1)
)

DROP TABLE DW.DimCustomer
DROP TABLE DW.DimEmployee
DROP TABLE DW.DimProduct
DROP TABLE DW.DimStore

DROP TABLE DW.FactSales

TRUNCATE TABLE DW.DimProduct















