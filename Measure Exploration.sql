/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

-- Find the Total Sales
SELECT SUM(sales_amount) AS Total_Sales from gold.fact_sales

-- Find how many items are sold
SELECT SUM(quantity) AS Total_quantity from gold.fact_sales

-- Find the average selling price
SELECT AVG(price) AS Avg_Price FROM gold.fact_sales

-- Find the Total number of Orders
SELECT COUNT(order_number) AS Total_Orders FROM gold.fact_sales
SELECT COUNT(DISTINCT order_number) AS Total_Orders FROM gold.fact_sales

-- Find the total number of products
SELECT COUNT(product_name) AS Total_Orders FROM gold.dim_products

-- Find the total number of customers
SELECT COUNT(customer_key) AS Total_Orders FROM gold.dim_customers

-- Find the total number of customers that has placed an order
SELECT COUNT(DISTINCT customer_key) AS Total_Orders FROM gold.fact_sales

-- Generate a Report that shows all key metrics of the business
SELECT 'Total Sales' AS Measure_Name, SUM(sales_amount) AS Measure_Value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity' AS Measure_Name, SUM(quantity) AS Measure_Value FROM gold.fact_sales
UNION ALL
SELECT 'Average Price' AS Measure_Name, AVG(price) AS Measure_Value FROM gold.fact_sales
UNION ALL
SELECT 'Total Orders' AS Measure_Name, COUNT(DISTINCT order_number) AS Measure_Value FROM gold.fact_sales
UNION ALL
SELECT 'Total Products' AS Measure_Name, COUNT(DISTINCT product_name) AS Measure_Value FROM gold.dim_products
UNION ALL
SELECT 'Total Customer' AS Measure_Name, COUNT(DISTINCT customer_key) AS Measure_Value FROM gold.dim_customers

