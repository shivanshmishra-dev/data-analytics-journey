# Day 47 – Retail Sales Dashboard | Power BI

## Objective
Build an interactive Retail Sales Dashboard using Power BI to analyze sales performance, profitability, product performance, and order trends.

## Dataset
- Dataset: Retail Sales Orders
- Total Records: 1,000
- Tool: Power BI Desktop
- Data Preparation: Power Query Editor

## 1. Data Cleaning & Preparation

Performed data quality checks using Power Query:

- Checked missing values and errors.
- Verified Quantity for zero and negative values.
- Checked Sales for negative values.
- Identified 72 negative Profit records.
- Preserved negative profit records because they represent loss-making orders.
- Removed temporary validation filters.
- Applied changes using Close & Apply.

**Key Data Quality Findings:**
- Missing values/errors: None found.
- Zero or negative quantity records: None found.
- Negative sales records: None found.
- Negative profit records: 72.

## 2. DAX Measures

Created the following measures:

### Total Sales
```dax
Total Sales =
SUM('Sales Orders'[sales])
```

### Total Profit
```dax
Total Profit =
SUM('Sales Orders'[profit])
```

### Total Orders
```dax
Total Orders =
DISTINCTCOUNT('Sales Orders'[order_id])
```

### Total Quantity
```dax
Total Quantity =
SUM('Sales Orders'[quantity])
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

### Average Order Value
```dax
Average Order Value =
DIVIDE(
    [Total Sales],
    [Total Orders],
    0
)
```

## 3. KPI Analysis

Created six KPI cards:

| KPI | Value |
|---|---:|
| Total Sales | 955.61K |
| Total Profit | 214.95K |
| Total Orders | 1K |
| Total Quantity | 5K |
| Profit Margin | 22.49% |
| Average Order Value | $955.61 |

## 4. Dashboard Visualizations

Created an interactive Retail Sales Dashboard containing:

- Monthly Sales & Profit Trend
- Sales by Product Category
- Sales by Region
- Top 5 Products by Profit
- Profit by Discount Range
- KPI Cards for overall business performance

## 5. Interactive Filters

Added five slicers:

- Order Date
- Product Name
- Category
- Region
- Discount

Created a Reset Filters button using Power BI Bookmarks to restore the default filter state.

## 6. Dashboard Formatting

- Designed a consistent dashboard layout.
- Added KPI cards and chart data labels.
- Used a rounded rectangle background for the filter panel.
- Organized slicers and reset button inside the filter section.
- Applied chart titles and formatting for better readability.

## 7. Key Learnings

- Data quality validation using Power Query.
- Identifying and preserving loss-making transactions.
- Creating DAX measures using SUM, DISTINCTCOUNT, and DIVIDE.
- Understanding KPI cards and business metrics.
- Applying Top N filters to identify top-performing products.
- Creating combo charts for sales and profit analysis.
- Building interactive slicers and bookmark-based reset functionality.
- Improving dashboard layout and visual presentation.

## Conclusion

Successfully developed a Retail Sales Dashboard in Power BI using a 1,000-record dataset. The dashboard provides an overview of sales, profitability, orders, product performance, and interactive business filtering.

**Day 47 Status:** Completed

**Next:** Day 48 – HR Analytics Dashboard