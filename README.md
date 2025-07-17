# 🍕 Pizza Sales SQL Analysis Project

## 📊 Overview

This project focuses on performing **SQL-based data analysis** on a Pizza Sales dataset to derive key business insights. The goal was to assist a fictional pizza business in understanding its sales performance and customer behavior using structured queries and meaningful KPIs.

---

## 🧠 Problem Statement

In the competitive food industry, understanding daily operations, customer trends, and product performance is critical. This project addresses:
- Revenue tracking
- Order and pizza sale trends
- Sales distribution by category and size
- Product performance (best and worst sellers)

---

## 🔧 Tools Used

- **SQL** (MySQL / PostgreSQL / SQLite — depending on your setup)
- Excel / CSV for raw data exploration
- GitHub for version control and project showcasing

---

## 📁 Project Structure


---

## 🧩 Key Business Questions Solved

### A. KPI’s (Key Performance Indicators)
1. **Total Revenue**
2. **Average Order Value**
3. **Total Pizzas Sold**
4. **Total Orders**
5. **Average Pizzas per Order**

### B. Daily Trend for Total Orders  
Analyzed how orders vary across different dates.

### C. Hourly Trend for Orders  
Discovered customer ordering behavior across different hours of the day.

### D. % of Sales by Pizza Category  
Breakdown of sales contribution from each pizza category (Classic, Veggie, Supreme, etc.)

### E. % of Sales by Pizza Size  
Analyzed how pizza sizes (S, M, L, XL) perform in terms of total sales.

### F. Total Pizzas Sold by Pizza Category  
Compared the total units sold per category.

### G. Top 5 Best Sellers by Total Pizzas Sold  
Ranked pizzas by total units sold — highlights the most loved items.

### H. Bottom 5 Worst Sellers  
Identified underperforming items to help decide what might be removed or improved.

---

## 🧠 Learnings

Through this project, I improved in:
- Writing optimized and clean SQL queries
- Understanding data trends from a business perspective
- Identifying KPIs and performance metrics
- Presenting data-driven insights

---

## 🧾 Sample Query

```sql
-- Calculate Average Order Value
SELECT 
    ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM orders;
