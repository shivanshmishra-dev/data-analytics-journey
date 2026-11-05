# Sales Performance Analytics Dashboard

An interactive Sales Performance Analytics Dashboard built using **Microsoft Power BI** to analyze sales transactions, profitability, product performance, and country-wise business performance.

## Project Overview

This project transforms sales transaction data into an interactive dashboard that helps users monitor key business metrics, compare sales and profit performance, and explore detailed country-level results.

## Tools & Technologies

- Microsoft Power BI Desktop
- DAX (Data Analysis Expressions)
- Data Visualization
- Interactive Slicers
- Drill-through Analysis

## Dashboard Pages

### 1. Sales Transaction Summary

Provides an overview of business performance through:
- Total Sales
- Total Profit
- Total Transactions
- Profit Margin
- Profit Performance
- Sales Transaction Details
- Country, Product, and Category filters

### 2. Sales and Profit Analysis

Provides detailed analysis through:
- Sales by Country
- Profit by Country
- Sales by Category
- Profit by Category
- Profit by Product
- Sales vs Profit by Product (Scatter Chart)
- Interactive Country and Category slicers
- Transaction Details Table

### 3. Country-wise Performance Details

Provides country-level analysis through:
- Country-wise Total Sales
- Country-wise Total Profit
- Profit Margin
- Product-level transaction details
- Country slicer
- Drill-through navigation from the analysis page

## Key Business Metrics

| Metric | Result |
|---|---:|
| Total Sales | 191,000 |
| Total Profit | 31,000 |
| Total Transactions | 7 |
| Profit Margin | 16.23% |
| Sales Target | 200,000 |
| Sales Achievement | 95.5% |
| Target Status | Not Achieved |

## Business Insights

- **Top Sales Country:** India, with 95,000 in sales.
- **Top Profit Product:** Laptop, generating 15,000 in profit.
- **Highest Sales Category:** Furniture, with 105,000 in sales.
- **Highest Profit Category:** Electronics, with 20,000 in profit.
- **Overall Profit Margin:** 16.23%.
- **Target Achievement:** Sales reached 95.5% of the hypothetical target.

## Key DAX Concepts

- SUM()
- COUNT()
- DIVIDE()
- IF()
- Nested IF()
- CALCULATE()
- DISTINCTCOUNT()
- KPI Measures
- Conditional Business Logic

## Project Structure

```text
Sales-Performance-Analytics/
│
├── Sales-Performance-Analytics.pbix
├── README.md
│
└── Screenshots/
    ├── sales-overview.png
    ├── sales-profit-analysis.png
    └── country-details.png
```

## How to Use

1. Download the `.pbix` file from this repository.
2. Open it using Microsoft Power BI Desktop.
3. Explore the three report pages.
4. Use the slicers to filter data.
5. Right-click a country in the Sales by Country chart and select Drill through → Country Details.

## Dataset Note

This project uses a small sample sales dataset containing 7 transactions across 4 countries, 4 products, and 2 categories. The sales target of 200,000 is hypothetical and used for demonstration purposes.

The dashboard is an educational portfolio project and its results should not be interpreted as actual business performance.

## Author

**Shivansh Mishra**

GitHub: [shivanshmishra-dev](https://github.com/shivanshmishra-dev)