use project;


-- join 2 tables
create table Retail as 
select
	Invoice,
    StockCode,
    Description,
    Quantity,
    coalesce(
		str_to_date(InvoiceDate, '%Y-%m-%d %H:%i:%s'),
        str_to_date(InvoiceDate, '%d-%m-%Y')
    ) as InvoiceDate,
    cast(Price as decimal(10, 2)) as Price,
    `Customer ID`,
    Country,
    '2009-2010' AS SourceSheet
from df
union all
select
	Invoice, 
    StockCode, 
    Description, 
    Quantity,
    COALESCE(
        STR_TO_DATE(InvoiceDate, '%Y-%m-%d %H:%i:%s'),
        STR_TO_DATE(InvoiceDate, '%d-%m-%Y')
    ) AS InvoiceDate,
    CAST(Price AS DECIMAL(10,2)) AS Price,
    `Customer ID`, 
    Country, 
    '2010-2011' AS SourceSheet
from df_2;

-- check total and  null values
select count(*) from retail;
select count(*) from retail
where InvoiceDate is NULL;
select count(*) from retail
where Price is NULL;


-- check Customer ID null values
-- 243007 null values
select count(*) from retail
where `Customer ID` is NULL;


-- check 0 and nagative quantity
-- 22950 0 or nagative quantity
select count(*) from retail
where Quantity <= 0;


-- missing description
-- 4382 null values
select count(*) from retail
where Description is NULL;


-- check duplicate values
SELECT Invoice, StockCode, Description, Quantity, InvoiceDate, Price, `Customer ID`, Country,
COUNT(*) AS ExactDupeCount
from retail
GROUP BY Invoice, StockCode, Description, Quantity, InvoiceDate, Price, `Customer ID`, Country
HAVING ExactDupeCount > 2;


-- detele duplicte columns
CREATE TABLE retailCleaned AS
WITH Duplicates AS (
    SELECT 
        Invoice, 
        StockCode, 
        Description, 
        Quantity, 
        InvoiceDate, 
        Price, 
        `Customer ID`, 
        Country, 
        SourceSheet,
        ROW_NUMBER() OVER (
            PARTITION BY Invoice, StockCode, Description, Quantity, InvoiceDate, Price, `Customer ID`, Country, SourceSheet
            ORDER BY (SELECT NULL)
        ) AS RowNum
    FROM retail
)
SELECT 
    Invoice, 
    StockCode, 
    Description, 
    Quantity, 
    InvoiceDate, 
    Price, 
    `Customer ID`, 
    Country, 
    SourceSheet
FROM Duplicates
WHERE RowNum = 1;







select * from retailcleaned

