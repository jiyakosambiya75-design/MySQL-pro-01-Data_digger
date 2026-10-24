# 🛒 Data Digger Database Management System

### 💻 E-Commerce Store Database Project Using MySQL

Welcome to **Data Digger Database Management System!** 🎉

ShopZone is an SQL-based e-commerce database project designed to manage customer information, orders, product details, and order transactions efficiently.

This project demonstrates essential MySQL concepts, including database creation, table relationships, CRUD operations, aggregate functions, filtering, sorting, and data analysis.

---

## 🌟 Project Overview

The **ShopZone Database Management System** is designed to store and manage essential information for an online shopping platform.

It helps organize customer details, track customer orders, maintain product information, and analyze sales data using SQL queries.

🎯 **Main Objectives:**
- 📌 Store and manage customer information.
- 📦 Maintain product details, prices, and stock.
- 🧾 Manage customer orders and order dates.
- 💰 Calculate total revenue and order amounts.
- 📊 Analyze product sales and quantities.
- 🔗 Establish relationships between database tables.
- 🛠️ Perform database operations using MySQL.

---

## 🗄️ Database Information

- **Database Name:** `shopzone_db`
- **Database Language:** SQL
- **Database Management System:** MySQL
- **Project Type:** E-Commerce Database Management System

---

## 📋 Database Tables

This project contains four main tables.

### 👥 1. Customers Table

The `Customers` table stores information about customers.

| Column Name | Data Type | Description |
|---|---|---|
| Customer_id | INT | Unique customer ID and Primary Key |
| Name | VARCHAR(100) | Customer name |
| Email | VARCHAR(100) | Customer email address |
| Address | VARCHAR(200) | Customer location |

**Purpose:** To maintain customer records and their contact information.

### 🧾 2. Orders Table

The `Orders` table stores customer order information.

| Column Name | Data Type | Description |
|---|---|---|
| Order_id | INT | Unique order ID and Primary Key |
| Customer_id | INT | Customer reference and Foreign Key |
| Order_date | DATE | Date of the order |
| Total_amount | DECIMAL(10,2) | Total order amount |

**Purpose:** To track customer orders, order dates, and order amounts.

### 📦 3. Products Table

The `Products` table stores product information.

| Column Name | Data Type | Description |
|---|---|---|
| Product_id | INT | Unique product ID and Primary Key |
| Product_name | VARCHAR(100) | Product name |
| Price | DECIMAL(10,2) | Product price |
| Stock | INT | Available stock quantity |

**Purpose:** To manage products, prices, and stock quantities.

### 🛍️ 4. Order_Details Table

The `Order_Details` table stores product details associated with each order.

| Column Name | Data Type | Description |
|---|---|---|
| Order_detail_id | INT | Unique order-detail ID and Primary Key |
| Order_id | INT | Order reference and Foreign Key |
| Product_id | INT | Product reference and Foreign Key |
| Quantity | INT | Quantity of products ordered |
| Sub_Total | DECIMAL(10,2) | Subtotal for the order detail |

**Purpose:** To connect orders with products and track quantities and subtotals.

---

## 🔗 Database Relationships

The project uses Primary Keys and Foreign Keys to establish relationships between tables.

- 👥 **Customers → Orders:** One customer can place multiple orders.
- 🧾 **Orders → Order_Details:** One order can contain multiple order-detail records.
- 📦 **Products → Order_Details:** One product can appear in multiple order-detail records.

These relationships help maintain data consistency and connect related information.

---

## ⚙️ SQL Concepts Used

This project covers the following SQL concepts:

### 🏗️ 1. Database and Table Creation
- `CREATE DATABASE`
- `USE`
- `CREATE TABLE`
- `DESC`

### ➕ 2. Data Insertion
- `INSERT INTO`
- `VALUES`

### 🔍 3. Data Retrieval
- `SELECT`
- `SELECT *`
- `WHERE`

### ✏️ 4. Data Modification
- `UPDATE`
- `SET`

### 🗑️ 5. Data Deletion
- `DELETE`

### 📊 6. Aggregate Functions
- `MAX()` – Finds the maximum value.
- `MIN()` – Finds the minimum value.
- `AVG()` – Calculates the average value.
- `SUM()` – Calculates the total.
- `COUNT()` – Counts records.

