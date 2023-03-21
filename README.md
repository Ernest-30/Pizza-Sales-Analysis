# Pizza-Sales-Analysis

# Introduction

Things are going OK here at Plato's, but there's room for improvement. They've been collecting transactional data for the past year, but really haven't been able to put it to good use. Hoping we can analyze the data and put together a report to help us find opportunities to drive more sales and work more efficiently.

# About DataSet

This pizza sales dataset make up 12 relevant features:

order_id: Unique identifier for each order placed by a table
order_details_id: Unique identifier for each pizza placed within each order (pizzas of the same type and size are kept in the same row, and the quantity increases)
pizza_id: Unique key identifier that ties the pizza ordered to its details, like size and price
quantity: Quantity ordered for each pizza of the same type and size
order_date: Date the order was placed (entered into the system prior to cooking & serving)
order_time: Time the order was placed (entered into the system prior to cooking & serving)
unit_price: Price of the pizza in USD
total_price: unit_price * quantity
pizza_size: Size of the pizza (Small, Medium, Large, X Large, or XX Large)
pizza_type: Unique key identifier that ties the pizza ordered to its details, like size and price
pizza_ingredients: ingredients used in the pizza as shown in the menu (they all include Mozzarella Cheese, even if not specified; and they all include Tomato Sauce, unless another sauce is specified)
pizza_name: Name of the pizza as shown in the menu

# Business Tasks

1. What days and times do we tend to be busiest?
2. How many pizzas are we making during peak periods?
3. What are our best and worst-selling pizzas?
4. What's our average Revenue?
5. What is our monthly order performance?
6. What is the order performance of our various pizza sizes?
7. Which of our Pizza Category is the most in demand?
8. What is our monthly revenue performance?
9. Provide a quick visualization for the Month on Month breakdown of our Revenue vs Orders

# Analysis

Analysis was done on SQL and visualized on Power BI. I chose to use SQL for the analysis because With SQL, you can analyze small and big datasets, investigate problems and generate sales reports faster. I uploaded the dataset first on SQL Server where I did all the analysis before visualizing it on Power BI.

This is the full [Analysis](https://github.com/Ernest-30/Pizza-Sales-Analysis/blob/main/Pizza_Sales_Analysis.sql)

# Findings

Year considered - 2015

Total_Orders - 48,620	

Number_of_pizza_types - 32	

Total_Quantity_Sold	- 49,574

Total_revenue - $817,860.05	

Average_revenue - $16.82


1. The busiest time of the day is between 12pm and 1pm which is Lunch period. For 12pm, a total of 6,543 orders was received, 6,776 quantites of Pizzas were made and revenue generated was $111,877.9 while for 1pm, a total of 6,203 orders was received, 6,413 quantities of Pizza made and revenue generated was $106,065.7.

![image](https://user-images.githubusercontent.com/123366282/226739580-1576c208-7c30-4aec-bbd0-c1b8d8517c40.png)


2. The busiest days are Fridays and Saturdays (Beginning of the weekend). With Fridays having a total of 8,106 orders, 8,242 quantities of pizzas made, and revenue generation of $136,073.9. While on Saturdays, orders received was 7,355, with a total of 7,493 pizzas made and revenue generation of $123,182.4.

![image](https://user-images.githubusercontent.com/123366282/226744064-93dcce67-19a0-4c77-abba-48ca3f012165.png)


3. Our overall best selling pizza is The Classic Deluxe Pizza. It was ordered 2,416 times, a total of 2,453 quanties was sold and it generated revenue of $38,180.5. The worst selling pizza is The Brie Carre Pizza	with a total of just 480 orders, 490 quantities made and revenue of	$11,588.5.


4. July is the top performing month with a total of 4,301 orders, 4,392 pizzas sold and revenue generation of $72,557.9. The least performing month is October with	3,797 orders, 3,883 quantities of pizza sold and revenue generation of $64,027.6.

![image](https://user-images.githubusercontent.com/123366282/226751475-8d7a1b6b-e587-4a80-b71d-5bc0783906c8.png)


5. The highest sold pizza size is the Large Size with a total of 18,526 orders placed for it,	18,956 quantites sold and revenue generation of $375,318.7, the least sold pizza size is the XXL with just 28 orders, 28 quantities sold and $1,006.6 revenue generated.


![image](https://user-images.githubusercontent.com/123366282/226752548-a707a388-a77a-46ee-b244-0be33d21d858.png)


6. The pizza category which is most in demand is the Classic	with 14,579 orders placed for it, 14,888 quantities sold and	$22,0053.1 revenue generated.  

![image](https://user-images.githubusercontent.com/123366282/226753964-18c0aec4-645d-4bdb-886b-e3a8ae4609a0.png)


7. Our best month in terms of Revenue is July with a total of $72,557.9

![image](https://user-images.githubusercontent.com/123366282/226754466-248bf44b-8433-4e0f-bb6a-1ad14709fae4.png)


8. Quick visualization for the Month on Month breakdown of our revenue vs orders;


![image](https://user-images.githubusercontent.com/123366282/226755531-74e1836e-66ae-4444-95b5-00ae8bcfa163.png)


# Visualization

Please click [here](https://github.com/Ernest-30/Pizza-Sales-Analysis/blob/main/Pizza%20Sales%20Dashboard.pbix) to download the full Power BI dashboard. 

![image](https://user-images.githubusercontent.com/123366282/226760738-b36c8ea4-7df3-4d80-8ed6-08b20238582e.png)

# Conclusion
Pizza orders and revenue maintains an upward trajectory from the beginning of the week Sunday and peaks on Friday before it starts dropping, this means most people prefer to eat pizza towards and during the weekend. Most people prefer to have the Pepperoni pizza for lunch on Fridays. It is advisable to make available tables and chairs to be able to accomodate the influx of the weekend, we can also explore the option of delivery services. The Ingrdients for  Pepperoni pizza should be made readily available and in large quantities on or before Fridays. Since more orders are received on Fridays, a discount policy can be introduced every last Friday of the month where a customer gets 1 extra pizza when they buy 3 and above, this will encourage them to buy more. 
