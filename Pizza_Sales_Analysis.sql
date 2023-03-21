USE PizzaSales

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Summary

SELECT COUNT (Order_id) AS Total_Orders, COUNT (DISTINCT pizza_name) AS Number_of_pizza_types, 
		SUM (Quantity) AS Total_Quantity_Sold, ROUND (SUM (Total_price),2) AS Total_revenue,ROUND (AVG (Total_price),2) AS Average_revenue
FROM Sales

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Orders by time of day

SELECT DATEPART(HOUR, order_time) AS Time_of_Day, COUNT (Order_id) AS Number_of_Orders, 
		SUM (Quantity) AS Number_of_Pizzas,ROUND (SUM (Total_price),2) AS Total_revenue
FROM sales
GROUP BY DATEPART (HOUR, order_time)
ORDER BY 2 DESC

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Orders by day of week

SELECT DATENAME (WEEKDAY, order_date) AS Day_of_Week, COUNT (Order_id) AS Number_of_Orders,
		SUM (Quantity) AS Number_of_Pizzas, ROUND (SUM (Total_price),2) AS Total_revenue
FROM sales
GROUP BY DATENAME (WEEKDAY, order_date)
ORDER BY 2 DESC

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Orders per Pizza  

SELECT Pizza_name, COUNT (Order_id) AS Number_of_Orders,SUM (Quantity) AS Number_of_Pizzas,ROUND (SUM (Total_price),2) AS Total_revenue
FROM Sales
GROUP BY pizza_name
ORDER BY 2 DESC

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Orders by Month

SELECT DATENAME(MONTH, order_date) AS Month, COUNT (Order_id) AS Number_of_Orders,
		SUM (Quantity) AS Number_of_Pizzas,ROUND (SUM (Total_price),2) AS Total_revenue
FROM sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY 2 DESC


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Order Contribution per Pizza size   

SELECT pizza_size, COUNT (Order_id) AS Number_of_Orders,SUM (Quantity) AS Number_of_Pizzas,
		ROUND (SUM (Total_price),2) AS Total_revenue
FROM Sales
GROUP BY pizza_size
ORDER BY 2 DESC

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Orders per Pizza category   

SELECT Pizza_category, COUNT (Order_id) AS Number_of_Orders,SUM (Quantity) AS Number_of_Pizzas,
		ROUND (SUM (Total_price),2) AS Total_revenue
FROM Sales
GROUP BY Pizza_category
ORDER BY 2 DESC
 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Revenue performance MOM

SELECT DATENAME(MONTH, order_date) AS Month,ROUND (SUM (Total_price),2) AS Total_revenue
FROM Sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY 2 DESC

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Revenue Vs Orders MOM

SELECT DATENAME(MONTH, order_date) AS Month,COUNT (Order_id) AS Number_of_Orders,ROUND (SUM (Total_price),2) AS Total_revenue
FROM Sales
GROUP BY DATENAME(MONTH, order_date)