### ↕️ 7. Sorting and Filtering
- `ORDER BY`
- `BETWEEN`
- `>=`
- `GROUP BY`
- `LIMIT`

### 📅 8. Date Operations
- `CURRENT_DATE`
- `INTERVAL`
- Date-based filtering

### 🔗 9. Relationships
- Primary Key
- Foreign Key

---

## 📈 Key Features

✨ **Customer Management:** Stores customer names, email addresses, and locations.

✨ **Order Management:** Records order IDs, dates, customer references, and order amounts.

✨ **Product Management:** Maintains product names, prices, and stock quantities.

✨ **Order Tracking:** Connects products with individual orders.

✨ **Revenue Analysis:** Calculates revenue from order-detail subtotals.

✨ **Sales Analysis:** Identifies products with the highest quantities sold.

✨ **Price Analysis:** Finds the highest and lowest product prices.

✨ **Data Filtering:** Retrieves records based on specific conditions.

✨ **Sorting:** Displays products in ascending and descending price order.

✨ **Database Integrity:** Uses foreign keys to maintain valid relationships.

---

## 💻 Sample SQL Queries

### 🔹 Display All Customers
```sql
SELECT * FROM Customers;
```

### 🔹 Find Orders for a Customer
```sql
SELECT *
FROM Orders
WHERE Customer_id = 1;
```

### 🔹 Display Products by Highest Price
```sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

### 🔹 Find the Highest Order Amount
```sql
SELECT MAX(Total_amount) AS Highest_Amount
FROM Orders;
```

### 🔹 Calculate Total Revenue
```sql
SELECT SUM(Sub_Total) AS Total_Revenue
FROM Order_Details;
```

### 🔹 Find the Top 3 Products by Quantity Sold
```sql
SELECT Product_id, SUM(Quantity) AS Total_Quantity
FROM Order_Details
GROUP BY Product_id
ORDER BY Total_Quantity DESC
LIMIT 3;
```

---

## 🛠️ Technologies Used

- 🐬 **MySQL** – Database management and SQL queries.
- 🗃️ **SQL** – Database creation, manipulation, and analysis.
- 💻 **MySQL Workbench / MySQL Command Line Client** – To execute SQL statements.

---

## 🚀 How to Run the Project

1. Install and open MySQL.
2. Open MySQL Workbench or MySQL Command Line Client.
3. Create a new SQL script.
4. Copy the project SQL code into the script.
5. Execute the statements in the correct order.
6. Use `SELECT` queries to verify the results.
7. Explore customer, order, product, and sales information.

**Note:** Run the script on a fresh database. The `CREATE TABLE` and `INSERT` statements may produce errors if the same tables or records already exist.

---

## 🎓 Learning Outcomes

By completing this project, learners can understand:

- How to design a relational database.
- How to create tables with appropriate data types.
- How to use Primary Keys and Foreign Keys.
- How to perform CRUD operations.
- How to filter and sort database records.
- How to use aggregate functions for analysis.
- How to group data and identify top-selling products.
- How to manage relationships between customers, orders, and products.
- How to write SQL queries for an e-commerce application.

---

## 🔮 Future Enhancements

The project can be extended with the following features:

- 💳 Payment Management System
- 🚚 Shipping and Delivery Tracking
- 📊 Sales Reports and Dashboards
- 👤 Customer Login and Registration
- ⭐ Product Reviews and Ratings
- 🏷️ Product Categories
- 📦 Automatic Stock Updates
- 🔎 Advanced Sales Analytics

---

## 👩‍💻 Project Details

**Project Name:** ShopZone Database Management System

**Domain:** E-Commerce

**Database:** `shopzone_db`

**Technology:** MySQL and SQL

**Project Purpose:** Learning and practicing relational database management and SQL queries.

---

## ❤️ Conclusion

The ShopZone Database Management System demonstrates how SQL and MySQL can be used to organize and manage e-commerce data.

By connecting customer records, orders, products, and order details, the project provides a foundation for understanding relational database design and performing useful data analysis.

This project is a practical step toward developing stronger SQL skills and building more advanced database applications. 🚀

⭐ If you find this project useful, feel free to explore the SQL queries and learn more about database management!

**Thank you for visiting ShopZone!** 🛒💙
