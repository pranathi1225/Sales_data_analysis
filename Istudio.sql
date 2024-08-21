create database retail;
use retail;
CREATE TABLE Sales_Data_Transactions ( customer_id VARCHAR(255), trans_date varchar(255), tran_amount INT);
CREATE TABLE Sales_Data_Response ( customer_id VARCHAR(255), response INT);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Response.csv'
INTO TABLE Sales_Data_Response
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transactions
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE CUSTOMER_ID='CS5295';

create index idx_id on Sales_Data_Transactions(customer_id);

EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE CUSTOMER_ID='CS5295';




