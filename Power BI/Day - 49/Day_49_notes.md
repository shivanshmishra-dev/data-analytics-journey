# Day 49 – E-Commerce Analytics Dashboard

## Project Overview

Created an interactive E-Commerce Analytics Dashboard using Microsoft Power BI to analyze online retail transactions, revenue performance, customer activity, product sales, and returns.

**Project:** E-Commerce Analytics Dashboard  
**Day:** 49  
**Tool:** Microsoft Power BI  
**Dataset:** UCI Online Retail Dataset  
**Dataset Source:** https://archive.ics.uci.edu/dataset/352/online+retail

## 1. Dataset Overview

The Online Retail dataset contains transactional records from a UK-based online retail business.

- Total Records: 541,909
- Total Columns: 8
- Countries: 38
- Dataset Period: December 2010 – December 2011

### Dataset Columns

| Column | Description |
|---|---|
| InvoiceNo | Transaction invoice number |
| StockCode | Product identifier |
| Description | Product description |
| Quantity | Purchased or returned quantity |
| InvoiceDate | Transaction date and time |
| UnitPrice | Product price in GBP |
| CustomerID | Customer identifier |
| Country | Customer's country |

## 2. Data Cleaning and Transformation

Performed data inspection and transformation using Power Query.

### Data Quality Checks

- Inspected column quality, distribution, and profiling.
- Identified approximately 25% missing CustomerID values.
- Identified negative Quantity records representing returns or related transaction adjustments.
- Identified 2 records with negative UnitPrice associated with bad-debt adjustments.
- Inspected zero UnitPrice records.
- Identified cancellation invoices using the C prefix in InvoiceNo.
- Checked duplicate InvoiceNo and StockCode combinations without blindly deleting legitimate transaction lines.

### Data Type Corrections

| Column | Data Type |
|---|---|
| InvoiceNo | Text |
| StockCode | Text |
| Description | Text |
| Quantity | Whole Number |
| InvoiceDate | Date/Time |
| UnitPrice | Decimal Number |
| CustomerID | Whole Number |
| Country | Text |

### Calculated Column

Created a calculated Sales Amount column in Power Query.

```powerquery
[Quantity] * [UnitPrice]
```

This calculation represents transaction value, including negative amounts for return-related records.

## 3. Data Modelling

Created a dedicated Date Table using DAX.

- Added Year, Month Number, Month, Year Month, and Month Year attributes.
- Configured an active one-to-many relationship between Date Table and Online Retail.
- Used single-direction cross-filtering.
- Configured chronological month sorting for time-based analysis.

## 4. DAX Measures

Created measures for sales, revenue, orders, customers, products, and returns.

### Sales and Revenue
- Gross Sales
- Return Amount
- Net Revenue
- Average Order Value

### Order and Customer Analysis
- Total Orders
- Cancelled Orders
- Total Customers
- Total Products
- Total Transactions

### Quantity Analysis
- Total Quantity Sold
- Total Returned Quantity

### Business Analysis
- Cancellation Rate %
- Return Rate %
- Unique Countries

## 5. Dashboard Features

Developed a dark-themed E-Commerce Analytics Dashboard.

### Key Performance Indicators
- Gross Sales
- Net Revenue
- Total Orders
- Total Customers
- Average Order Value
- Return Amount

### Analytical Areas
- Monthly Revenue Trend
- Country-wise Sales Performance
- Top Products by Revenue
- Revenue and Returns Analysis
- Customer Analysis
- Quantity Analysis

### Interactive Elements
- Order Date slicer
- Country slicer
- Product slicer
- Customer ID slicer

## 6. Key Learnings

- Power Query data profiling and cleaning.
- Handling missing values and negative transaction records.
- Understanding cancellation and return transactions.
- Creating calculated columns and DAX measures.
- Building a dedicated Date Table.
- Establishing relationships in Power BI.
- Developing interactive dashboard layouts.
- Designing business-focused analytical reports.

## 7. Tools and Technologies

- Microsoft Power BI
- Power Query
- DAX
- Excel
- VS Code
- Git and GitHub

## 8. Project Outcome

Completed an E-Commerce Analytics Dashboard focused on understanding retail sales performance, customer activity, product performance, and transaction adjustments.

The project strengthened practical skills in data transformation, data modelling, DAX calculations, and business intelligence dashboard development.