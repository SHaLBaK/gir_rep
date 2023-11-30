CREATE DATABASE holy_grounds;	
-- Create New Database

CREATE TABLE coffee_inventory (
	sku_id varchar(255),		-- varchar the instructions said no need for constraints.
	coffee_name varchar(255),	-- enough for any name. varchar(50) would probably be enough
	roast varchar(6)  check (roast in ('Dark' , 'Medium', 'Light')), -- check if the inserted data is from the list provided.
	pounds_on_hand decimal(12,2), -- a 2 decimal numbers is accurate enough for pounds
	organic boolean,			-- true indicates the product is organic
	low_acid boolean,			-- true indicates the product is low acid
	price money					-- because there is currency involved.
);								--end of coffee inventory table statment.


CREATE TABLE sales_transaction (
	receipt_id bigserial,		--bigserial the instructions said no need for constraints.
	sale_amount money,			-- because there is currency involved.
	sale_type varchar(8)  check (sale_type in ('Online' , 'In-Store')), -- check if the inserted data is from the list provided.
	transaction_date timestamptz --its a monetary transaction we need time, date and timezone.
);								--end of sales_transactions inventory table statment.


CREATE TABLE store (
	store_id integer GENERATED ALWAYS AS IDENTITY, --an ineger serves as an ID.
	store_manager varchar (255),-- this should give enough space for first and last name with a space.
	store_phone_number char(14),--following the format provided we have 14 characters (10 digits, 2 brackets,1 space and 1 dash - )
	store_address varchar(255),	--go big. 
	city varchar(255),			--go big. varchar(50) would probably be enough.
	zip_code char(5),			--althogh it contains digits there will be no mathmatical operations on it.
	state_abbrev char(2)		--as per instructions only twoi characters.
);								--end of store table statment.


