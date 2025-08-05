# Online Store SQL Database

This project defines and populates a basic **SQL database schema** 
for an online store. It simulates core e-commerce functionality, 
including **customer management**, **product inventory**, and **order tracking**.

---

## 📑 Project Overview

The `online_store_sql` database is designed to support the operations of a small online retail business. It provides a relational 
structure to manage customers, products, and their orders.

---

## 🧱 Database Schema

### 1. **Customers Table**

Stores detailed information about customers.

| Column               | Type           | Description                      |
| -------------------- | -------------- | -------------------------------- |
| `customer_id`        | `INT`          | Primary Key, Auto-incremented    |
| `customer_name`      | `VARCHAR(50)`  | Customer's first name (Required) |
| `customer_last_name` | `VARCHAR(50)`  | Customer's last name (Required)  |
| `customer_email`     | `VARCHAR(50)`  | Unique email address (Optional)  |
| `customer_phone`     | `VARCHAR(25)`  | Contact number (Required)        |
| `customer_address`   | `VARCHAR(200)` | Full address (Required)          |

---

### 2. **Products Table**

Stores data about products available in the store.

| Column                   | Type            | Description                          |
| ------------------------ | --------------- | ------------------------------------ |
| `product_id`             | `INT`           | Primary Key, Auto-incremented        |
| `product_name`           | `VARCHAR(50)`   | Name of the product (Required)       |
| `product_description`    | `VARCHAR(50)`   | Short product description (Required) |
| `product_price`          | `DECIMAL(10,2)` | Price of the product (Required)      |
| `product_stock_quantity` | `INT`           | Stock level (Required)               |

---

### 3. **Orders Table**

Records all orders placed by customers.

| Column           | Type   | Description                               |
| ---------------- | ------ | ----------------------------------------- |
| `order_id`       | `INT`  | Primary Key, Auto-incremented             |
| `customer_id`    | `INT`  | Foreign Key → `Customers(customer_id)`    |
| `product_id`     | `INT`  | Foreign Key → `Products(product_id)`      |
| `order_date`     | `DATE` | Date when the order was placed (Required) |
| `order_quantity` | `INT`  | Number of units ordered (Required)        |

---

## 📥 Sample Data

### Customers

Three sample customers are added to the database.

### Products

Four products are populated with prices and stock quantities.

### Orders

Five sample order records link customers to products with specified quantities and dates.

---

## How to Use

1. **Create Database**
   Run the `CREATE DATABASE` and `USE` statements to create and switch to the `online_store_sql` database.

2. **Create Tables**
   Execute the `CREATE TABLE` statements in order: `Customers`, `Products`, `Orders`.

3. **Insert Sample Data**
   Populate each table with the provided `INSERT INTO` statements.

4. **Query Example**
   To view all customers:

   ```sql
   SELECT * FROM Customers;
   ```

---

## Notes

* All foreign keys are enforced to maintain referential integrity.
* The database schema avoids NULLs where not necessary by using `NOT NULL`.
* Product prices are stored using the `DECIMAL(10,2)` data type for accurate currency representation.

---

## DISCLAIMER

UNDER NO CIRCUMSTANCES SHOULD IMAGES OR EMOJIS BE INCLUDED DIRECTLY 
IN THE README FILE. ALL VISUAL MEDIA, INCLUDING SCREENSHOTS AND IMAGES 
OF THE APPLICATION, MUST BE STORED IN A DEDICATED FOLDER WITHIN THE 
PROJECT DIRECTORY. THIS FOLDER SHOULD BE CLEARLY STRUCTURED AND NAMED 
ACCORDINGLY TO INDICATE THAT IT CONTAINS ALL VISUAL CONTENT RELATED TO 
THE APPLICATION (FOR EXAMPLE, A FOLDER NAMED IMAGES, SCREENSHOTS, OR MEDIA).

I AM NOT LIABLE OR RESPONSIBLE FOR ANY MALFUNCTIONS, DEFECTS, OR ISSUES 
THAT MAY OCCUR AS A RESULT OF COPYING, MODIFYING, OR USING THIS SOFTWARE. 
IF YOU ENCOUNTER ANY PROBLEMS OR ERRORS, PLEASE DO NOT ATTEMPT TO FIX THEM 
SILENTLY OR OUTSIDE THE PROJECT. INSTEAD, KINDLY SUBMIT A PULL REQUEST 
OR OPEN AN ISSUE ON THE CORRESPONDING GITHUB REPOSITORY, SO THAT IT CAN 
BE ADDRESSED APPROPRIATELY BY THE MAINTAINERS OR CONTRIBUTORS.

---
