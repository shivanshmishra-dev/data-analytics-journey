# Sales Performance Dashboard | Power BI

## Project Overview
An interactive Power BI dashboard developed to analyze sales performance, profitability, customer segments, product contribution, yearly and monthly sales trends, and discount impact.

The project uses the Financial Sample dataset containing 700 records and 16 columns.

## Project Objectives
- Analyze overall sales and profit performance.
- Compare sales and profitability across countries.
- Identify high-performing products and customer segments.
- Analyze yearly and monthly sales trends.
- Understand the relationship between discounts and profitability.
- Build an interactive business intelligence dashboard.

## Dashboard Pages

### 1. Sales Overview
Provides an executive-level summary of business performance.

**KPI Cards**
- Total Sales
- Total Profit
- Profit Margin %
- Total Units Sold

**Visualizations**
- Sales and Profit by Country
- Total Sales by Product
- Total Sales by Segment
- Monthly Sales Trend

**Interactive Filters**
- Country
- Product
- Segment
- Year

### 2. Sales & Discount Analysis
Focuses on time-based performance and discount-related profitability.

**KPI Cards**
- Total Sales
- Total Profit

**Visualizations**
- Year-wise Sales Trend
- Monthly Sales Trend
- Discount vs Profit (Scatter Chart)
- Profit by Discount Band

**Interactive Filters**
- Country
- Segment
- Year

## Key DAX Measures

### Total Sales
```dax
Total Sales = SUM(financials[Sales])
```

### Total Profit
```dax
Total Profit = SUM(financials[Profit])
```

### Total Units Sold
```dax
Total Units Sold = SUM(financials[Units Sold])
```

### Profit Margin %
```dax
Profit Margin % =
DIVIDE(
    [Total Profit],
    [Total Sales],
    0
)
```

### Total Records
```dax
Total Records = COUNTROWS(financials)
```

### Average Sales per Record
```dax
Average Sales per Record =
DIVIDE(
    [Total Sales],
    [Total Records],
    0
)
```

## Key Business Metrics

| Metric | Result |
|---|---:|
| Total Sales | 118,726,350.26 |
| Total Profit | 16,893,699 |
| Total Units Sold | 1,125,806 |
| Profit Margin | 14.23% |
| Total Records | 700 |
| Average Sales per Record | 169,609.07 |

## Business Insights
- 2014 recorded the highest sales among the two years.
- October showed the highest monthly sales in the displayed trend.
- The Low Discount Band generated the highest total profit.
- The Not Assigned Discount Band generated the lowest total profit.

## Tools and Technologies
- Microsoft Power BI Desktop
- Power Query
- DAX
- Data Visualization
- Business Intelligence

## Project Files
- Power BI dashboard (.pbix)
- README documentation
- Dashboard screenshots

## Validation Notes
KPI totals and slicer interactions were tested. The chronological sorting of Month Name in the final monthly charts should be rechecked before treating the report as publication-ready.

## Author
Shivansh Mishra

## Repository
[Data Analytics Journey](https://github.com/shivanshmishra-dev/data-analytics-journey)
