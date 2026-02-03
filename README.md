# Warehouse & Inventory BI Reporting System  
**SQL-Based Business Intelligence Project with Power BI**

## Project Overview
This project demonstrates a **practical Business Intelligence (BI) and Data Analytics solution** based on an **ERP-style relational database**. The goal is to provide **decision-ready reporting and KPIs** for **warehouse, inventory, supplier, and staff analysis**, similar to real-world use cases in companies. The project focuses on **SQL, data modeling, KPI reporting, and Power BI dashboards**.

---

## Business Objectives
Management and controlling departments require answers to the following questions:

- Which products and suppliers are active?
- What is the current inventory and capacity status?
- Which warehouses are near capacity?
- Which goods are stored in multiple warehouses?
- How are staff members associated with suppliers?

This project provides **structured SQL views** and **Power BI dashboards** to support these decisions.

---

## Data Model (ERP-style)
The database is designed in a **normalized ERP structure** and includes:

- `Supplier` – supplier master data  
- `Goods` – product and pricing data  
- `Staff` – employee information  
- `Warehouse` – warehouse locations and capacity  
- `Store` – goods stored per warehouse  

The schema reflects **realistic enterprise data modeling** used in logistics and inventory systems.

---

## SQL Views (Core of BI Layer)

| View Name | Purpose |
|---------|--------|
| `product_revenue` | Product & supplier pricing analysis |
| `inventory_status` | Inventory & capacity monitoring |
| `supplier_goods` | Supplier → goods relationship |
| `staff_supplier` | Staff → supplier mapping |
| `warehouse_utilization` | Warehouse capacity & utilization |
| `multi_warehouse_goods` | Goods stored in multiple warehouses |

These views act as a **semantic layer** for BI tools such as Power BI.

---

## Power BI Dashboards
The Power BI report is built **directly on top of the SQL views**.

### Dashboard Pages
1. **Management Overview**
   - Supplier & product summaries
   - Goods count per supplier
   - High-level KPIs

2. **Inventory Control**
   - Inventory status (OK / LOW / FULL)
   - Warehouse capacity overview

3. **Warehouse & Logistics Performance**
   - Warehouse utilization
   - Goods stored across multiple locations

---

## Technology Stack
- **Database:** MySQL  
- **SQL Client:** VS Code + SQLTools  
- **BI Tool:** Microsoft Power BI  
- **Languages:** SQL, DAX  
- **Version Control:** Git & GitHub  

---


## How to View Results

### SQL Results
- SQL query result screenshots are located inside: /sql/screenshots/

---


### Power BI Results
- Power BI dashboard screenshots are located inside: /powerbi/screenshots/

---


To explore the full interactive report:
1. Download `Warehouse_Inventory_BI.pbix`
2. Open it using **Power BI Desktop**
3. Ensure MySQL is running and views are created

---

## How to Run the Project Locally

### 1️ Database Setup

`sql
SOURCE sql/schema.sql;
SOURCE sql/inserts.sql;
SOURCE sql/views.sql;

### 2 Power BI Connection

- Data Source: MySQL

- Server: localhost

- Database: your database name

- Load all SQL views

---

## Author

Md Jahidul Islam

---
