# Warehouse & Inventory BI Reporting System
### SQL-Driven Warehouse & Inventory Analytics

A complete Business Intelligence project using MySQL and Power BI,
focused on warehouse operations, inventory monitoring, supplier analysis,
and management reporting.


## Project Overview

This project demonstrates a practical Business Intelligence (BI) reporting solution using MySQL (SQL views) and Power BI. It simulates an ERP-style warehouse and supplier environment and focuses on structured reporting, KPI monitoring, and decision support, as commonly used in companies.

---

## Business Objectives

The project answers key business questions for management, controlling, and operations:

Which products and suppliers generate the highest value?

What is the current inventory status across warehouses?

Which warehouses are close to full capacity?

Which goods are stored in multiple warehouses?

How are staff members linked to suppliers?

How many goods does each supplier provide?

---

## Data Model (ERP-style)

The database is built using a relational ERP-style schema:

Supplier – supplier master data

Staff – employees responsible for suppliers

Goods – product master data

Warehouse – warehouse master data

Store – many-to-many relationship between goods and warehouses

All reporting logic is implemented using SQL views, which act as a semantic BI layer.

---

## SQL BI Views

The following SQL views are used for reporting and dashboards:

View Name	Description
product_revenue	Product pricing and supplier overview
inventory_status	Inventory condition per warehouse
warehouse_utilization	Warehouse capacity and stored goods
supplier_goods	Supplier-to-goods relationship
staff_supplier	Staff responsibility mapping
multi_warehouse_goods	Goods stored in multiple warehouses

---

## SQL scripts are located in:

sql/

---

## Power BI Dashboard

The Power BI dashboard connects directly to the SQL views and provides decision-ready visuals.

Dashboard Pages

Product & Price Overview

Inventory Status

Warehouse Utilization

Supplier Goods Overview

Staff & Supplier Mapping

Multi-Warehouse Goods

---

## Power BI files are located in:

powerbi/

---

## Dashboard screenshots:

powerbi/screenshots/

---


## Technology Stack

Database: MySQL

SQL Client: VS Code + SQLTools

Reporting: Power BI Desktop

Version Control: Git & GitHub

---

## How to Run the Project

# 1 Database Setup

Create a MySQL database

Run scripts in this order:

create_tables.sql

insert_data.sql

views.sql

---

# 2 Power BI Setup

Open Warehouse_BI_Dashboard.pbix

Update MySQL connection if needed

Refresh data

---

# 3 View Results

SQL results:
See screenshots inside sql/screenshorts/

Power BI results:
See screenshots inside powerbi/screenshots/

---

## Author

Md Jahidul Islam

---