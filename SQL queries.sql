create database pizza_analysis;

use pizza_analysis;

select * from pizza_Sales;

--1. Total Revenue

	SELECT CAST(sum(total_price) AS DECIMAL(10,2)) AS total_revenue
	FROM pizza_sales;

--2. Average Order Value

	SELECT (SUM(total_price)/  COUNT(DISTINCT order_id)) AS average_order_value
	FROM pizza_Sales;

--3. Total Pizzas Sold

	SELECT sum(quantity) AS toal_pizzas_sold
	FROM pizza_Sales;

--4. Total Orders
	
	SELECT COUNT(DISTINCT order_id) AS total_orders
	FROM pizza_sales;

--5. Average Pizzas Per Order
	
	SELECT CAST(ROUND(SUM(quantity),5)/CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS AVG_pizza_per_order
	FROM pizza_Sales;

--B. Daily Trend for Total Orders

	SELECT DATENAME(DW,order_date) AS order_day,COUNT(DISTINCT order_id) AS total_orders
	FROM pizza_sales
	GROUP BY DATENAME(DW,order_date);

--C. Hourly Trend for Orders

	SELECT DATEPART(HOUR,order_time) AS order_hour,COUNT(DISTINCT order_id) AS total_orders
	from pizza_sales
	GROUP BY DATEPART(HOUR,order_time)
	ORDER BY order_hour asc;

--D. % of Sales by Pizza Category

	SELECT pizza_category,ROUND(SUM(total_price),2) AS Revenue,
	ROUND(round(SUM(total_price),2)*100/(SELECT round(SUM(total_price),2) FROM pizza_sales),2) AS Percentage
	FROM pizza_sales
	GROUP BY pizza_category
	ORDER BY REVENUE desc;

--E. % of Sales by Pizza Size

	SELECT pizza_size,ROUND(SUM(total_price),2) AS total_revenue,
	(SUM(total_price)*100/ (SELECT ROUND(SUM(total_price),2) FROM pizza_sales) ) AS percentage
	FROM pizza_sales
	GROUP BY pizza_size
	ORDER BY pizza_size;

--F. Total Pizzas Sold by Pizza Category

	SELECT pizza_category,SUM(quantity) AS pizza_sold
	FROM pizza_sales
	GROUP BY pizza_category;

--G. Top 5 Best Sellers by Total Pizzas Sold

	SELECT TOP 5 pizza_name,SUM(quantity) AS pizzas_sold
	FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY pizzas_sold desc;

--H. Bottom 5 Best Sellers by Total Pizzas Sold

	SELECT TOP 5 pizza_name,SUM(quantity) AS pizzas_sold
	FROM pizza_sales
	GROUP BY pizza_name
	ORDER BY pizzas_sold asc;

-- find the total revenue in january;

	SELECT ROUND(SUM(total_price),2) AS toal_revenue_in_jan
	FROM pizza_Sales
	WHERE MONTH(order_date) = 1;

-- find the total revenue in feb;

	SELECT ROUND(SUM(total_price),2) AS toal_revenue_in_feb
	FROM pizza_Sales
	WHERE MONTH(order_date) = 2;